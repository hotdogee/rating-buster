# RatingBuster history

Moved here from the README. The release notes end at 1.6.5 (patch 4.2.0); later releases were not recorded here. The last revision in the code is r394 (December 2012), and the TOC targets patch 5.4 (`## Interface: 50400`).

## Version History
1.6.5
- New: Support for 4.2.0
- New: Death knights, paladins, and warriors no longer receive any bonus to their chance to dodge from Agility. Their base chance to dodge is now a fixed 5%.
- New: Death knights, paladins, and warriors now receive 27% of their Strength bonuses as parry rating, up from 25%.
- New: Death Knight: Unholy Might now increases Strength by 20%, up from 5%.
- New: Druid: Now gain 1 attack power per point of Strength, down from 2.
- New: Rogue: Savage Combat now increases attack power by 3/6%, up from 2/4%.
- New: Rogue: Vitality now increases attack power by 30%, up from 25%.
- Fix: Doesn't error on tooltips with a lot of lines
- Fix: Don't show ItemID by default
- Fix: Removed Reforging UI loaded debug text

1.6.4
- New: Option to replace Blizzard Item Level with RatingBusters colored Item Level and Item ID
- New: Option to Enable Subtract Equipped Stats for calculation of mana regen from intellect and spirit, and diminishing stats like dodge, parry, resilience. Replaces the old option to Enable Avoidance Diminishing Returns.
- New: Support for 4.1.0 Resilience diminishing returns
- New: Attack Speed and Haste buffs now increase the amount of haste gained from haste rating
- New: Levels 81 and up gain increased health per point of stamina, with 14 health per stamina at level 85
- Fix: Stat Breakdown: Removed duplicate code and fixed heal calculations for Mental Quickness and Sheath of Light (Thanks to Belechannas)
- Fix: enUS: Haste and Resilience should be properly detected
- Fix: Several localization updates and optimizations
- Fix: Shamans, Paladins, Druids, and Death Knights no longer receive 30% more melee haste from Haste Rating.
- Mage: Glyph of Frost Armor (new glyph): Frost Armor also causes the mage to regenerate 2% of maximum mana every 5 seconds.
- Priest: Mysticism: Fixed
- Priest: Holy Concentration: 15/30%, down from 20/40%.
- Fixed: Death Knight: Veteran of the Third War
- Druid: Nurturing Instinct: Increases your healing spells by up to 50%/100% of your Agility.
- Hunter: Animal Handler: Now provides a passive 25% bonus to attack power, up from 15%.
- Hunter: Hunter vs. Wild: Has been increased to 5/10/15% Stamina, up from 4/8/12%.
- Hunter: Into the Wilderness (passive): has been reduced to a 10% Agility increase, down from 15%.
- Rogue: Sinister Calling: Now grants 30% Agility, up from 25%
- Dwarf: Stoneform: Now reduces all damage taken by 10%, rather than increasing armor by 10%.
- Death Knight: Unholy Might: Reduced to a 5% Strength increase, down from 10%.
- Hunter: Hunting Party: Increases your total Agility by an additional 2%.
- Rogue: Vitality: Increases your Attack Power by 25%.

1.6.3
- New: StatSummary: Protection Warriors and Paladins now shows Block Chance from Mastery

1.6.2
- Fixed: Error on Regorge UI
- Fixed: Bonus armor calculation on cloaks

1.6.1
- New: Rating conversion support for Reforge UI
- Fixed: Druid: Bear Form armor formula
- Added: Dalaran Brilliance: Spell Power increased by 6%
- Fixed: Heart of the Wild: Rank 3 gives you 6% Int, not 60%
- Localizations: koKR by 7destiny, ruRU by Stinger Soft, deDE by cremor

1.6.0
- Support for 4.0.1 formulas, refer to my post at EJ for formula changes: http://elitistjerks.com/f15/t29453-combat_ratings_level_85_cataclysm
- Support for Mastery Rating
- Support for Reforged items
- Properly initialize AceDB custom class defaults in OnNewProfile
- Paladins and Warriors now get a passive 25% Strength as Parry Rating
- +1 Intellect = +1 Spell Power
- Agility no longer gives Armor
- Spirit no longer gives Health Regen
- Stat Breakdown: Redesigned class specific option display
- Stat Breakdown: Show Spell Power if Spell Damage equals Healing
- Stat Summary: Replaced all spell damage schools and healing with Spell Power, but dynamically displays spell damage and healing if different.
- Support for Spell Hit from Spirit talents
- Core library updated to LibStatLogic-1.2
- Support for armor specialization bonuses:
  - Clothies: Bonus always active, even with empty armor slots.
  - Hunters, Rogues: Active only if all eight slots are wearing appropriate armor, works when untalented.
  - Others: No bonus if you don't have a Primary Talent Spec chosen
