# RatingBuster

[![CI](https://github.com/hotdogee/rating-buster/actions/workflows/ci.yml/badge.svg)](https://github.com/hotdogee/rating-buster/actions/workflows/ci.yml)
[![Package](https://github.com/hotdogee/rating-buster/actions/workflows/package.yml/badge.svg)](https://github.com/hotdogee/rating-buster/actions/workflows/package.yml)
[![CurseForge](https://img.shields.io/badge/CurseForge-rating--buster-F16436?logo=curseforge&logoColor=white)](https://www.curseforge.com/wow/addons/rating-buster)
[![WoWInterface](https://img.shields.io/badge/WoWInterface-RatingBuster-orange)](https://www.wowinterface.com/downloads/info5819-RatingBuster.html)
[![WoW 5.4](https://img.shields.io/badge/WoW-5.4%20Mists%20of%20Pandaria-blue)](rating-buster/RatingBuster.toc)
[![License: GPL v2](https://img.shields.io/badge/license-GPL--2.0-blue)](LICENSE)

Item stat breakdown, analysis and comparison for World of Warcraft.

Combat ratings can be a pain when you want to compare 2 different items: is 30 hit rating better or 20 crit rating? RatingBuster started out as an addon that converts combat ratings in your tooltips into percentages, so that you have more meaningful information when comparing different items. It also breaks base stats down into what they give your character, and adds up every stat on an item, including enchants and gems, to show the total and the difference from what you have equipped, taking your talents, buffs and racials into account. The design aim of RatingBuster is to provide detailed, meaningful and customizable information about items so you can easily decide for yourself which item is better.

![RatingBuster tooltip example](rating-buster/RB-Example.jpg)

> [!NOTE]
> RatingBuster was last updated for Mists of Pandaria (patch 5.4, `## Interface: 50400`). It has not been updated for later expansions or for the Classic clients.

## Install

- **CurseForge:** install it with the CurseForge app, or download it from <https://www.curseforge.com/wow/addons/rating-buster>.
- **WoWInterface:** download it from <https://www.wowinterface.com/downloads/info5819-RatingBuster.html>.
- **Manual:** download a packaged zip (from CurseForge, WoWInterface, a [GitHub release](https://github.com/hotdogee/rating-buster/releases), or the artifact of a [Package workflow run](https://github.com/hotdogee/rating-buster/actions/workflows/package.yml)) and extract it into `World of Warcraft/Interface/AddOns/`, so that you have `Interface/AddOns/RatingBuster/RatingBuster.toc`. Then restart the game.

The libraries (Ace3, LibStatLogic-1.2, LibTipHooker-1.1 and others) are not stored in this repository. They are fetched when the addon is packaged, so a plain git checkout will not load in game. Use a packaged zip, or build one as described in [Development](#development).

## Features

- **Rating Conversion:** converts combat ratings into percentages.
- **Stat Breakdown:** breaks down Strength, Agility, Stamina, Intellect and Spirit into base stats. Supports talents, buffs and racials that give you extra bonuses.
  - Ex talent: Lunar Guidance - "Increases your spell damage and healing by 8%/16%/25% of your total Intellect."
  - Ex talent: Heart of the Wild - "Increases your Intellect by 4%/8%/12%/16%/20%. In addition, ......etc"
  - Ex: `+13 Intellect (+234 Mana, +0.18% Spell Crit, +3.9 Dmg)`
- **Stat Summary:** summarizes all the stats from the item itself, enchants and gems, converts them to base stats and displays the total value and/or difference from your current equipped item.
  - Ex: Crit Chance - adds up agility and crit rating from the item, enchant and gem, converts agility and crit rating to crit chance, and displays the total in a single value.
- **Item Level and Item ID:** Item Level is obtained from the WoW API, not a calculated value. Item ID is useful for advanced users.
- **Reforging:** adds rating conversions to the Blizzard Reforging window.
- **TankPoints:** if [TankPoints](https://github.com/hotdogee/tank-points) is installed, the summary can also show TankPoints and Total Reduction.
- Supports talents, buffs and racials that modify your stats for all classes.
- Profiles, with optional automatic switching when you change talent spec (LibDualSpec).
- Fully customizable, decide what you need to see and what you don't want.

### Auto fill gems in empty sockets

1. You can set the default gems for each type of empty socket using `/rb sum gem <red|yellow|blue|meta> <ItemID|Link>` or using the options window.
2. To specify the gem of your choice, you will need to give RatingBuster the ItemLink or the ItemID of the gem.
3. ItemLink example: type `/rb sum gem blue ` (last char is a space) and link the gem (from your bags, AH, ItemSync or whatever), then press <kbd>Enter</kbd>.
4. What if you can't link the gem? Well thats what ItemID is for. Find your gem on <https://www.wowhead.com/> and look at the URL, for example `https://www.wowhead.com/?item=32193`, 32193 is the ItemID for that gem. Go back in wow, type `/rb sum gem red 32193` and press <kbd>Enter</kbd>.

Two more gem sets (`/rb sum gem2`, `/rb sum gem3`) are used while you hold the modifier key chosen with `/rb sum gem2 key` or `/rb sum gem3 key`.

- Note1: If you have `/rb sum ignore gem` on, the auto fill gems won't work.
- Note2: Meta gem conditions and SetBonuses work, so if you don't meet the conditions, StatSummary won't count them.
- Note3: RatingBuster will only auto fill empty sockets, if the item already has some gems on it, it will remain.
- Note4: Empty sockets filled by RatingBuster will keep the "Empty Socket Icon" so you can still easily tell what color socket it is.
- Note5: Gem text filled by RatingBuster will be shown in gray color to differentiate from real gems.

### Supported addons

EquipCompare, EQCompare, tekKompare, LinkWrangler, MultiTips, Links, AtlasLoot, ItemMagic, Sniff, LinkHeaven, Mirror, TooltipExchange, AtlasQuest.

Also works with all bag mods!

### Support modules

- [RatingBuster_AlwaysBuffed](http://wow.curse.com/downloads/wow-addons/details/ratingbuster-alwaysbuffed.aspx): enables RatingBuster to consider the effects of selected buffs in the conversion even if the buffs are not currently active.

## Configuration

Open the options window with `/rb win`, or in game under Interface Options > AddOns > RatingBuster. It has pages for Rating, Stat Breakdown, Stat Summary and Profiles.

### Slash commands

`/rb`, `/rabu` and `/ratingbuster` are the same command. `/rb` on its own lists the commands, and `/rb <group>` (for example `/rb sum ignore`) lists the options in a group. A toggle flips each time you run it; other options take a value, such as `/rb level 85`.

General

| Command | What it does | Default |
| --- | --- | --- |
| `/rb win` | Shows the options window | |
| `/rb standby` | Suspend/resume this addon | Enabled |
| `/rb hidebzcomp` | Disable Blizzard stat change summary when using the built-in comparison tooltip | On |
| `/rb statmod` | Enable support for Stat Mods (talents, buffs and racials) | On |
| `/rb subtract_equip` | Subtract equipped stats, for more accurate calculation of Mana Regen from Intellect and Spirit, and diminishing stats like Dodge, Parry, Resilience | On |
| `/rb enable_reforge_ui` | Add rating information to the Blizzard Reforging UI | On |
| `/rb usereqlv` | Calculate using the required level if you are below the required level | On |
| `/rb level <n>` | Set the level used in calculations (0 = your level) | 0 |
| `/rb ilvlid coloritemlevel` | Colorize the Item Level text (`/rb ilvlid pick` picks the color) | On |
| `/rb ilvlid itemlevelall` | Display the Item Level on all items instead of just on equippable items | Off |
| `/rb ilvlid itemid` | Display the Item ID on all items | Off |

Rating Conversion

| Command | What it does | Default |
| --- | --- | --- |
| `/rb rating show` | When to show rating conversions: always, only while ALT, CTRL or SHIFT is held, or never | Always |
| `/rb rating spell` | Show Spell Hit/Haste from Hit/Haste Rating | by class |
| `/rb rating physical` | Show Physical Hit/Haste from Hit/Haste Rating | by class |
| `/rb rating detail` | Show detailed text for Resilience and Expertise conversions | Off |
| `/rb rating exp` | Convert Expertise into Dodge Neglect and Parry Neglect | Off |
| `/rb rating color enable` | Enable colored text (`/rb rating color pick` picks the color) | On |

Spell Hit/Haste is on by default for Druids, Mages, Paladins, Priests, Shamans and Warlocks, and Physical Hit/Haste for Death Knights, Druids, Hunters, Paladins, Rogues, Shamans and Warriors. Both are off for Monks.

Stat Breakdown

| Command | What it does | Default |
| --- | --- | --- |
| `/rb stat show` | When to show base stat conversions: always, with a modifier key, or never | Always |
| `/rb stat str` | Options for Strength, e.g. Attack Power | |
| `/rb stat agi` | Options for Agility, e.g. Crit, Dodge, Attack Power, Ranged Attack Power | |
| `/rb stat sta` | Options for Stamina, e.g. Health | |
| `/rb stat int` | Options for Intellect, e.g. Spell Crit, Spell Damage | |
| `/rb stat spi` | Options for Spirit, e.g. Mana Regen | |

Some breakdowns, such as Parry from Strength or Spell Damage from Agility, only appear for classes whose talents or passives provide them.

Stat Summary

| Command | What it does | Default |
| --- | --- | --- |
| `/rb sum show` | When to show the stat summary: always, with a modifier key, or never | Always |
| `/rb sum diffstyle` | Display diff values in the main tooltip or only in compare tooltips | Main |
| `/rb sum ignore unused` | Hide stat summary for undesirable items: below the minimum quality, of an ignored armor type, or of a type you can't use | On |
| `/rb sum ignore quality` | Show stat summary only for selected quality items and up | Uncommon |
| `/rb sum ignore armor <type>` | Ignore cloth, leather, mail or plate | |
| `/rb sum ignore equipped` | Hide stat summary for equipped items | Off |
| `/rb sum ignore enchant` | Ignore enchants on items when calculating the stat summary | On |
| `/rb sum ignore gem` | Ignore gems on items when calculating the stat summary | Off |
| `/rb sum ignore prismaticSocket` | Ignore gems in prismatic sockets when calculating the stat summary | On |
| `/rb sum space before` | Add a empty line before stat summary | On |
| `/rb sum space after` | Add a empty line after stat summary | Off |
| `/rb sum icon` | Show the sigma icon before summary listing | On |
| `/rb sum title` | Show the title text before summary listing | On |
| `/rb sum showzerostat` | Show zero value stats in summary for consistency | Off |
| `/rb sum calcsum` | Calculate the total stats for the item | On |
| `/rb sum calcdiff` | Calculate the stat difference for the item and equipped items | On |
| `/rb sum sort` | Sort StatSummary alphabetically instead of by stat type (basic, physical, spell, tank) | Off |
| `/rb sum avoidhasblock` | Include block chance in Avoidance summary, otherwise only dodge, parry, miss | Off |
| `/rb sum basic`, `physical`, `spell`, `tank` | Choose the stats listed in the summary | by class |
| `/rb sum gem`, `gem2`, `gem3` | Auto fill empty sockets, see [above](#auto-fill-gems-in-empty-sockets) | |

Profiles are under `/rb profile`.

## Localization

RatingBuster is translated into these languages. The files are in [`rating-buster/locales`](rating-buster/locales).

| Locale | File | Translated by |
| --- | --- | --- |
| English (default) | `enUS.lua` | Whitetooth |
| German | `deDE.lua` | Kuja |
| Spanish (Mexico), partial | `esES.lua` (registers `esMX` only) | carahuevo, kaiemg |
| French | `frFR.lua` | Tixu, Silaor, renchap |
| Italian | `itIT.lua` | Rikther |
| Korean | `koKR.lua` | Slowhand, 7destiny, kcgcom, fenlis |
| Portuguese (Brazil), partial | `ptBR.lua` | |
| Russian | `ruRU.lua` | Orsana, StingerSoft, Swix |
| Simplified Chinese | `zhCN.lua` | iceburn, 急云@CWDG, 天下牧@萨格拉斯 |
| Traditional Chinese | `zhTW.lua` | Whitetooth, CuteMiyu, 小紫, mcc |

The Spanish and Portuguese files only have the number patterns, separators and added tooltip text. Their options menus are in English, and with no `statList` of their own they use the English stat patterns. `esES.lua` registers only `esMX`, so Spain-Spanish (`esES`) clients get English. The added tooltip text in `ptBR.lua` is Spanish, not Portuguese. Translations for these are welcome.

If you can help on localization updates, feel free to send me the fixes and I'll include them in the release:

1. Edit your language's file. The keys are the English strings from `enUS.lua`; set the value to the translation, e.g. `L["Show Item ID"] = "顯示物品編號"`. Strings you don't translate fall back to English. Save the file as UTF-8.
2. The tooltip matching tables (`numberPatterns`, `separators` and `statList`) can't simply be translated. They have to match the text the game shows, `statList` patterns must be lower case, and the magic characters `^$()%.[]*+-?` must be escaped with `%`. The comments in `enUS.lua` explain how they work; check them in game.
3. Run `lua tests/check_locales.lua` (see [Development](#development)). It reports keys that don't exist in `enUS.lua`, lost `$value` or `%s` placeholders and broken patterns.
4. Open a pull request, or [open an issue](https://github.com/hotdogee/rating-buster/issues) with the corrected strings.

Thanks to everyone who has sent translations, and to [Iviarshall](https://github.com/Iviarshall) for reporting the Russian Avoidance translation ([#1](https://github.com/hotdogee/rating-buster/issues/1)).

## Development

The addon is in [`rating-buster/`](rating-buster). [`rating-buster/.pkgmeta`](rating-buster/.pkgmeta) lists the libraries that are embedded when the addon is packaged.

### Lint and tests

With Lua 5.1 and [luacheck](https://github.com/lunarmodules/luacheck) (`luarocks install luacheck`), from the repository root:

```sh
luacheck .
lua tests/check_locales.lua
```

[`.luacheckrc`](.luacheckrc) lists the WoW globals the addon uses. `tests/check_locales.lua` loads every locale file outside the game and checks them against `enUS.lua` and the keys used in `RatingBuster.lua`. The [CI workflow](.github/workflows/ci.yml) runs both on every push and pull request.

### Packaging

Packages are built with [BigWigsMods/packager](https://github.com/BigWigsMods/packager). It needs bash, git, Subversion, curl and zip. From the repository root:

```sh
release.sh -d -m rating-buster/.pkgmeta
```

The zip is written to `.release/`. The [Package workflow](.github/workflows/package.yml) builds it on every push to `master` and keeps it as a workflow artifact. When you push a tag (use an annotated tag, e.g. `git tag -a v5.4.1 -m "RatingBuster 5.4.1"`), it also creates a GitHub release with the zip. Uploading to CurseForge and WoWInterface is turned off; the comments at the top of the workflow explain how to turn it on.

## History

I created RatingBuster for The Burning Crusade, when combat ratings were introduced, and kept it updated through Wrath of the Lich King, Cataclysm and Mists of Pandaria. It was developed on WowAce and moved to GitHub in April 2020.

- [Version history and old notes](docs/history.md): release notes from 0.1 to 1.6.5, the 1.x slash command list and the old TODO list.
- [Combat ratings research notes](docs/combat-ratings.md): how the rating formula was derived, avoidance diminishing returns, and stat conversion data from patch 3.2.0.
- Related projects: [LibStatLogic-1.2](https://github.com/hotdogee/lib-stat-logic), the stat library RatingBuster is built on, and [TankPoints](https://github.com/hotdogee/tank-points).

## License

RatingBuster is written by Whitetooth (hotdogee) and released under the [GNU General Public License v2](LICENSE).
