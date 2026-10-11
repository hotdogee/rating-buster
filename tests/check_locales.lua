#!/usr/bin/env lua
--[[
Locale consistency check for RatingBuster. No game client needed.

Usage (from the repository root):
  lua tests/check_locales.lua [locales_dir] [addon_lua_file]
Defaults: rating-buster/locales and rating-buster/RatingBuster.lua

Each locale file listed in locales.xml is run in a sandbox with a stub
AceLocale-3.0. The WoW global strings it reads (ITEM_MOD_*, CR_*, ...) are
replaced by placeholder strings. Errors:
  * a file is missing, fails to parse (Lua 5.1, the game's Lua) or fails to run
  * a file does not call NewLocale("RatingBuster", <locale>) exactly once,
    registers an unknown locale, or a non-enUS file claims to be the default
  * a file sets a global variable, or reads from L (AceLocale forbids this)
  * RatingBuster.lua uses an L["..."] key that enUS does not define
  * a locale defines a key that enUS does not define; such strings are never
    shown, so this usually means a typo or a renamed enUS string
  * a translation is not a string (or true, which means "use the enUS key"),
    adds format specifiers (%s, %d) or drops the $value token
  * a Lua pattern in numberPatterns, separators or statList is malformed, or
    a numberPatterns entry has no capture or an unknown addInfo
Warnings (do not fail the check):
  * a translation drops a format specifier (the message loses a detail)
  * the file name does not match the locale it registers
Exit status is 1 if there are errors.
]]

local localesDir = (arg and arg[1]) or "rating-buster/locales"
localesDir = localesDir:gsub("[/\\]+$", "")
local mainFile = (arg and arg[2]) or (localesDir:gsub("[^/\\]+$", "") .. "RatingBuster.lua")

local ADDON = "RatingBuster"
local DEFAULT_LOCALE = "enUS"
local KNOWN_LOCALES = {
	enUS = true, enGB = true, deDE = true, esES = true, esMX = true, frFR = true,
	itIT = true, koKR = true, ptBR = true, ruRU = true, zhCN = true, zhTW = true,
}
local PATTERN_TABLES = { numberPatterns = true, separators = true, statList = true }
local ADD_INFO = { AfterNumber = true, AfterPattern = true, AfterStat = true }

local errors, warnings = 0, 0
local function report(kind, where, msg, ...)
	if select("#", ...) > 0 then msg = msg:format(...) end
	if kind == "error" then errors = errors + 1 else warnings = warnings + 1 end
	print(("%s: %s: %s"):format(where, kind, msg))
end

local function readFile(path)
	local f = io.open(path, "rb")
	if not f then return nil end
	local s = f:read("*a")
	f:close()
	return s
end

-- Lua 5.1 uses loadstring/setfenv, 5.2+ uses load with an env argument.
local function loadChunk(src, name, env)
	if setfenv and loadstring then
		local fn, err = loadstring(src, name)
		if fn then setfenv(fn, env) end
		return fn, err
	end
	return load(src, name, "t", env)
end

-- Validate a Lua pattern the way lstrlib.c parses it, so malformed patterns
-- are caught even if they would only fail on some tooltip lines.
local function patternError(p)
	if type(p) ~= "string" then return "pattern is not a string" end
	local i, n, depth = 1, #p, 0
	while i <= n do
		local c = p:sub(i, i)
		if c == "%" then
			if i == n then return "malformed pattern (ends with '%')" end
			local d = p:sub(i + 1, i + 1)
			if d == "b" then
				if i + 3 > n then return "unbalanced pattern (missing arguments to '%b')" end
				i = i + 4
			elseif d == "f" then
				if p:sub(i + 2, i + 2) ~= "[" then return "missing '[' after '%f' in pattern" end
				i = i + 2 -- the set is checked by the '[' branch
			else
				i = i + 2
			end
		elseif c == "[" then
			local j = i + 1
			if p:sub(j, j) == "^" then j = j + 1 end
			repeat
				if j > n then return "malformed pattern (missing ']')" end
				local ch = p:sub(j, j)
				j = j + 1
				if ch == "%" and j <= n then j = j + 1 end
			until p:sub(j, j) == "]"
			i = j + 1
		elseif c == "(" then
			depth = depth + 1
			i = i + 1
		elseif c == ")" then
			depth = depth - 1
			if depth < 0 then return "invalid pattern capture (unmatched ')')" end
			i = i + 1
		else
			i = i + 1
		end
	end
	if depth ~= 0 then return "unfinished capture (unmatched '(')" end
	return nil
end

-- Count captures in a (valid) pattern; position captures "()" count too.
local function countCaptures(p)
	local count, i = 0, 1
	while i <= #p do
		local c = p:sub(i, i)
		if c == "%" then
			i = i + 2
		elseif c == "[" then
			local j = i + 1
			if p:sub(j, j) == "^" then j = j + 1 end
			repeat
				local ch = p:sub(j, j)
				j = j + 1
				if ch == "%" then j = j + 1 end
			until p:sub(j, j) == "]" or j > #p
			i = j + 1
		else
			if c == "(" then count = count + 1 end
			i = i + 1
		end
	end
	return count
end

-- Format specifiers used with string.format, plus the $value token that
-- RatingBuster substitutes itself. "$value% Crit" has no format specifier.
local function placeholders(s)
	local counts = {}
	local stripped = s:gsub("%%%%", "")
	for spec in stripped:gmatch("%%%-?%d*%.?%d*[sdif]") do
		counts[spec] = (counts[spec] or 0) + 1
	end
	for _ in s:gmatch("%$value") do
		counts["$value"] = (counts["$value"] or 0) + 1
	end
	return counts
end

-- Returns the placeholders that b has more of than a, as a sorted list.
local function extraPlaceholders(a, b)
	local list = {}
	for spec, n in pairs(b) do
		for _ = 1, n - (a[spec] or 0) do list[#list + 1] = spec end
	end
	table.sort(list)
	return list
end

-- Replace comments with spaces (newlines are kept, so line numbers still
-- match) without touching string literals.
local function stripComments(src)
	local out, i, n = {}, 1, #src
	while i <= n do
		local c = src:sub(i, i)
		if c == "-" and src:sub(i + 1, i + 1) == "-" then
			local eq = src:match("^%[(=*)%[", i + 2)
			local stop
			if eq then
				local _, e = src:find("]" .. eq .. "]", i + 4 + #eq, true)
				stop = e or n
			else
				stop = (src:find("\n", i + 2, true) or (n + 1)) - 1
			end
			out[#out + 1] = (src:sub(i, stop):gsub("[^\n]", " "))
			i = stop + 1
		elseif c == '"' or c == "'" then
			local j = i + 1
			while j <= n do
				local d = src:sub(j, j)
				if d == "\\" then
					j = j + 2
				elseif d == c or d == "\n" then
					break
				else
					j = j + 1
				end
			end
			out[#out + 1] = src:sub(i, j)
			i = j + 1
		elseif c == "[" and src:match("^%[=*%[", i) then
			local eq = src:match("^%[(=*)%[", i)
			local _, e = src:find("]" .. eq .. "]", i + 2 + #eq, true)
			e = e or n
			out[#out + 1] = src:sub(i, e)
			i = e + 1
		else
			out[#out + 1] = c
			i = i + 1
		end
	end
	return table.concat(out)
end

-- L["..."] keys with a literal string that the addon code looks up.
local function codeKeys(path)
	local src = readFile(path)
	if not src then return nil end
	src = stripComments(src)
	local keys, order = {}, {}
	for pos, key in src:gmatch("()L%[\"([^\"\\]*)\"%]") do
		local prev = pos > 1 and src:sub(pos - 1, pos - 1) or ""
		if not prev:match("[%w_%.:]") and not keys[key] then
			local _, newlines = src:sub(1, pos):gsub("\n", "")
			keys[key] = path .. ":" .. (newlines + 1)
			order[#order + 1] = key
		end
	end
	return keys, order
end

-- Run one locale file and return what it registered.
local function loadLocale(path)
	local src = readFile(path)
	if not src then
		report("error", path, "file not found (listed in locales.xml)")
		return nil
	end
	src = src:gsub("^\239\187\191", "") -- WoW accepts a UTF-8 BOM, Lua 5.1 does not

	local result = { path = path, calls = {}, keys = {}, order = {} }
	local function where()
		local info = debug.getinfo(3, "l")
		return path .. ":" .. ((info and info.currentline) or "?")
	end

	local AceLocale = {}
	function AceLocale.NewLocale(_, app, locale, isDefault)
		local call = { app = app, locale = locale, isDefault = isDefault and true or false, where = where() }
		result.calls[#result.calls + 1] = call
		return setmetatable({}, {
			__newindex = function(_, key, value)
				if result.keys[key] == nil then result.order[#result.order + 1] = key end
				result.keys[key] = { value = value, where = where() }
			end,
			__index = function(_, key)
				report("error", where(), "reads L[%q] inside a locale file", tostring(key))
				return nil
			end,
		})
	end

	local env = {
		LibStub = function(major)
			if major == "AceLocale-3.0" then return AceLocale end
			error("locale file asked LibStub for " .. tostring(major))
		end,
		string = string, table = table, math = math,
		gsub = string.gsub, strlower = string.lower, strupper = string.upper,
		format = string.format, strfind = string.find, strsub = string.sub,
		pairs = pairs, ipairs = ipairs, type = type, select = select,
		tostring = tostring, tonumber = tonumber,
	}
	setmetatable(env, {
		__index = function(_, name)
			-- WoW global strings and constants are all upper case
			if type(name) == "string" and name:match("^[A-Z][A-Z0-9_]*$") then
				return name
			end
			error("reads undefined global " .. tostring(name), 2)
		end,
		__newindex = function(t, name, value)
			report("error", where(), "sets global variable %s", tostring(name))
			rawset(t, name, value)
		end,
	})

	local fn, err = loadChunk(src, "@" .. path, env)
	if not fn then
		report("error", path, "syntax error: %s", err)
		return nil
	end
	local ok, runErr = pcall(fn)
	if not ok then
		report("error", path, "runtime error: %s", tostring(runErr))
		return nil
	end
	return result
end

-- Load order comes from locales.xml, the file the game reads.
local xmlPath = localesDir .. "/locales.xml"
local xml = readFile(xmlPath)
if not xml then
	print(xmlPath .. ": error: cannot read locales.xml")
	os.exit(1)
end
local files = {}
for file in xml:gmatch('<Script%s+file%s*=%s*"([^"]+)"') do
	files[#files + 1] = file
end
if #files == 0 then
	report("error", xmlPath, "no <Script file=...> entries found")
end

local locales, default = {}, nil
for _, file in ipairs(files) do
	local path = localesDir .. "/" .. file:gsub("\\", "/")
	local result = loadLocale(path)
	if result then
		if #result.calls ~= 1 then
			report("error", path, "calls NewLocale %d times, expected exactly once", #result.calls)
		end
		local call = result.calls[1]
		if call then
			if call.app ~= ADDON then
				report("error", call.where, "NewLocale app is %q, expected %q", tostring(call.app), ADDON)
			end
			if not KNOWN_LOCALES[call.locale] then
				report("error", call.where, "unknown locale %q", tostring(call.locale))
			end
			if call.isDefault and call.locale ~= DEFAULT_LOCALE then
				report("error", call.where, "only %s may be the default locale", DEFAULT_LOCALE)
			end
			local base = file:match("([^/\\]+)%.lua$")
			if base and base ~= call.locale then
				report("warning", call.where, "file %s.lua registers locale %s", base, tostring(call.locale))
			end
			result.locale = call.locale
			if call.locale == DEFAULT_LOCALE then
				if call.isDefault then
					default = result
				else
					report("error", call.where, "%s must be registered as the default locale", DEFAULT_LOCALE)
				end
			end
		end
		locales[#locales + 1] = result
	end
end

if not default then
	report("error", xmlPath, "no %s default locale was loaded", DEFAULT_LOCALE)
else
	local used, order = codeKeys(mainFile)
	if not used then
		report("error", mainFile, "cannot read the addon code")
	else
		for _, key in ipairs(order) do
			if not default.keys[key] then
				report("error", used[key], "L[%q] is used but not defined in %s", key, DEFAULT_LOCALE)
			end
		end
	end
end

local function checkPatterns(key, value, at)
	if type(value) ~= "table" then return end
	for i, entry in ipairs(value) do
		local pattern = entry
		if key ~= "separators" then
			if type(entry) ~= "table" then
				report("error", at, "%s[%d] is not a table", key, i)
				pattern = nil
			else
				pattern = entry.pattern
			end
		end
		if pattern ~= nil then
			local perr = patternError(pattern)
			if perr then
				report("error", at, "%s[%d] %q: %s", key, i, tostring(pattern), perr)
			elseif key == "numberPatterns" and countCaptures(pattern) < 1 then
				report("error", at, "%s[%d] %q has no capture for the number", key, i, pattern)
			end
			if key == "numberPatterns" and not ADD_INFO[entry.addInfo] then
				report("error", at, "%s[%d] has unknown addInfo %q", key, i, tostring(entry.addInfo))
			end
		end
	end
end

for _, loc in ipairs(locales) do
	for _, key in ipairs(loc.order) do
		local entry = loc.keys[key]
		local value, at = entry.value, entry.where
		if type(key) ~= "string" then
			report("error", at, "key %s is not a string", tostring(key))
		elseif PATTERN_TABLES[key] then
			if type(value) ~= "table" then
				report("error", at, "L[%q] must be a table", key)
			else
				checkPatterns(key, value, at)
			end
		elseif default and loc ~= default then
			local base = default.keys[key]
			if not base then
				report("error", at, "L[%q] is not defined in %s", key, DEFAULT_LOCALE)
			elseif value ~= true and type(value) ~= "string" then
				report("error", at, "L[%q] should be a string, got %s", key, type(value))
			elseif type(value) == "string" then
				local source = base.value == true and key or base.value
				if type(source) == "string" then
					local want, have = placeholders(source), placeholders(value)
					local extra = extraPlaceholders(want, have)
					if #extra > 0 then
						report("error", at, "L[%q] adds %s, which %s does not have", key, table.concat(extra, " "), DEFAULT_LOCALE)
					end
					local missing = extraPlaceholders(have, want)
					local kind = "warning"
					for _, spec in ipairs(missing) do
						if spec == "$value" then kind = "error" end
					end
					if #missing > 0 then
						report(kind, at, "L[%q] drops %s", key, table.concat(missing, " "))
					end
				end
			end
		elseif loc == default and value ~= true and type(value) ~= "string" then
			report("error", at, "L[%q] in %s should be true or a string, got %s", key, DEFAULT_LOCALE, type(value))
		end
	end
end

local summary = {}
for _, loc in ipairs(locales) do
	local n = 0
	for _ in pairs(loc.keys) do n = n + 1 end
	summary[#summary + 1] = ("%s=%d"):format(loc.locale or "?", n)
end
print(("Checked %d locale files (%s): %d error(s), %d warning(s)"):format(
	#locales, table.concat(summary, " "), errors, warnings))
os.exit(errors > 0 and 1 or 0)