- Don't ignore Relics anymore
- 4.0.1: Priest: Power Infusion: gives haste instead of spell power(long over due)
- 4.0.1: Warlock: Demonic Pact: now a 10% spell power buff for everyone independent of the warlock's spell power
- 4.0.1: Warlock: Demonic Resilience: Removed
- 4.0.1: Warlock: Fel Armor: is Spirit independent
- 4.0.1: Warlock: Glyph of Life Tap: no longer gives spell power buff
- 4.0.1: Warlock: Fel Vitality: Removed
- 4.0.1: Warlock: Demonic Embrace: Moved
- 4.0.1: Warlock: Master Demonologist: Removed
- 4.0.1: Warlock: Demonic Knowledge: Removed
- 4.0.1: Mage: Khadgar's Regalia(843), Sunstrider's Regalia(844) 2pc: Changed
- 4.0.1: Druid: Survival of the Fittest: Removed
- 4.0.1: Druid: Natural Reaction: Moved to 2,18. 2 Ranks
- 4.0.1: Druid: Feral Swiftness: Moved to 2,1
- 4.0.1: Druid: Dreamstate: Removed
- 4.0.1: Druid: Intensity: Removed
- 4.0.1: Druid: Meditation: Allows 50% of your mana regeneration from Spirit to continue while in combat.
- 4.0.1: Druid: Nurturing Instinct: Moved to 2,14
- 4.0.1: Druid: Lunar Guidance: Removed
- 4.0.1: Druid: Improved Tree of Life: Removed
- 4.0.1: Druid: Improved Moonkin Form: Removed
- 4.0.1: Druid: Natural Perfection: Removed
- 4.0.1: Druid: Protector of the Pack: Removed
- 4.0.1: Druid: Balance of Power: Increases your spell hit rating by an additional amount equal to 50/100% of your Spirit.
- 4.0.1: Druid: Thick Hide: Increases your Armor contribution from cloth and leather items by 4/7/10%, increases armor while in Bear Form by an additional 11/22/33%, and reduces the chance you'll be critically hit by melee attacks by 2/4/6%.
- 4.0.1: Druid: Dire Bear Form: Removed
- 4.0.1: Druid: Bear Form: Increases melee attack power by 30, armor contribution from cloth and leather items by 65%, and Stamina by 25%.  Also causes agility to increase attack power.
- 4.0.1: Druid: Moonkin Form: Armor contribution from items is increased by 120%.
- 4.0.1: Druid: Improved Mark of the Wild: Removed
- 4.0.1: Druid: Heart of the Wild: Increases your Intellect by 2/4/6%. In addition, while in Bear Form your Stamina is increased by 3/7/10% and while in Cat Form your attack power is increased by 3/7/10%.
- 4.0.1: Druid: Furor: Increases your maximum mana by 5/10/15%.
- 4.0.1: Druid: Living Spirit: Removed
- 4.0.1: Druid: Tree of Life: Armor increased by 120%.
- 4.0.1: Druid: Aggression: Increases your attack power by 25%.
- 4.0.1: Death Knightm, Warrior, Paladin: Forceful Deflection: Increases your Parry Rating by 25% of your total Strength.
- 4.0.1: Death Knight: Bladed Armor: Increases your attack power by 2/4/6 for every 180 armor value you have.
- 4.0.1: Death Knight: Frost Presence: No longer relevent
- 4.0.1: Death Knight: Blood Presence: Stamina increased by 8%. Armor contribution from cloth, leather, mail and plate items increased by 60%. Damage taken reduced by 8%.
- 4.0.1: Death Knight: Improved Frost Presence: No longer relevent
- 4.0.1: Death Knight: Toughness: Increases your armor value from items by 3/7/10%.
- 4.0.1: Death Knight: Veteran of the Third War: Increases your total Stamina by 9% and your expertise by 6.
- 4.0.1: Death Knight: Rune of the Stoneskin Gargoyle: +4% Armor and +2% Stamina to 2h weapon
- 4.0.1: Death Knight: Rune of the Nerubian Carapace: +2% Armor and +1% Stamina to 1h weapon
- 4.0.1: Death Knight: Ravenous Dead: Removed
- 4.0.1: Death Knight: Abomination's Might: Also increases your total Strength by 1/2%.
- 4.0.1: Death Knight: Unholy Might: Dark power courses through your limbs, increasing your Strength by 15%.
- 4.0.1: Death Knight: Vampiric Blood: Maximum health increased by 15%
- 4.0.1: Death Knight: Glyph of Vampiric Blood: Vampiric Blood no longer grants you health
- 4.0.1: Death Knight: Pillar of Frost: Strength increased by 20%.
- 4.0.1: Death Knight: Brittle Bones: Your Strength is increased by 2/4%
- 4.0.1: Death Knight: Unholy Strength: Strength increased by 15%
- 4.0.1: Hunter: Combat Experience: Removed
- 4.0.1: Hunter: Lightning Reflexes: Removed
- 4.0.1: Hunter: Survivalist: Removed
- 4.0.1: Hunter: Endurance Training: Removed
- 4.0.1: Hunter: Thick Hide: Removed
- 4.0.1: Hunter: Survival Instincts: Removed
- 4.0.1: Hunter: Aspect Mastery: Removed
- 4.0.1: Hunter: Catlike Reflexes: Removed
- 4.0.1: Hunter: Aspect of the Monkey: Removed
- 4.0.1: Hunter: Improved Aspect of the Monkey: Removed
- 4.0.1: Hunter: Aspect of the Dragonhawk: Removed
- 4.0.1: Hunter: Careful Aim: No longer relevent
- 4.0.1: Hunter: Animal Handler: Attack Power increased by 15%.
- 4.0.1: Mage: Arcane Fortitude: Removed
- 4.0.1: Mage: Khadgar's Regalia(843), Sunstrider's Regalia(844) 2pc: No longer relevent
- 4.0.1: Mage: Glyph of Molten Armor: No longer relevent
- 4.0.1: Mage: Arcane Meditation: Removed
- 4.0.1: Mage: Pyromaniac: No longer relevent
- 4.0.1: Mage: Glyph of Mage Armor: Removed
- 4.0.1: Mage: Mind Mastery: Removed
- 4.0.1: Mage: Arctic Winds: Removed
- 4.0.1: Mage: Improved Blink: No longer relevent
- 4.0.1: Mage: Playing with Fire: Removed
- 4.0.1: Mage: Frozen Core: Removed
- 4.0.1: Mage: Arcane Mind: Removed
- 4.0.1: Mage: Student of the Mind: Removed
- 4.0.1: Mage: Improved Mana Gem: Increases your spell power by 1/2% of your maximum mana
- 4.0.1: Paladin: Sheath of Light: Increases your spell power by an amount equal to 30% of your attack power
- 4.0.1: Paladin: Touched by the Light: Increases your total Stamina by 15%, increases your spell hit by 6%, and increases your spell power by an amount equal to 60% of your Strength.
- 4.0.1: Paladin: Holy Guidance: Removed
- 4.0.1: Paladin: Anticipation: Removed
- 4.0.1: Paladin: Divine Purpose: No longer relevent
- 4.0.1: Paladin: Blessed Life: No longer relevent
- 4.0.1: Paladin: Improved Righteous Fury: Removed
- 4.0.1: Paladin: Guarded by the Light: No longer relevent
- 4.0.1: Paladin: Shield of the Templar: No longer relevent
- 4.0.1: Paladin: Glyph of Divine Plea: No longer relevent
- 4.0.1: Paladin: Toughness: Increases your armor value from items by 3/6/10%.
- 4.0.1: Paladin: Divine Strength: Removed
- 4.0.1: Paladin: Sacred Duty: No longer relevent
- 4.0.1: Paladin: Combat Expertise: Removed
- 4.0.1: Paladin: Divine Intellect: Removed
- 4.0.1: Paladin: Redoubt: Removed
- 4.0.1: Paladin: Meditation: Allows 50% of your mana regeneration from Spirit to continue while in combat.
- 4.0.1: Paladin: Enlightened Judgements: Grants hit rating equal to 50/100% of any Spirit gained from items or effects
- 4.0.1: Priest: Spiritual Guidance: Removed
- 4.0.1: Priest: Twisted Faith: Grants you spell hit rating equal to 50/100% of any Spirit gained from items or effects.
- 4.0.1: Priest: Holy Concentration: Increases the amount of mana regeneration from Spirit while in combat by an additional 10/20%.
- 4.0.1: Priest: Meditation: Allows 50% of your mana regeneration from Spirit to continue while in combat.
- 4.0.1: Priest: Improved Power Word: Fortitude: Removed
- 4.0.1: Priest: Mental Strength: Removed
- 4.0.1: Priest: Inner Fire: Increases armor from items by 60%
- 4.0.1: Priest: Glyph of Inner Fire: Increases the armor from your Inner Fire spell by 50%.
- 4.0.1: Priest: Enlightenment: Intellect increased by 15%.
- 4.0.1: Rogue: Deadliness: Removed
- 4.0.1: Rogue: Savage Combat: Increases your total attack power by 2/4%.
- 4.0.1: Rogue: Evasion: Dodge chance increased by 50% and chance ranged attacks hit you reduced by 25%.
- 4.0.1: Rogue: Lightning Reflexes: Increases your chance to dodge enemy attacks by 3/6/9%
- 4.0.1: Rogue: Ghostly Strike: Dodge chance increased by 15%.
- 4.0.1: Rogue: Sleight of Hand: Removed
- 4.0.1: Rogue: Heightened Senses: Removed
- 4.0.1: Rogue: Sinister Calling: Increases your total Agility by 25%
- 4.0.1: Rogue: Endurance: Removed
- 4.0.1: Rogue: Reinforced Leather: Increases your armor contribution from cloth and leather items by 25/50%.
- 4.0.1: Shaman: Mental Dexterity: Removed
- 4.0.1: Shaman: Mental Quickness: Increases your spell power by an amount equal to 50% of your attack power
- 4.0.1: Shaman: Unrelenting Storm: Removed
- 4.0.1: Shaman: Nature's Blessing: No longer relevent
- 4.0.1: Shaman: Anticipation: Removed
- 4.0.1: Shaman: Meditation: Allows 50% of your mana regeneration from Spirit to continue while in combat.
- 4.0.1: Shaman: Astral Shift: Removed
- 4.0.1: Shaman: Ancestral Knowledge: Removed
- 4.0.1: Shaman: Toughness: Increases your Stamina by 3/7/10%
- 4.0.1: Shaman: Elemental Precision: Grants you spell hit rating equal to 33/66/100% of any Spirit gained from items or effects.
- 4.0.1: Warrior: Improved Spell Reflection: Removed
- 4.0.1: Warrior: Armored to the Teeth: Removed
- 4.0.1: Warrior: Anticipation: Removed
- 4.0.1: Warrior: Last Stand: Health increased by 30% of maximum.
- 4.0.1: Warrior: Vitality: Removed
- 4.0.1: Warrior: Strength of Arms: Removed
- 4.0.1: Warrior: Sentinel: Increases your total Stamina by 15%
- 4.0.1: Warrior: Toughness: Increases your armor value from items by 3/6/10%.
- 4.0.1: General: Chill of the Throne: Removed
- 4.0.1: General: Replenishment: Replenishes 1% of maximum mana per 10 sec.
- 4.0.1: General: Totemic Wrath: Spell Power increased by 10%
- 4.0.1: General: Flametongue Totem: Spell Power increased by 6%
- 4.0.1: General: Arcane Brilliance: Spell Power increased by 6%
- 4.0.1: General: Gnome: Expansive Mind: Increases mana instead of int
- 4.0.1: General: Blessing of Kings: Strength, Agility, Stamina, and Intellect increased by 5%.
- 4.0.1: General: Blessing of Forgotten Kings: Strength, Agility, Stamina, and Intellect increased by 4%.
- 4.0.1: General: Embrace of the Shale Spider: Strength, Agility, Stamina, and Intellect increased by 5%.
- 4.0.1: General: Mark of the Wild: Strength, Agility, Stamina, and Intellect increased by 5%.
- 4.0.1: General: Blessing of Might: Increasing attack power by 10%.
- 4.0.1: General: Abomination's Might: Attack power increased by 5/10%.
- 4.0.1: General: Unleashed Rage: Melee attack power increased by 4/7/10%.
- 4.0.1: General: Trueshot Aura: Attack power increased by 10%.
- 4.0.1: General: Eternal Earthsiege Diamond: +1% Shield Block Value
- 4.0.1: General: Eternal Earthstorm Diamond: +1% Shield Block Value
- 4.0.1: General: Eternal Shadowspirit Diamond: +5% Shield Block Value
- 4.0.1: General: Stoneform: Armor increased by 10%.
- 4.0.1: General: Austere Earthsiege Diamond: 2% Increased Armor Value from Items
- 4.0.1: General: Austere Shadowspirit Diamond: 2% Increased Armor Value from Items
- 4.0.1: General: Ember Skyflare Diamond: Increases mana instead of int
- 4.0.1: General: Ember Skyfire Diamond: Increases mana instead of int
- 4.0.1: General: Beaming Earthsiege Diamond: +2% Mana
- 4.0.1: General: Ember Shadowspirit Diamond: +2% Maximum Mana
- 4.0.1: General: Greater Blessing of Kings: Removed
- 4.0.1: General: Blessing of Sanctuary: Removed
- 4.0.1: General: Greater Blessing of Sanctuary: Removed

