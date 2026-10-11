-- luacheck configuration for RatingBuster
-- https://luacheck.readthedocs.io/en/stable/config.html
-- Run from the repository root: luacheck .

std = "lua51" -- WoW runs Lua 5.1
max_line_length = false
codes = true

exclude_files = {
	".release/", -- BigWigsMods/packager output
	"rating-buster/libs/", -- externals fetched by the packager (see .pkgmeta)
	"rating-buster/Libs/",
}

-- Legacy code: these warnings are noise rather than bugs, and fixing them
-- would mean reformatting most of RatingBuster.lua.
unused_args = false -- callback signatures are fixed by Ace3 and the WoW API
unused_secondaries = false -- e.g. local r, g, b = GetTextColor() using only b
ignore = {
	"213", -- unused loop variable (for i = 1, #stats, 3 do)
	"311", -- value assigned to a local is overwritten before it is used
	"42.", -- shadowing a local variable
	"43.", -- shadowing an upvalue
	"542", -- empty if branch
	"6..", -- whitespace and indentation
}

-- WoW environment, applied to the addon files only (see the end of this file)
stds.wow = {}

-- Globals the addon writes
stds.wow.globals = {
	"RatingBuster", -- the AceAddon object
	"RatingBusterDB", -- SavedVariables (RatingBuster.toc)
	"ColorPickerFrame", -- fields are set to open the color picker
}

-- Globals the addon reads
stds.wow.read_globals = {
	-- Lua aliases provided by WoW
	"abs", "floor", "format", "gsub", "strfind", "strjoin", "strmatch",
	"strsplit", "strsub", "strtrim", "tinsert", "tremove",

	-- Libraries and optional addons
	"LibStub",
	"TankPoints", "TankPointsTooltips", "TP_MELEE",

	-- WoW API
	"CloseMenus", "CreateFrame", "GetBlockChance", "GetBuildInfo",
	"GetDestinationReforgeStats", "GetInventoryItemLink", "GetMasteryEffect",
	"GetParryChance", "GetReforgeItemInfo", "GetReforgeItemStats",
	"GetSpecialization", "GetSpellInfo", "GetTime", "hooksecurefunc",
	"InterfaceOptionsFrame_OpenToCategory", "IsAltKeyDown", "IsControlKeyDown",
	"IsEquippedItem", "IsShiftKeyDown", "IsSpellKnown", "UnitBuff", "UnitClass",
	"UnitLevel", "UnitStat",

	-- FrameXML frames and functions
	"ItemRefShoppingTooltip1", "ItemRefShoppingTooltip2", "ItemRefShoppingTooltip3",
	"ItemRefTooltip", "ReforgingFrame", "ReforgingFrame_GetStatRow",
	"ShoppingTooltip1", "ShoppingTooltip2", "ShoppingTooltip3", "WorldFrame",

	-- FrameXML constants
	"CLASS_MASTERY_SPELLS", "MAX_PLAYER_LEVEL_TABLE",
	"FONT_COLOR_CODE_CLOSE", "GREEN_FONT_COLOR_CODE", "HIGHLIGHT_FONT_COLOR_CODE",
	"RED_FONT_COLOR_CODE",
	"COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN", "CR_ARMOR_PENETRATION",
	"CR_BLOCK", "CR_CRIT_MELEE", "CR_CRIT_RANGED", "CR_CRIT_SPELL",
	"CR_DEFENSE_SKILL", "CR_DODGE", "CR_EXPERTISE", "CR_HASTE_MELEE",
	"CR_HASTE_RANGED", "CR_HASTE_SPELL", "CR_HIT_MELEE", "CR_HIT_RANGED",
	"CR_HIT_SPELL", "CR_HIT_TAKEN_MELEE", "CR_HIT_TAKEN_RANGED",
	"CR_HIT_TAKEN_SPELL", "CR_MASTERY", "CR_PARRY", "CR_PVP_POWER",
	"CR_WEAPON_SKILL",

	-- Global strings (GlobalStrings.lua), mostly used by the locale files
	"ARMOR", "SKILL", "ITEM_LEVEL", "SPELL_DMG", "SPELL_POWER",
	"EMPTY_SOCKET_BLUE", "EMPTY_SOCKET_META", "EMPTY_SOCKET_RED", "EMPTY_SOCKET_YELLOW",
	"ITEM_QUALITY0_DESC", "ITEM_QUALITY1_DESC", "ITEM_QUALITY2_DESC",
	"ITEM_QUALITY3_DESC", "ITEM_QUALITY4_DESC",
	"SPELL_STAT1_NAME", "SPELL_STAT2_NAME", "SPELL_STAT3_NAME", "SPELL_STAT4_NAME",
	"SPELL_STAT5_NAME",
	"STAT_BLOCK", "STAT_CATEGORY_DEFENSE", "STAT_DODGE", "STAT_PARRY",
	"ITEM_MOD_AGILITY_SHORT", "ITEM_MOD_ARMOR_PENETRATION_RATING_SHORT",
	"ITEM_MOD_BLOCK_VALUE", "ITEM_MOD_BLOCK_VALUE_SHORT",
	"ITEM_MOD_CRIT_MELEE_RATING", "ITEM_MOD_CRIT_MELEE_RATING_SHORT",
	"ITEM_MOD_CRIT_RANGED_RATING", "ITEM_MOD_CRIT_RANGED_RATING_SHORT",
	"ITEM_MOD_CRIT_RATING", "ITEM_MOD_CRIT_RATING_SHORT",
	"ITEM_MOD_CRIT_SPELL_RATING", "ITEM_MOD_CRIT_SPELL_RATING_SHORT",
	"ITEM_MOD_DODGE_RATING", "ITEM_MOD_DODGE_RATING_SHORT",
	"ITEM_MOD_EXPERTISE_RATING", "ITEM_MOD_EXPERTISE_RATING_SHORT",
	"ITEM_MOD_HASTE_MELEE_RATING", "ITEM_MOD_HASTE_MELEE_RATING_SHORT",
	"ITEM_MOD_HASTE_RANGED_RATING", "ITEM_MOD_HASTE_RANGED_RATING_SHORT",
	"ITEM_MOD_HASTE_RATING", "ITEM_MOD_HASTE_RATING_SHORT",
	"ITEM_MOD_HASTE_SPELL_RATING", "ITEM_MOD_HASTE_SPELL_RATING_SHORT",
	"ITEM_MOD_HIT_MELEE_RATING", "ITEM_MOD_HIT_MELEE_RATING_SHORT",
	"ITEM_MOD_HIT_RANGED_RATING", "ITEM_MOD_HIT_RANGED_RATING_SHORT",
	"ITEM_MOD_HIT_RATING", "ITEM_MOD_HIT_RATING_SHORT",
	"ITEM_MOD_HIT_SPELL_RATING", "ITEM_MOD_HIT_SPELL_RATING_SHORT",
	"ITEM_MOD_HIT_TAKEN_MELEE_RATING", "ITEM_MOD_HIT_TAKEN_MELEE_RATING_SHORT",
	"ITEM_MOD_HIT_TAKEN_RANGED_RATING", "ITEM_MOD_HIT_TAKEN_RANGED_RATING_SHORT",
	"ITEM_MOD_HIT_TAKEN_RATING", "ITEM_MOD_HIT_TAKEN_RATING_SHORT",
	"ITEM_MOD_HIT_TAKEN_SPELL_RATING", "ITEM_MOD_HIT_TAKEN_SPELL_RATING_SHORT",
	"ITEM_MOD_INTELLECT_SHORT", "ITEM_MOD_MASTERY_RATING",
	"ITEM_MOD_MASTERY_RATING_SHORT", "ITEM_MOD_PARRY_RATING",
	"ITEM_MOD_PARRY_RATING_SHORT", "ITEM_MOD_PVP_POWER", "ITEM_MOD_PVP_POWER_SHORT",
	"ITEM_MOD_RESILIENCE_RATING", "ITEM_MOD_RESILIENCE_RATING_SHORT",
	"ITEM_MOD_SPELL_DAMAGE_DONE", "ITEM_MOD_SPELL_DAMAGE_DONE_SHORT",
	"ITEM_MOD_SPELL_POWER", "ITEM_MOD_SPELL_POWER_SHORT", "ITEM_MOD_SPIRIT_SHORT",
	"ITEM_MOD_STAMINA_SHORT", "ITEM_MOD_STRENGTH_SHORT",
}

files["rating-buster/"] = { std = "+wow" }