1.5.1
- Support new API changes in LibStatLogic-1.1
1.5.0
- NEW: Support for RatingBuster_AlwaysBuffed: http://wow.curse.com/downloads/wow-addons/details/ratingbuster-alwaysbuffed.aspx
- Rating options: "Show Spell Hit" changed to "Show Spell Hit/Haste", and "Show Physical Hit" changed to "Show Physical Hit/Haste"
- Stat Breakdown: Show MP5 from Int will now show effects from Replenishment
- Stat Summary: Added Expertise Rating Summary
- Localization updates

1.4.9
- Update for 3.3.3
- Use /rabu for commands, since /rb is now used by the blizzard interface to launch the new raid browser window.
- 3.3.3: Death Knight: Endless Winter: Grants 2/4% strength.
- 3.3.3: Death Knight: Unbreakable Armor: The amount of strength granted is now 20%, up from 10%.
- 3.3.3: Warrior: Vitality: Now boosts Stamina by 3/6/9%

1.4.8
- Update for 3.3.0
- NEW: Rating Conversion, Stat Breakdown, Stat Summary can each be set to show on ALT, SHIFT, CTRL, Always, or Never.
- NEW: Two extra default gem sets which you can toggle with a modifier key
- Improved "Ignore undesirable items" option: Separate options for Cloth, Leather, Mail, and Plate items, can also set the minimum item quality
- Warlock: Fixed Demonic Knowledge calculations
- Warlock: Added Glyph of Life Tap
- Mage: 2pc Tier 9 support
- 3.2.2: Paladin: Touched by the Light: This talent now provides 20/40/60% of the paladin��s strength as spell power instead of 10/20/30% of the paladin��s stamina.
- 3.2.0: Warrior: Armored to the Teeth: This talent now provides 1/2/3 attack power per 108 armor, up from per 180 armor.
- Change options text style to match Blizzard options
- Optimized checking of unusable items
- Locale updates

1.4.7
- NEW: Option to ignore prismatic sockets
- LibDualSpec-1.0 now optional, can be deleted if not needed.
- Update for 3.2.2
- Armor Penetration Rating: The 25% buff is scaled back to 10%
- Death Knight: Unbreakable Armor: Now grants 25% additional armor. The amount of strength granted has been reduced to 10%.
- Death Knight: Glyph of Unbreakable Armor: Now increases the armor gained from Unbreakable Armor by 20%.
- Paladin: Blessing of Sanctuary: This blessing now grants 10% strength in addition to its current effects.
- Priest: Twisted Faith now grants spell power equal to 4/8/12/16/20% of spirit, up from 2/4/6/8/10%.
- Bug Fixes
- Mage: Removed Arcane Instability: Does not increase spell power
- Fixed Dodge from Agi formula

1.4.6
- NEW: Option to enable dual profile support, will automatically swap profiles on talent switch when enabled.
- NEW: Option to disable Blizzard's stat change summary.
- Fixed comp style stat summary
- Dodge/parry neglect no longer truncated to integer expertise
- No longer displays "query server" message on invalid gem input, and will correctly inform user of invalid input.
- Setting default gems in colorblind mode now works correctly
- Paladin: Fixed Touched by the Light detection

1.4.5
- Updated for 3.2.0
- Fixed Resilience formula for levels 1 to 34
- Fixed parry conversion for classes that can't parry
- Dodge Rating: The amount of dodge rating required per percentage of dodge has been increased by 15%.
- Parry Rating: The amount of parry rating required per percentage of parry has been reduced by 8%.
- Resilience: The amount of resilience needed to reduce critical strike chance, critical strike damage and overall damage has been increased by 15%.
- Agility: BaseDodge changed for all classes
- Fixed Avoidance DR values for Priest, Mage and Warlock
- Druid: Updated Improved Moonkin Form: Now grants 10/20/30% of spirit as spell power.
- Druid: Updated Improved Tree of Life: The armor bonus to Tree of Life Form from this talent has been reduced to 67/133/200% bonus armor.
- Druid: Fixed Natural Reaction: Only add dodge in Bear Form and Dire Bear Form
- Death Knight: Updated Frost Presence: 10% bonus health reduced to 6% bonus stamina.
- Death Knight: Updated Toughness: This talent now grants 2/4/6/8/10% armor instead of 3/6/9/12/15%.
- Death Knight: Updated Veteran of the Third War: Stamina bonus reduced to 1/2/3%.
- Death Knight: Updated Improved Frost Presence: While in Blood Presence or Unholy Presence, you retain 3/6% stamina from Frost Presence, and damage done to you is decreased by an additional 1/2% in Frost Presence.
- Death Knight: Updated Unbreakable Armor: Now grants damage reduction instead of physical damage reduction, and increases your Strength by 25% up from 10%
- Paladin: Updated Blessing of Sanctuary: This blessing now also increases stamina by 10%. This effect is not cumulative with Blessing of Kings.
- Paladin: Updated Lay on Hands: Now reduces the physical damage taken by the target by 10/20% instead of increasing the target's armor.
- Paladin: Updated Divine Intellect: This talent now gives 2/4/6/8/10% increased intellect instead of 3/6/9/12/15%.
- Priest: Updated Inspiration: The buff from this ability now reduces the physical damage taken by the target by 3/7/10% instead of increasing the target's armor.
- Shaman: Updated Ancestral Healing: The buff from this ability now reduces the physical damage taken by the target by 3/7/10% instead of increasing the target's armor.
- Shaman: Updated Unleashed Rage: Reduced to 3 points, down from 5.
- Warlock: Updated Demonic Embrace: Now a 3 point talent, down from 5 points.

1.4.4
- StatBreakdown now shows Armor to AP for Armored to the Teeth(Warrior) and Bladed Armor(Death Knight)
- Better support for 3.0.8 bonus armor changes
- Dodge Rating: Low-level players will now convert Dodge Rating at the same rate as level 34 players.
- Armor Penetration Rating: All classes now receive 25% more benefit from Armor Penetration Rating. 
- Haste Rating: shamans, paladins, druids, and death knights now receive 30% more melee haste from Haste Rating. 
- Spirit: The amount of mana regeneration granted by this stat has been reduced by 40%. 
- Druid: Updated Talent: Heart of the Wild: Stamina bonus changed to 2/4/6/8/10%. 
- Druid: Updated Talent: Survival of the Fittest: Bonus armor reduced to 11/22/33% instead of 22/44/66%. 
- Druid: Added Talent: Improved Mark of the Wild: Now also increases all of your total attributes by 1/2%. 
- Druid: Updated Talent: Intensity: Now grants 17/33/50% of mana regeneration while casting. 
- Druid: Updated Talent: Improved Tree of Life: Now receives 80/160/240% increased armor.
- Hunter: Added Talent: Hunting Party: now increases your total agility by an additional 1/2/3%. 
- Mage: Updated Buff: Mage Armor: Now grants 50% of mana regeneration while casting. 
- Mage: Updated Talent: Arcane Meditation: Now grants 17/33/50% of mana regeneration while casting. 
- Mage: Updated Talent: Pyromaniac: Now grants 17/33/50% of mana regeneration while casting. 
- Mage: Molten Armor: 35% Spirit -> Spell Crit Rating
- Paladin: Updated Talent: Sacred Duty now increases stamina by 4/8%. 
- Priest: Added Talent: Improved Power Word: Fortitude: Now also increases your total stamina by 2/4%. 
- Priest: Updated Talent: Meditation: Now grants 17/33/50% of mana regeneration while casting. 
- Shaman: Updated Talent: Toughness: No longer increases your armor. Instead, this talent now increases your total stamina by 2/4/6/8/10%. 

1.4.3
- Now uses Ace3
- Partial support for 3.0.8 bonus armor changes
- Stat Breakdown: Fixed Parry from Strength not showing when values are < 0.5%
- Rogue: Added Talent: Endurance
- Rogue: Added Talent: Savage Combat
- Mage: Added Talent: Pyromaniac now gives mana regen
- Shaman: Fixed Talent: Unrelenting Storm is now 3 ranks
- Changed base stat mods to compute multiplicatively 
- Updated localizations

1.4.2
- Chance to be missed diminishing returns now supported
- Rating conversion and StatSummary sum now supports avoidance diminishing returns too
- Clear cache after profile switch
- Shield Mastery and Redoubt now affect block value from strength
- StatSummary: Put Health with Stamina, Mana with Intellect
- Mage: Added Buff: Mage Armor
- Mage: Added Glyph: Glyph of Mage Armor
- Death Knight: Added Glyph: Glyph of Unbreakable Armor
- Warrior: Will compare 2H weapons with MH and OH instead of MH+OH if player has Titan Grip
- Warrior: Fixed Talents: Vitality, Strength of Arms
- Tauren: Removed Endurance
- 3.0.8: Druid: Updated Talent: Survival of the Fittest: This talent now grants 22/44/66% bonus armor in Bear Form and Dire Bear Form in addition to all of its previous effects.
- Support for Argent Crusade head enchant (+37 sta / +20 defense rating)
- Support for direct Defense gains which isn't affected by DR (Rune of the Stoneskin Gargoyle)
- Support for meta gem statmods:
- Austere Earthsiege Diamond: 2% Increased Armor Value from Items
- Beaming Earthsiege Diamond: +2% Mana
- MetaGem: Eternal Earthsiege Diamond: +5% Shield Block Value
- MetaGem: Eternal Earthstorm Diamond: +5% Shield Block Value
- MetaGem: Ember Skyfire Diamond: +2% Intellect
- MetaGem: Ember Skyflare Diamond: +2% Intellect
- Support for enchant statmods:
- Enchant: Rune of the Stoneskin Gargoyle: +2% Stamina
- enUS: Fixed +2% Intellect parsed as +2 Intellect on Ember meta gems
- Use LibStatLogic-1.1 and LibTipHooker-1.1
- Updated localizations: Russian, Spanish, Taiwan, China, French, German, Korean
- Code cleanup

1.4.1
- Increase /rb level option max value to 83
- Avoidance diminishing returns support for /rb sum avoidance
- Support for "+x to All Stats", "+x Armor Penetration Rating", "+x Expertise Rating" Gems
- Fixed: Error when Druids enable Show Ranged Attack Power in StatSummary
- Warlock: Fixed Buff: Fel Armor - 30% spell power from spirit wasn't being detected
- Priest: Removed Talent: Focused Power
- Hunter: Removed Talent: Master Marksman - No longer increases RAP
- Shaman: Updated Talent: Mental Quickness - Moved to 2,21
- Paladin: Added Talent: Redoubt - Increases your block value by 10%/20%/30%
- Death Knight BaseDodge changed from 0.758% to 3.4636%.
- Updated localizations: Taiwan, French, Russian, German, Korean

1.4.0
- Updated toc to 30000, this versions is compatible with both TBC and WotLK
- Fixed: when removing gems it will continue to show the gem text in empty sockets
- Added Russian localizations by Orsana
- Updated localizations: Korean, French, German
- Minor bug fixes
- **WotLK Support**
- WotLK support with version checking, up to date with build 9061
- Formulas updated for Death Knights and level 80
- Support for Spell Power stat
- Support for Armor Penetration Rating
- Avoidance diminishing returns implemented for StatSummary Dodge% and Parry% diff values, because I think thats where its most needed and makes most sense.
- (Dodge% and Parry% in Rating/Stat conversion and StatSummary totals are before dminishing returns)
- Option to show physical hit, spell hit or both from hit rating(crit and haste are the same for physical and spell)
- StatSummery: Added Ranged Hit Chance, Ranged Hit Rating, Ranged Haste, Ranged Haste Rating, Ranged Crit Chance, and Ranged Crit Rating
- StatSummery: Hit Rating, Critical Strike Rating, and Haste Rating now modify both melee attacks and spells.

- Support for WotLK talent and buff stat mods, detailed change log for each class:
Warrior
- Added Talent: Armored to the Teeth: 1/2/3 for every 180 armor
- Added Talent: Strength of Arms: Increases Strength and Stamina by 2%/4%.
- Added Buff(TBC): Last Stand: +30% of your maximum health
- Updated Talent: Vitality: Increases your total Strength and Stamina by 2%/4%/6%
- Updated Talent: Shield Mastery: 10%/20%/30% -> 15%/30%

Warlock
- Added options: Show Spell Damage from Spirit (Fel Armor)
- Added options: Show Healing from Spirit (Fel Armor)
- Added Talent: Demonic Aegis: Increases the effectiveness of your Demon Armor and Fel Armor spells by 10%/20%/30%.
- Added Talent: Fel Synergy: Your Summoned Demons share an additional 5%/10% of your Armor, Intellect and Stamina
- Added Talent: Fel Vitality: Increases your maximum health and mana by 1%/2%/3%.
- Added Buff: Fel Armor: Increases spell power equal to 30% of your Spirit.
- Added Buff: Demonic Pact: Your pet's criticals apply the Demonic Pact effect to your party or raid members. Demonic Pact increases spell power by 2%/4%/6%/8%/10% of your Spell Damage for 12 sec.
- Added Buff: Metamorphosis: You gain Demon Form, increasing your armor by 360%.
- Removed Talent: Fel Stamina
- Removed Talent: Fel Intellect
- Updated Talent: Demonic Embrace: No longer reduces spirit. Stamina 3%/6%/9%/12%/15% -> 2%/4%/6%/8%/10%

Shaman
- Added options: Show Attack Power from Intellect (Mental Dexterity)
- Updated Formula: 1 AP from 1 Agi, 1AP from 1 Str
- Added Talent: Mental Dexterity: Increases your Attack Power by 33%/66%/100% of your Intellect.
- Added Buff: Astral Shift: When stunned, feared or silenced you shift into the Astral Plane reducing all damage taken by 30%
- Added Buff: Unleashed Rage: Melee attack power increased by 10%.
- Removed Talent: Shield Specialization
- Updated Talent: Nature's Blessing: spell damage and healing -> healing, 10%/20%/30% -> 5%/10%/15%
- Updated Talent: Anticipation: 1%/2%/3%/4%/5% -> 1%/2%/3%
- Updated Talent: Ancestral Knowledge: maximum Mana -> intellect. 1%/2%/3%/4%/5% -> 2%/4%/6%/8%/10%.

Rogue
- Removed Talent: Vitality

Priest
- Added Talent: Focused Power: Increases your total spell damage and healing done by 2%/4%.
- Added Talent: Twisted Faith: Increases your spell power by 2%/4%/6%/8%/10% of your total Spirit
- Updated Talent: Improved Divine Spirit: No longer increases spell power by spirit
- Updated Talent: Mental Strength: Increases your maximum Mana -> total Intellect
- Updated Talent: Enlightenment: Stamina, Intellect and Spirit -> Stamina, Spirit and Spell Haste

Paladin
- Added options: Show Spell Damage from Stamina (Touched by the Light)
- Added options: Show Healing from Stamina (Touched by the Light)
- Added options: Show Spell Damage from Strength (Sheath of Light)
- Added options: Show Healing from Strength (Sheath of Light)
- Added Talent: Touched by the Light: Increases your spell power by an amount equal to 10%/20%/30% of your Stamina
- Added Talent: Sheath of Light: Increases your spell power by an amount equal to 10%/20%/30% of your attack power
- Updated Talent: Holy Guidance: 35% -> 20%
- Updated Talent: Divine Strength: Increases your total Strength by 3%/6%/9%/12%/15%
- Updated Talent: Combat Expertise: Changed to 3 ranks
- Removed Talent: Shield Specialization

Mage
- Added Talent: Student of the Mind: Increases your total Spirit by 4%/7%/10%.
- Added Talent(WotLK & TBC): Arcane Instability: Increases your spell damage and critical strike chance by 1%/2%/3%.
- Updated Talent: Arcane Fortitude: Increases your armor by an amount equal to 50%/100%/150% of your Intellect.
- Updated Talent: Mind Mastery: Increases spell damage by up to 3%/6%/9%/12%/15% of your total Intellect.

Hunter
- Added options: Show Spell Damage from Stamina
- Added options: Show Attack Power from Stamina (Hunter vs. Wild)
- Added Talent: Hunter vs. Wild: Increases you and your pet's attack power and ranged attack power equal to 10%/20%/30% of your total Stamina.
- Updated Buff: Aspect of the Viper: no longer gives MP5 from Int
- Updated Talent: Careful Aim: now adds 33%/66%/100% RAP from Int
- Updated Talent: Survivalist: Increases your Stamina by 2%/4%/6%/8%/10%.
- Updated Talent: Combat Experience: Increases your total Agility and Intellect by 2%/4%.
- Updated Talent: Survival Instincts - No longer increases AP

DeathKnight
- Added options: Show Parry from Strength (Forceful Deflection)
- Added Pasive: Forceful Deflection: Increases your Parry Rating by 25% of your total Strength.
- Added Talent: Bladed Armor: 1/2/3/4/5 AP every 180 Armor.
- Added Talent: Veteran of the Third War: Increases your total Strength by 2%/4%/6% and your total Stamina by 1%/2%/3%.
- Added Talent: Will of the Necropolis: When you have less than 35% health, your total armor increases by 10%/20%/30%.
- Added Talent: Toughness: Increases your armor value from items by 3%/6%/9%/12%/15%
- Added Talent: Ravenous Dead: Increases the total Strength of you by 1%/2%/3%
- Added Talent: Shadow of Death: Increases your total Strength and Stamina by 2%.
- Added Talent: Abomination's Might: Increases your total Strength by 1%/2%.
- Added Buff: Abominable Might: Attack power increased by 10%.
- Added Buff: Unbreakable Armor: Increases your armor by 25%, your total Strength by 10%.
- Added Buff: Frost Presence: Increases armor by 60%, health by 10%

Druid
- Added options: Show Spell Damage from Spirit (Improved Moonkin Form)
- Added options: Show Healing from Spirit (Improved Tree of Life)
- Added Talent: Predatory Strikes: Increases 20% of any attack power on your equipped weapon.
- Added Talent: Furor: Increases your total Intellect while in Moonkin form by 2%/4%/6%/8%/10%.
- Added Talent: Improved Tree of Life: Increases your Armor while in Tree of Life Form by 33%/66%/100%, increases healing by 5%/10%/15% of spirit.
- Added Talent: Protector of the Pack: Increases your attack power in Bear Form and Dire Bear Form by 2%/4%/6%.
- Added Buff: Survival Instincts: +30% of your maximum health
- Updated Talent: Lunar Guidance: 8%/16%/25% -> 4%/8%/12%
- Updated Talent: Nurturing Instinct: 50%/100% -> 35%/70% of your Agility
- Updated Talent: Survival of the Fittest: 1%/2%/3% -> 2%/4%/6%
- Updated Buff: Dire Bear Form, Moonkin Form: Armor +400% -> +370%
- Master Shapeshifter doesn't affect char window stats

1.3.8
- NEW: Support for negative stats
- Update for 2.4.3: Parry Rating, Defense Rating, and Block Rating: Low-level players will now convert these ratings into their corresponding defensive stats at the same rate as level 34 players
- Fixed: Better JewelTips support
- Fixed: Druid - Nurturing Instinct (Str->Agi)
- Fixed: Mage - Arcane Fortitude (50% -> 100% Armor from Int)
- Optimized library usage
- Updated localizations 

1.3.7a
- Fixed: Loading error

1.3.7
- Changed: Will only show stat breakdown options your class can use
- Changed: Class specific stat breakdown options will show the talents required
- Added: Stat breakdown support for Mental Quickness (Shaman)
- Fixed: Support for new Demonic Knowledge(Warlock) and Nurturing Instinct(Druid)
- Fixed: Library errors

1.3.6
- Updated toc to 20400
- Fixed: Able to clear default gem settings
- Fixed: Deadly Fire Opal now shows rating conversion

1.3.5
- NEW: Default gems for empty sockets! Set the gems to use for each socket using /rb sum gem
- In 2.4.0: Spirit-Based Mana Regeneration: This system has been adjusted so that as your intellect rises, you will regenerate more mana per point of spirit.
- Fixed: Will now work with [Insightful Earthstorm Diamond]
- Fixed: Profiles should now work
- Changed: Use "/rb win" to open the options window instead of "/rb optionswin"

1.3.1
- Fixed: Spell Haste summary works now
- Fixed: Doesn't match percentages anymore (ex: Increases healing by up to 10% of your total Intellect)
- Fixed: Error when sorting StatSummary alphabetically
- Updated localizations: Taiwan, French, China, German, Spanish

1.3.0
- Updated: TOC to 20300
- Updated localizations: Taiwan, Korean, China, German
- Fixed: Socketed gem stat text color after percentage conversion is no longer yellow
- Fixed: "+X healing and +X spell damage" type gems and enchants now gives correct healing summary
- NEW: Categorized StatSummery Options in to Basic, Physical damage, Spell damage and healing, Tank
- NEW: StatSummary is sorted(basic, physical damage, spell damage and healing, tank in that order)
- NEW: Option to sort StatSummary alphabetically instead of the above
- NEW: Option to include block chance in Avoidance summary
- StatSummary Added:
  Resilience
  Haste
  Haste Rating
  Spell Haste
  Spell Haste Rating
  Penetration
  IgnoreArmor
  HitRating
  CritRating
  SpellHitRating
  SpellCritRating
  DodgeRating
  ParryRating
  BlockRating

1.2.8
- Fixed: +X Spell Power gives healing too
- In 2.3.0: Support for Spell Damage bonus in +Healing stats

1.2.7
- NEW: Option to Show detail text for Resilience and Expertise conversions
- NEW: Option to Show Avoidance Summary <- Dodge, Parry, MobMiss
- NEW: TankPoints support, if you have TankPoints loaded you get 2 new summary options: TankPoints and Total Reduction
- In 2.3.0: Added Expertise stat support
- In 2.3.0: Heart of the Wild (Druid Feral Combat talent) provides 2/4/6/8/10% bonus attack power in Cat form instead
- In 2.3.0: Intensity (Druid Restoration talent) increased to 10/20/30% mana regeneration
- In 2.3.0: Arcane Meditation (Mage Arcane talent) increased to 10/20/30% mana regeneration
- In 2.3.0: Meditation (Priest Discipline talent) increased to 10/20/30% mana regeneration
- In 2.3.0: Weapon Expertise (Paladin Protection talent) renamed Combat Expertise, now increases expertise by 1/2/3/4/5 and total Stamina by 2/4/6/8/10%
- In 2.3.0: Mental Quickness (Shaman Enhancement talent) now also increases spell damage and healing equal to 10/20/30% of your attack power
- All 2.3.0 Changes will only take affect when using a 2.3.0 client.
- Updated: German localization

1.2.6
- Fixed: Ranged AP Calculations

1.2.5
- Updated: toc to 20200
- Fixed: Haste rating change in 2.2.0
- Fixed: Hunter Survival Instincts talent support
- Fixed: Armor multiplier no longer apply to Armor from enchants
- NEW: Added China localization by iceburn(candykiss)
- Updated: Taiwan localization
- Updated: Korean localization by fenlis
- Updated: German localization by Dleh
- Code optimizations
- Updated: Libs

1.2.4
- Fixed: Error when difftype is set to comp
- Made Waterfall-1.0 optional

1.2.3
- NEW: You can now open the options window using /rb optionswin
- Updated Taiwan localization
- Updated Korean localizations by fenlis

1.2.2
- New option to hide the StatSummary title
- New option to hide the sigma icon in the StatSummary title
- New option to add a empty line after the StatSummary
- Updated Taiwan localization
- Other localizations needs to be updated

1.2.1
- Updated Taiwan localization
- Improved stat scanning
- Updated German localization

1.2.0
- Updated French localization by Tixu and Silaor, now supports StatSummary
- Fixed a bug causing StatSummary not showing correctly for languages other then English
- Fixed Parry/SpellHaste rating conversions
- Updated libs

1.1.9
- Pre updated the TOC to 2.1.0
- Improved the Sigma icon
- Updated readme file

1.1.8
- StatSummary: "Mana Regen while Not casting" now shows the correct value
- StatSummary: "Health Regen while Out of Combat" now shows the correct value
- StatSummary: fixed lines with "and" counting stats twice
- Added support for Gnome +5% Intellect Racial
- Added support for Human +10% Spirit Racial
- Fixed StatLogic line 6285 strfind error (thanks to everyone that helped)
- Updated Korean localizations by fenlis

1.1.7
- Minor bug fixes
- Updated Taiwan localizations by mcc
- Updated Korean localizations by fenlis
- Updated French localizations by renchap

1.1.6
- Stat Summary now has the option to show resistances
- Fixed Feral Attack Power name
- /rb sum ignore unused now shows leather for hunters
- Fixed an error when mousing over items that goes into a slot you currently have no equipment in when you have the ignore enchant or gem option on

1.1.5
- Fixed MP5NC, HP5OC summary
- Changed default diff style from comp to main, since not everyone uses a compare addon
- Attempt to fix some more funny bugs

1.1.4
- Option to display Weapon Max Damage in summary
- Improved option for ignoring enchants and gems, they are now 2 different options
- Fixed some classes not showing summary for cloaks
- Fixed incorrect shield diffs
- Improved diff style code should fix funny errors

1.1.3
- Fixed EQCompare, tekKompare support
- Updated Taiwan localizations

1.1.2
- Option to Display diff values in the main tooltip or only in compare tooltips for readability
- Option to Ignore enchants and gems on items when calculating the stat summary
- /rb sum ignore unused now shows all armor types they are use for druids, paladins and shamans
- Updated Taiwan localizations
- Code clean up

1.1.1
- Option to Show stat summary only for highest level armor type and items you can use with uncommon quality and up
- Option to Hide stat summary for equipped items
- Option to Add a blank line before stat summary for readability
- Mage, Warlock, Shaman now shows spellcrit as default summary instead of crit 
- Updated Taiwan localizations
- Minor bug fixes

1.1.0
- NEW: Stat Summary - Display the sum of stats of the item and/or the stat difference of the item and your equipped items
- Choose the stats you really care about to be show in the summary
- Composite stats are broken down and added into base stats, and supports talent/buff mods, Ex: "Spell Crit Chance" is calculated from "Spell Crit Rating" and "Intellect"
- Option descriptions now show class names for class specific stat conversions
- Added support for Aspect of the Viper
- Option to hide rating conversions
- Option to hide all base stat conversions
- Option to further breakdown Defense into Crit Avoidance, Hit Avoidance, Dodge, Parry and Block
- Option to further breakdown Weapon Skills into Crit, Hit, Dodge Neglect, Parry Neglect, Block Neglect
- Fixed Taiwan and French localization errors
- Fixed locale registering twice error
- Fixed mp5 and hp5 calculations for Shaman, Druid, Mage, Warlock
- Agi -> Dodge only works for your current level, for best results turn off /rb usereqlv, and set /rb level 0

1.0.0
- Support for talents and buffs that modify your stats
- Supports the following stat conversions
- Str -> AP, Block, Healing(Talent)
- Agi -> Crit, Dodge, AP, RAP, Armor
- Sta -> Health, SpellDmg(Talent)
- Int -> Mana, SpellCrit, SpellDmg(Talent), Healing(Talent), MP5(Talent), RAP(Talent), Armor(Talent)
- Spi -> MP5(Talent), MP5NC, HP5, SpellDmg(Talent), Healing(Talent)
- If you need a GUI config window for RatingBuster, use Niagara (Download at: http://files.wowace.com/)

0.9.5
- Fixed library error

0.9.4
- Added Taiwan localizations by CuteMiyu

0.9.3
- Updated Korean localization by kcgcom

0.9.2
- Code clean up
- Finally removed Compost

0.9.1a
- Really fixed locales

0.9.1
- Fixed locales
- Added Korean localization by kcgcom

0.9.0
- Optimized parsing algorithm to use fewer resources
- showCritFromAgi and showSpellCritFromInt will now correctly save as per class data
- /rb level will now save
- No longer scans buffs
- Code clean up

0.8.6
- tekKompare support
- Sniff support

0.8.5
- AtlasLoot support
- ItemMagic support
- Fixed line 785 error

0.8.4
- Spell Crit from Intellect defaults off for Hunters too

0.8.3
- Fixed color picker bug
- Updated French localization (Tixu)

0.8.2
- Fixed % signs showing before some periods bug

0.8.1
- Option to enable colored text (/rb color)
- Fixed Defense showing the % sign bug
- Fixed Haste Rating conversion
- Updated French localization (Tixu)

0.8.0
- Option to show Crit from Agility, Ex: "+15 Agility (+0.72% Crit)"
- Option to show Spell Crit from Intellect, Ex: "+23 Intellect (+0.35% Spell Crit)"
- Support for "grant you xx stat" type pattern, ex: Quel'Serrar, Assassination Armor set
- "+14 (1.21%) Rating" type strings changed to "+14 Rating (+1.21%)"
- Recoded tooltip scanner is now more easily extendable and has support for multiple separators for better accuracy.

0.7.6
- The amount of haste granted by a point of haste rating has been increased by 50% (Patch 2.0.7)
- Fixed Mutltitips support
- Minor code tweaks

0.7.5
- Fixed double conversion bug
- Fixed GetItem error
- Support for Hit Avoidance Rating (assuming its the same as melee Hit Rating)

0.7.1
- Fixed a hooking bug

0.7.0
- Now uses the OnTooltipSetItem script handler instead of hooking all the SetX methods,
  this combined with the new Tooltip:GetItem() method should also fix problems where
  RatingBuster doesn't always work, like at the mailbox.

0.6.6
- MultiTips support

0.6.5
- LinkWrangler support

0.6.4
- Updated Libs

0.6.3
- Use Required Level defaults to true
- Support for EQCompare
- Changed toc to 20003 for TBC (It will show up as out-of-date until TBC goes live, enable loading out-of-date to load it)

0.6.2
- Added German localization by Runenstetter@Nathrezim.EU
- Fixed French localization

0.6.1
- Added French localization by Tixu

0.6
- Added option to calculate using the required level if you are below the required level
- Redesigned the tooltip scanner to be more locale friendly, should be easier to do translations now.

0.5.1
- Fixed line 457 error

0.5
- Improved ItemLevel and ItemID algorithm, will now work on most tooltips
- Updated Libs

0.4.3
- Fixed line 499 error
- Temporarily removed ItemLevel and ID support for Bagnon, working on a better implementation

0.4.2
- Fixed a rare error in line 487
- Updated Libs

0.4.1
- Inspect frame support for ItemLevel and ItemID
- Two-Handed skill ratings now works

0.4
- Bagnon support for ItemLevel and ItemID
- Fixed some errors
- Updated libs

0.3.2
- Fixed auction house bug

0.3.1
- Fixed keyring bug

0.3
- Works with enchant links
- Works with keyring items

0.2.1
- Fixed AceConsole error

0.2
- Simplified the localization file for easier localization
- Added keyword "spell crit"
- Added Item Level, Item ID support for profession trainer items
- Set Debugging to false

0.1.1
- Removed AceHook2.1 cause it was causing problems with other Ace2 addons

0.1

## Slash commands in RatingBuster 1.x

The command list from the 1.x README. Some of these commands were renamed or removed later; the README has the current list.

Use: /rabu or /ratingbuster

* **/rabu** : Display command help
* **/rabu standby** : Toggle disable/enable RatingBuster in game, defaults Enable
* **/rabu level (0-83)** : Set the level used in calculations, defaults 0 (0 = your level)
* **/rabu itemlevel** : Toggle show/hide ItemLevel, defaults Show
* **/rabu itemid** : Toggle show/hide ItemID, defaults Hide
* **/rabu usereqlv** : Toggle calculate using the required level if you are below the required level, defaults Off
* **/rabu statmod** : Toggle support for talent and buff mods, defaults On
* **/rabu avoidancedr** : Dodge, Parry, Hit Avoidance values will be calculated using the avoidance deminishing return formula with your current stats, defaults On

* **/rabu rating** : Options for Rating Conversion
* **/rabu rating show** : Toggle show/hide Rating Conversion in tooltips, defaults Show
* **/rabu rating def** : Toggle Defense breakdown, Convert Defense into Crit Avoidance, Hit Avoidance, Dodge, Parry and Block, defaults Off
* **/rabu rating wpn** : Toggle Weapon Skill breakdown, Convert Weapon Skill into Crit, Hit, Dodge Neglect, Parry Neglect and Block Neglect, defaults Off
* **/rabu rating color enable** : Toggle enable/disable colored text, defaults On
* **/rabu rating color pick** : Choose a color for the added text, defaults Light Yellow
* **/rabu rating spell** : Show Spell Hit from Hit Rating
* **/rabu rating physical** : Show Physical Hit from Hit Rating
* **/rabu rating detail** : Show detailed text for Resiliance and Expertise conversions
* **/rabu rating exp** : Convert Expertise into Dodge Neglect and Parry Neglect

* **/rabu stat** : Options for Stat Breakdown
* **/rabu stat show** : Toggle show/hide Stat Breakdown in tooltips, defaults Show
* **/rabu stat str** : Options for Strength breakdown -> AP, Block, Healing(Talent)
* **/rabu stat agi** : Options for Agility breakdown -> Crit, Dodge, AP, RAP, Armor
* **/rabu stat sta** : Options for Stamina breakdown -> Health, SpellDmg(Talent)
* **/rabu stat int** : Options for Intellect breakdown -> Mana, SpellCrit, SpellDmg(Talent), Healing(Talent), MP5(Talent), RAP(Talent), Armor(Talent)
* **/rabu stat spi** : Options for Spirit breakdown -> MP5(Talent), MP5NC, HP5, SpellDmg(Talent), Healing(Talent)

* **/rabu sum** : Options for Stat Summary
* **/rabu sum show** : Toggle show/hide Stat Summary in tooltips, defaults Show
* **/rabu sum ignore unused** : Show stat summary only for armor types you will and can use, and on items with uncommon quality and up, defaults On
* **/rabu sum ignore equipped** : Hide stat summary for equipped items, defaults Off
* **/rabu sum ignore enchant** : Ignore enchants on items when calculating the stat summary, defaults Off
* **/rabu sum ignore gem** : Ignore gems on items when calculating the stat summary, defaults Off
* **/rabu sum diffstyle** : Display diff values in the main tooltip or only in compare tooltips, defaults Main
* **/rabu sum space before** : Add a blank line before stat summary for readability, defaults On
* **/rabu sum space after** : Add a blank line after stat summary, defaults Off
* **/rabu sum icon** : Show the sigma icon before summary listing, defaults On
* **/rabu sum title** : Show the title text before summary listing, defaults On
* **/rabu sum showzerostat** : Show zero value stats in summary for consistency, defaults Off
* **/rabu sum calcsum** : Calculate the total stats for the item, defaults On
* **/rabu sum calcdiff** : Calculate the stat difference for the item and equipped items, defaults On
* **/rabu sum sort** : Enable to sort StatSummary alphabetically, disable to sort according to stat type(basic, physical, spell, tank)
* **/rabu sum avoidhasblock** : Enable to include block chance in Avoidance summary, Disable for only dodge, parry, miss
* **/rabu sum basic** : Choose basic stats for summary
* **/rabu sum physical** : Choose physical stats for summary
* **/rabu sum spell** : Choose spell stats for summary
* **/rabu sum tank** : Choose tank stats for summary
* **/rabu sum gem** : Auto fill gems in empty sockets

## TODO list from the old README

Readme:
Combat rating needed for 1 point of stat: parry needs to be updated

Long term:
- Support for sets
- Option: Hide default stats
- Option: Show only in city
- Support for "+2% Spirit" type

- Modifier keys for showing Rating, StatSummary
- Second set of defualt gems that can be switched with modifier keys

There is no good way(afaik) to detect prismatic sockets, you would have to:
1. Parse the Link and remember how many gems are in this item.
2. Create a clean link with no gems and see how many sockets are in this item.
3. If the current item has more gems then sockets then it has a prismatic gem.
4. Check if player has Blacksmith and what if the player is high enough to add sockets.

Doing:

Note:
"Intelligently compare Crit Immunity in the StatSummary?" 
[ ] Tick Box. 
Ticked -- Tooltip: StatSummary will now show '% to be critted' comparisons while AWARE of your opponent's level as defined below. 
Unticked (Default) -- Tooltip: StatSummary will now show '% to be critted' comparisons while UNAWARE of your opponent's level. 
[ ] Number Field. 
Illuminates when Ticked and Dims when Unticked (Default value, but Dimmed, is 73) -- Tooltip: Type the opponent's level you'd like StatSummary to stop comparing 'crit immunity' for. 

-- Failed --
Try to fix mana oil enchants: was unable to find a way to scan the oil text

-- Transition to 3.0.2
if select(2, GetBuildInfo()) >= "9061" then
