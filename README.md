# RatingBuster - A tool for item comparison

Item stat breakdown, analysis and comparison

# About RatingBuster

RatingBuster started out as an addon that converts combat ratings in your tooltips into percentages, so that you have more meaningful information when comparing different items.

The design aim of RatingBuster is to provide detailed, meaningful and customizable information about items so you can easily decide for yourself which item is better.

# Support Modules

- RatingBuster_AlwaysBuffed: http://wow.curse.com/downloads/wow-addons/details/ratingbuster-alwaysbuffed.aspx
  This addon enables RatingBuster to calculate selected buff effects even if you don't really have them.

# Features

- Rating Conversion:
  Converts combat ratings into percentages.

- Stat Breakdown:
  Breakdown Strength, Agility, Stamina, Intellect and Spirit into base stats.
  Supports talents, buffs and racials that give you extra bonuses.
  Ex talent: Lunar Guidance - "Increases your spell damage and healing by 8%/16%/25% of your total Intellect."
  Ex talent: Heart of the Wild - "Increases your Intellect by 4%/8%/12%/16%/20%. In addition, ......etc"
  Ex: +13 Intellect (+234 Mana, +0.18% Spell Crit, +3.9 Dmg)

- Stat Summary:
  Summarizes all the stats from the item itself, enchants and gems, converts them to base stats and displays the total value and/or difference from your current equipped item.
  Ex: Crit Chance - Adds up agility and crit rating from the item, enchant and gem. Converts agility and crit rating to crit chance, and displays the total in a single value.

- Item Level and Item ID:
  Item Level is obtained from the WoW API, not a calculated value.
  Item ID is useful for advanced users.

- Supports talents, buffs and racials that modify your stats for all classes.

- Fully customizable, decide what you need to see and what you don't want.

# Auto fill gems in empty sockets

1. You can set the default gems for each type of empty socket using "/rabu sum gem <red|yellow|blue|meta> <ItemID|Link>" or using the options window.
2. To specify the gem of your choice, you will need to give RatingBuster the ItemLink or the ItemID of the gem.
3. ItemLink example: type "/rabu sum gem blue " (last char is a space) and link the gem (from your bags, AH, ItemSync or whatever), then press <enter>.
4. What if you can't link the gem? Well thats what ItemID is for. Find your gem on http://www.wowhead.com/ and look at the URL,
   for example "http://www.wowhead.com/?item=32193", 32193 is the ItemID for that gem.
   Go back in wow, type "/rabu sum gem red 32193" and press <enter>.

Note1: If you have "/rabu sum ignore gem" on, the auto fill gems won't work.
Note2: Meta gem conditions and SetBonuses work, so if you don't meet the conditions, StatSummary won't count them.
Note3: RatingBuster will only auto fill empty sockets, if the item already has some gems on it, it will remain.
Note4: Empty sockets filled by RatingBuster will keep the "Empty Socket Icon" so you can still easily tell what color socket it is.
Note5: Gem text filled by RatingBuster will be shown in gray color to differentiate from real gems.


# Supported Addons

EquipCompare, EQCompare, tekKompare,
LinkWrangler, MultiTips, Links,
AtlasLoot, ItemMagic, Sniff,
LinkHeaven, Mirror, TooltipExchange, AtlasQuest.

Also works with all bag mods!


# GUI Options Window

Type /rabu win


# Slash Commands

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


# Avoidance diminishing returns

This includes:
1. Dodge from Dodge Rating, Defense Rating, Agility.
2. Parry from Parry Rating, Defense Rating.
3. Chance to be missed from Defense Rating.

The following is the result of hours of work gathering data from beta servers and then spending even more time running multiple regression analysis on the data.
1. DR for Dodge, Parry, Missed are calculated separately.
2. Base avoidances are not affected by DR, (Ex: Dodge from base Agility)
3. Death Knight's Parry from base Strength is affected by DR, base for parry is 5%.
4. Direct percentage gains from talents and spells(ex: Evasion) are not affected by DR.
5. c and k values depend on class but does not change with level.

   Avoidance DR formula and k, C_p, C_d constants derived by Whitetooth (hotdogee [at] gmail [dot] com)
6. The DR formula: `1 / x' = 1 / c + k / x`
   * `x'` is the diminished stat before converting to IEEE754.
   * `x` is the stat before diminishing returns.
   * `c` is the cap of the stat, and changes with class.
   * `k` is is a value that changes with class.
```
             k       C_p      1/C_p      C_d      1/C_d    C_m
Warrior     0.9560  47.003525 0.021275  88.129021 0.011347 16
Paladin     0.9560  47.003525 0.021275  88.129021 0.011347 16
Hunter      0.9880 145.560408 0.006870 145.560408 0.006870
Rogue       0.9880 145.560408 0.006870 145.560408 0.006870
Priest      0.9830   0        0        150.375940 0.006650
Deathknight 0.9560  47.003525 0.021275  88.129021 0.011347 16
Shaman      0.9880 145.560408 0.006870 145.560408 0.006870
Mage        0.9830   0        0        150.375940 0.006650
Warlock     0.9830   0        0        150.375940 0.006650
Druid       0.9720   0        0        116.890707 0.008555
```
```
            Lv80 Dodge/Agi Lv80 Agi/1%Dodge Base Agi
Warrior       0.011800       84.74576271    3.66400
Paladin       0.016700       59.88023952    3.49430
Hunter        0.011600       86.20689655   -4.08730
Rogue         0.020900       47.84688995    2.09570
Priest        0.016700       59.88023952    3.41780
Deathknight   0.011800       84.74576271    3.66400
Shaman        0.016700       59.88023952    2.10800
Mage          0.017000       58.82352941    3.65870
Warlock       0.016700       59.88023952    2.42110
Druid         0.020900       47.84688995    5.60970
```

# How I derived the Rating Formula

As soon as I saw the blue post on combat ratings system, I began to think about coding this addon.
But Blizzard only gave us level 60 and 70 data about this system, and for an addon like this to work you need exact formula that will work for all levels.
So I need to reverse engineer the Combat Rating formula, and the process of obtaining this formula can be broken up into two simple steps.

1. Get more data
In order to obtain the exact formula, I will need more data points then just level 60 and 70. So I logged on and started asking random people about their crit% and crit ratings show in the Character frame, the problem was the crit% shown only has 2 two decimal places, which turned out to be insufficient for this matter.

So I started to dig in the DefaultUI lua files in search for a new API that will give a more precise crit% and I came up with this script `/script DEFAULT_CHAT_FRAME:AddMessage(GetCombatRatingBonus(9))`.

Now I need to log on again and ask random people to type that script and tell me that 13 decimal place crit% that it shows. This was not an easy task, as most people are unfamiliar with lua script, there are even people that immediately put me on ignore after I sent him this script lol.

After hours of work, this is what I got:
```
A   B    C      D               E               F   G           H
Lv  Type Rating Percentage      =C/D         60base =E/F        =1/G
19  crit    2   0.6753247631    2.9615380764    14  0.211538434 4.727273342
21  crit    2   0.5714285714    3.5000000000    14  0.25        4
22  crit    2   0.5306122010    3.7692310810    14  0.269230792 3.714285407
28  crit    2   0.3714286018    5.3846149445    14  0.384615353 2.6
29  crit    2   0.3537415195    5.6538457870    14  0.403846128 2.476190637
36  crit    14  1.8557142035    7.5442651532    14  0.538876082 1.855714204
48  crit    14  1.2999998760    10.7692317963   14  0.769230843 1.3
50  crit    14  1.2380952140    11.3076925278   14  0.807692323 1.238095214
60  crit    112 8.0000000000    14.0000000000   14  1           1
61  crit    56  3.8536582293    14.5316467285   14  1.037974766 0.963414557
62  hit     50  4.6341464061    10.7894735336   10  1.078947353 0.926829281
62  crit    56  3.7073167036    15.1052646637   14  1.078947476 0.926829176
63  crit    31  1.9712541049    15.7260293961   14  1.123287814 0.890243789
64  crit    17  1.0365853900    16.3999996185   14  1.171428544 0.853658556
65  crit    56  3.2682925906    17.1343288422   14  1.223880632 0.817073148
66  crit    168 9.3658536585    17.9375000000   14  1.28125     0.780487805
66  sp_hit  48  4.6829268293    10.2500000000   8   1.28125     0.780487805
67  crit    78  4.1445989933    18.8196735382   14  1.344262396 0.743902383
67  crit    76  4.0383272242    18.8196735382   14  1.344262396 0.743902383
```

2. Think very hard
After some creative thinking, this is what I got:
```
Percentage = Rating / F * H
Lv 8 to 60: 1/H = 1/52 * Level - 8/52
Lv 60 to 70: H = -3/82 * Level + 131/41
Lv 70 to 80: H = 82/52 * (131/63)^((Level - 70) / 10)
```
```
                    F=
Expertise           2.5
Defense             1.5
Dodge              13.8
Parry              13.8
Block               5.0
Hit                10.0
Crit               14.0
Haste              10.0
Spell Hit           8.0
Spell Crit         14.0
Spell Haste        10.0
Resilience         28.75
Armor Penetration  3.756097412
```
This formula is correct to the 13th decimal place, so I'm 100% sure this is what blizzard uses.


# Stat Conversion Data for Reference
(Patch 3.2.0 Data)
```
            Combat rating needed for 1 point of stat   
   Expt Def  Dodge Parry Block M-Hit S-Hit  Crit Resil Haste  ArP
1  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
2  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
3  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
4  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
5  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
6  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
7  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
8  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
9  0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
10 0.10 0.75  6.90  6.90  2.50  0.38  0.31  0.54 14.38  0.38  0.14  
11 0.14 0.75  6.90  6.90  2.50  0.58  0.46  0.81 14.38  0.58  0.22  
12 0.19 0.75  6.90  6.90  2.50  0.77  0.62  1.08 14.38  0.77  0.29  
13 0.24 0.75  6.90  6.90  2.50  0.96  0.77  1.35 14.38  0.96  0.36  
14 0.29 0.75  6.90  6.90  2.50  1.15  0.92  1.62 14.38  1.15  0.43  
15 0.34 0.75  6.90  6.90  2.50  1.35  1.08  1.88 14.38  1.35  0.51  
16 0.38 0.75  6.90  6.90  2.50  1.54  1.23  2.15 14.38  1.54  0.58  
17 0.43 0.75  6.90  6.90  2.50  1.73  1.38  2.42 14.38  1.73  0.65  
18 0.48 0.75  6.90  6.90  2.50  1.92  1.54  2.69 14.38  1.92  0.72  
19 0.53 0.75  6.90  6.90  2.50  2.12  1.69  2.96 14.38  2.12  0.79  
20 0.58 0.75  6.90  6.90  2.50  2.31  1.85  3.23 14.38  2.31  0.87  
21 0.63 0.75  6.90  6.90  2.50  2.50  2.00  3.50 14.38  2.50  0.94  
22 0.67 0.75  6.90  6.90  2.50  2.69  2.15  3.77 14.38  2.69  1.01  
23 0.72 0.75  6.90  6.90  2.50  2.88  2.31  4.04 14.38  2.88  1.08  
24 0.77 0.75  6.90  6.90  2.50  3.08  2.46  4.31 14.38  3.08  1.16  
25 0.82 0.75  6.90  6.90  2.50  3.27  2.62  4.58 14.38  3.27  1.23  
26 0.87 0.75  6.90  6.90  2.50  3.46  2.77  4.85 14.38  3.46  1.30  
27 0.91 0.75  6.90  6.90  2.50  3.65  2.92  5.12 14.38  3.65  1.37  
28 0.96 0.75  6.90  6.90  2.50  3.85  3.08  5.38 14.38  3.85  1.44  
29 1.01 0.75  6.90  6.90  2.50  4.04  3.23  5.65 14.38  4.04  1.52  
30 1.06 0.75  6.90  6.90  2.50  4.23  3.38  5.92 14.38  4.23  1.59  
31 1.11 0.75  6.90  6.90  2.50  4.42  3.54  6.19 14.38  4.42  1.66  
32 1.15 0.75  6.90  6.90  2.50  4.62  3.69  6.46 14.38  4.62  1.73  
33 1.20 0.75  6.90  6.90  2.50  4.81  3.85  6.73 14.38  4.81  1.81  
34 1.25 0.75  6.90  6.90  2.50  5.00  4.00  7.00 14.38  5.00  1.88  
35 1.30 0.78  7.17  7.17  2.60  5.19  4.15  7.27 14.93  5.19  1.95  
36 1.35 0.81  7.43  7.43  2.69  5.38  4.31  7.54 15.48  5.38  2.02  
37 1.39 0.84  7.70  7.70  2.79  5.58  4.46  7.81 16.03  5.58  2.09  
38 1.44 0.87  7.96  7.96  2.88  5.77  4.62  8.08 16.59  5.77  2.17  
39 1.49 0.89  8.23  8.23  2.98  5.96  4.77  8.35 17.14  5.96  2.24  
40 1.54 0.92  8.49  8.49  3.08  6.15  4.92  8.62 17.69  6.15  2.31  
41 1.59 0.95  8.76  8.76  3.17  6.35  5.08  8.88 18.25  6.35  2.38  
42 1.63 0.98  9.02  9.02  3.27  6.54  5.23  9.15 18.80  6.54  2.46  
43 1.68 1.01  9.29  9.29  3.37  6.73  5.38  9.42 19.35  6.73  2.53  
44 1.73 1.04  9.55  9.55  3.46  6.92  5.54  9.69 19.90  6.92  2.60  
45 1.78 1.07  9.82  9.82  3.56  7.12  5.69  9.96 20.46  7.12  2.67  
46 1.83 1.10 10.08 10.08  3.65  7.31  5.85 10.23 21.01  7.31  2.74  
47 1.88 1.13 10.35 10.35  3.75  7.50  6.00 10.50 21.56  7.50  2.82  
48 1.92 1.15 10.62 10.62  3.85  7.69  6.15 10.77 22.12  7.69  2.89  
49 1.97 1.18 10.88 10.88  3.94  7.88  6.31 11.04 22.67  7.88  2.96  
50 2.02 1.21 11.15 11.15  4.04  8.08  6.46 11.31 23.22  8.08  3.03  
51 2.07 1.24 11.41 11.41  4.13  8.27  6.62 11.58 23.77  8.27  3.11  
52 2.12 1.27 11.68 11.68  4.23  8.46  6.77 11.85 24.33  8.46  3.18  
53 2.16 1.30 11.94 11.94  4.33  8.65  6.92 12.12 24.88  8.65  3.25  
54 2.21 1.33 12.21 12.21  4.42  8.85  7.08 12.38 25.43  8.85  3.32  
55 2.26 1.36 12.47 12.47  4.52  9.04  7.23 12.65 25.99  9.04  3.39  
56 2.31 1.38 12.74 12.74  4.62  9.23  7.38 12.92 26.54  9.23  3.47  
57 2.36 1.41 13.00 13.00  4.71  9.42  7.54 13.19 27.09  9.42  3.54  
58 2.40 1.44 13.27 13.27  4.81  9.62  7.69 13.46 27.64  9.62  3.61  
59 2.45 1.47 13.53 13.53  4.90  9.81  7.85 13.73 28.20  9.81  3.68  
60 2.50 1.50 13.80 13.80  5.00 10.00  8.00 14.00 28.75 10.00  3.76  
61 2.59 1.56 14.32 14.32  5.19 10.38  8.30 14.53 29.84 10.38  3.90  
62 2.70 1.62 14.89 14.89  5.39 10.79  8.63 15.11 31.02 10.79  4.05  
63 2.81 1.68 15.50 15.50  5.62 11.23  8.99 15.73 32.29 11.23  4.22  
64 2.93 1.76 16.17 16.17  5.86 11.71  9.37 16.40 33.68 11.71  4.40  
65 3.06 1.84 16.89 16.89  6.12 12.24  9.79 17.13 35.19 12.24  4.60  
66 3.20 1.92 17.68 17.68  6.41 12.81 10.25 17.94 36.84 12.81  4.81  
67 3.36 2.02 18.55 18.55  6.72 13.44 10.75 18.82 38.65 13.44  5.05  
68 3.53 2.12 19.51 19.51  7.07 14.14 11.31 19.79 40.65 14.14  5.31  
69 3.73 2.24 20.57 20.57  7.45 14.91 11.93 20.87 42.86 14.91  5.60  
70 3.94 2.37 21.76 21.76  7.88 15.77 12.62 22.08 45.34 15.77  5.92  
71 4.24 2.55 23.41 23.41  8.48 16.97 13.57 23.75 48.78 16.97  6.37  
72 4.56 2.74 25.19 25.19  9.13 18.26 14.60 25.56 52.48 18.26  6.86  
73 4.91 2.95 27.11 27.11  9.82 19.64 15.71 27.50 56.47 19.64  7.38  
74 5.28 3.17 29.16 29.16 10.57 21.13 16.91 29.59 60.76 21.13  7.94  
75 5.68 3.41 31.38 31.38 11.37 22.74 18.19 31.83 65.38 22.74  8.54  
76 6.12 3.67 33.76 33.76 12.23 24.47 19.57 34.25 70.34 24.47  9.19  
77 6.58 3.95 36.33 36.33 13.16 26.32 21.06 36.85 75.68 26.32  9.89  
78 7.08 4.25 39.09 39.09 14.16 28.32 22.66 39.65 81.43 28.32 10.64 
79 7.62 4.57 42.06 42.06 15.24 30.48 24.38 42.67 87.62 30.48 11.45 
80 8.20 4.92 45.25 45.25 16.39 32.79 26.23 45.91 94.27 32.79 12.32 
   Expt Def  Dodge Parry Block M-Hit S-Hit  Crit Resil Haste  ArP
```
```
                  Agility needed for 1% Crit
    War   Pal   Hun   Rog   Pri   DK    Sha  Mage  Lock   Dru
1   3.87  4.62  3.52  2.23 10.96  3.87  9.62 12.94  8.41  7.92
2   4.42  4.62  3.53  2.33 10.96  4.42  9.62 12.94  8.41  7.92
3   4.42  4.62  3.69  2.43 10.96  4.42 10.10 12.94  8.83  8.32
4   4.42  5.20  3.95  2.62 11.52  4.42 10.10 13.59  8.83  8.32
5   4.42  5.20  4.12  2.72 11.52  4.42 10.58 13.59  8.83  8.71
6   4.97  5.20  4.28  2.82 11.52  4.97 10.58 13.59  9.25  8.71
7   4.97  5.20  4.44  3.01 11.52  4.97 10.58 13.59  9.25  9.11
8   4.97  5.77  4.61  3.11 12.06  4.97 11.07 13.59  9.25  9.11
9   4.97  5.77  4.88  3.21 12.06  4.97 11.07 13.59  9.67  9.51
10  4.97  5.77  5.04  3.40 12.06  4.97 11.55 14.22  9.67 10.30
11  5.52  5.77  5.41  3.79 12.06  5.52 11.55 14.22 10.09 10.70
12  5.52  5.77  5.99  4.18 12.61  5.52 12.03 14.22 10.09 10.70
13  6.08  6.35  6.46  4.66 12.61  6.08 12.03 14.22 10.09 11.09
14  6.08  6.35  6.94  5.05 12.61  6.08 12.52 14.22 10.43 11.09
15  6.63  6.93  7.52  5.63 12.61  6.63 12.99 14.88 10.59 11.88
16  6.63  6.93  7.89  6.02 13.16  6.63 13.48 14.88 10.78 11.88
17  6.63  6.93  8.38  6.41 13.16  6.63 13.48 14.88 10.94 12.29
18  7.18  7.51  8.95  6.90 13.16  7.18 13.95 14.88 11.12 12.67
19  7.18  7.51  9.43  7.38 13.72  7.18 13.95 14.88 11.30 12.67
20  7.73  8.08 10.02  7.87 13.72  7.73 14.93 15.53 11.48 14.27
21  7.73  8.08 10.40  8.35 13.72  7.73 14.93 15.53 11.67 14.27
22  7.73  8.08 10.99  8.74 13.72  7.73 15.41 15.53 11.85 14.66
23  8.29  8.67 11.47  9.23 14.27  8.29 15.41 15.53 12.03 15.06
24  8.83  9.24 12.06  9.62 14.27  8.83 15.87 16.18 12.22 15.06
25  8.83  9.24 12.55 10.20 14.27  8.83 16.37 16.18 12.42 15.85
26  9.39  9.24 13.04 10.68 14.81  9.39 16.84 16.18 12.63 15.85
27  9.39  9.81 13.62 11.07 14.81  9.39 16.84 16.18 12.82 16.23
28  9.94  9.81 14.10 11.56 14.81  9.94 17.33 16.18 13.02 16.64
29  9.94 10.40 14.71 12.05 15.36  9.94 17.33 16.81 13.23 16.64
30 10.49 10.40 15.29 12.63 15.36 10.49 18.28 16.81 13.42 18.21
31 10.49 10.98 15.70 13.02 15.36 10.49 18.28 16.81 13.64 18.62
32 11.05 10.98 16.29 13.50 15.90 11.05 18.76 16.81 13.85 18.62
33 11.05 11.55 16.89 13.99 15.90 11.05 19.23 17.45 14.06 19.01
34 11.60 11.55 17.39 14.47 15.90 11.60 19.23 17.45 14.29 19.42
35 11.60 12.12 17.99 15.06 16.45 11.60 20.20 17.45 14.49 19.80
36 12.15 12.12 18.48 15.55 16.45 12.15 20.70 18.12 14.73 20.20
37 12.15 12.12 19.08 15.92 16.45 12.15 20.70 18.12 14.95 20.62
38 12.71 12.71 19.69 16.42 17.01 12.71 21.19 18.12 15.17 20.62
39 12.71 12.71 20.28 16.89 17.01 12.71 21.19 18.12 15.41 21.01
40 13.25 13.28 20.79 17.48 17.01 13.25 22.12 18.76 15.65 22.57
41 13.81 13.28 21.28 17.99 17.54 13.81 22.62 18.76 15.87 22.99
42 13.81 13.28 21.88 18.45 17.54 13.81 22.62 18.76 16.13 22.99
43 14.37 13.87 22.52 18.94 18.08 14.37 23.09 18.76 16.37 23.36
44 14.37 14.43 23.09 19.53 18.08 14.37 23.58 19.42 16.61 23.75
45 14.90 14.43 23.75 20.12 18.08 14.90 24.04 19.42 16.86 24.57
46 14.90 15.02 24.21 20.58 18.66 14.90 24.57 19.42 17.12 24.94
47 15.46 15.02 24.88 21.10 18.66 15.46 25.00 20.04 17.36 24.94
48 16.03 15.60 25.58 21.55 19.19 16.03 25.51 20.04 17.64 25.38
49 16.03 15.60 26.18 22.03 19.19 16.03 25.51 20.04 17.89 25.77
50 16.56 16.18 26.81 22.73 19.19 16.56 26.46 20.70 18.15 27.32
51 16.56 16.75 27.32 23.20 19.72 16.56 26.95 20.70 18.42 27.70
52 17.12 16.75 27.93 23.70 19.72 17.12 27.40 20.70 18.69 28.09
53 17.67 17.33 28.57 24.27 20.28 17.67 27.40 21.37 18.98 28.49
54 17.67 17.33 29.33 24.75 20.28 17.67 27.93 21.37 19.27 28.49
55 18.21 17.89 29.94 25.38 20.83 18.21 28.90 21.37 19.53 29.33
56 18.21 17.89 30.49 25.91 20.83 18.21 29.33 21.98 19.84 29.67
57 18.76 18.48 31.15 26.46 21.37 18.76 29.85 21.98 20.12 30.12
58 19.34 19.05 31.85 27.03 21.37 19.34 29.85 21.98 20.41 30.49
59 19.34 19.05 32.57 27.47 21.93 19.34 30.30 22.62 20.70 30.86
60 19.88 19.65 33.22 28.17 21.93 19.88 31.25 22.62 21.01 32.47
61 20.96 20.20 33.67 29.94 22.47 20.96 32.26 22.62 21.32 33.44
62 22.08 20.79 34.48 31.06 22.42 22.08 32.89 22.62 21.65 33.90
63 23.20 21.37 35.21 32.57 22.57 23.20 34.01 23.31 21.98 35.09
64 23.75 21.93 35.84 33.78 23.04 23.75 35.09 23.31 22.27 35.84
65 24.88 22.52 36.63 34.97 23.42 24.88 35.59 23.31 22.62 36.50
66 25.97 22.52 37.04 36.23 23.75 25.97 36.63 23.92 22.94 37.17
67 27.03 23.70 37.88 37.31 24.10 27.03 37.45 23.92 23.26 37.74
68 28.17 23.70 38.61 38.17 24.21 28.17 38.31 23.92 23.58 38.76
69 29.24 24.27 39.37 39.06 24.27 29.24 39.22 24.57 23.92 39.37
70 29.85 24.81 40.00 40.00 24.94 29.85 40.00 24.57 24.27 40.00
71 32.05 27.17 43.10 43.10 26.88 32.05 43.10 26.53 26.04 43.10
72 34.84 28.90 46.30 46.30 29.07 34.84 46.30 28.49 28.17 46.30
73 37.59 31.15 49.75 49.75 31.25 37.59 49.75 30.40 30.30 49.75
74 40.32 33.44 53.48 53.48 33.44 40.32 53.48 33.00 32.36 53.48
75 43.10 36.36 57.80 57.80 36.23 43.10 57.80 35.59 34.84 57.80
76 46.30 38.76 62.11 62.11 38.91 46.30 62.11 38.17 37.88 62.11
77 50.25 41.67 66.67 66.67 41.67 50.25 66.67 41.32 40.82 66.67
78 54.05 45.05 71.94 71.94 45.05 54.05 71.94 44.05 43.67 71.94
79 58.14 48.54 77.52 77.52 48.31 58.14 77.52 47.85 47.17 77.52
80 62.50 52.08 83.33 83.33 52.08 62.50 83.33 51.02 50.51 83.33
    War   Pal   Hun   Rog   Pri   DK    Sha  Mage  Lock   Dru
```
```
        Intellect needed for 1% Spell Crit
     Pal    Hun    Pri    Sha   Mage   Lock    Dru
1   12.02  14.31   5.85   7.50   6.11   6.67   6.99
2   12.61  15.02   6.11   7.86   6.35   6.97   7.30
3   12.61  15.02   6.38   8.22   6.60   7.27   7.62
4   13.21  15.75   6.64   8.22   7.09   7.58   7.94
5   13.21  15.75   7.17   8.58   7.33   7.88   8.26
6   13.81  16.45   7.44   8.93   7.58   8.18   8.58
7   14.41  16.45   7.71   9.29   7.82   8.48   8.90
8   14.41  17.15   7.97   9.64   8.06   8.79   8.90
9   15.02  17.15   8.24  10.00   8.55   9.09   9.21
10  15.02  17.89   8.77  10.00   8.80   9.39  10.16
11  15.63  17.89   9.57  10.72   9.53  10.30  10.80
12  16.23  18.59  10.63  11.43  10.75  11.21  11.75
13  16.84  20.04  11.43  12.50  11.48  12.12  12.39
14  17.42  20.04  12.76  13.23  13.68  13.04  13.33
15  18.62  21.46  13.81  14.29  14.90  13.95  14.62
16  18.62  21.46  14.62  15.02  15.65  14.53  15.24
17  19.23  22.17  15.95  15.72  16.61  15.75  16.21
18  20.41  23.58  16.75  16.78  17.61  16.67  16.84
19  20.41  23.58  17.79  17.51  18.59  17.57  17.79
20  21.65  25.06  19.12  18.59  19.80  18.48  19.38
21  22.22  25.77  19.92  19.31  20.53  19.38  20.00
22  22.83  25.77  21.28  20.00  21.74  20.28  20.96
23  23.42  27.17  22.08  21.10  22.47  21.23  21.60
24  24.04  27.93  23.36  21.79  23.70  22.42  22.88
25  25.25  28.57  24.45  22.88  24.69  23.31  23.81
26  25.84  29.33  25.51  23.58  25.64  23.92  24.45
27  25.84  30.03  26.60  24.27  26.88  25.13  25.38
28  27.03  30.77  27.62  25.38  29.59  26.04  26.04
29  27.62  31.45  28.74  26.11  30.77  27.25  27.32
30  28.82  32.89  30.03  27.17  32.05  28.17  28.90
31  29.41  33.67  31.06  28.25  32.79  28.82  29.50
32  30.03  33.67  32.15  28.90  34.01  30.03  30.77
33  30.67  35.09  33.22  30.03  34.97  30.86  31.45
34  31.25  35.71  34.60  30.77  35.97  32.15  32.36
35  32.47  37.17  35.59  31.85  37.17  33.00  33.67
36  33.00  37.88  36.63  32.89  38.17  33.90  34.25
37  33.67  37.88  38.02  33.56  39.37  35.21  35.21
38  34.84  39.37  39.06  34.60  40.32  36.10  36.23
39  35.46  40.00  40.16  35.34  41.49  37.31  37.17
40  36.63  41.49  41.49  36.76  42.55  38.17  39.06
41  37.31  42.19  42.55  37.45  43.48  39.06  39.68
42  37.88  42.19  43.86  38.17  46.51  40.32  40.98
43  39.06  43.67  44.84  39.37  47.39  41.15  41.67
44  39.06  44.44  46.30  40.32  48.54  42.37  42.92
45  40.32  45.87  47.62  41.49  49.75  43.67  43.86
46  40.82  46.51  48.54  42.55  50.76  44.64  44.84
47  42.02  47.17  50.00  43.29  52.08  45.45  45.66
48  43.29  48.54  51.02  44.25  53.19  46.73  46.73
49  43.86  49.26  52.36  45.45  54.35  47.85  47.85
50  45.05  50.76  53.76  46.51  55.87  49.02  49.50
51  45.66  51.55  54.64  47.62  56.82  50.00  50.51
52  46.30  52.08  56.18  48.31  57.80  51.28  51.81
53  47.39  53.76  57.14  49.75  58.82  52.36  52.36
54  48.08  54.35  58.48  50.25  60.24  53.76  53.76
55  49.26  55.87  60.24  51.81  61.73  54.95  54.95
56  49.75  56.50  60.98  52.63  64.94  55.87  55.87
57  50.51  57.14  62.50  53.48  66.23  56.82  56.82
58  52.36  58.82  63.69  54.95  67.11  58.14  57.80
59  52.91  59.52  64.94  55.87  68.49  59.52  59.17
60  54.05  60.98  66.23  57.14  69.93  60.61  60.98
61  62.89  63.69  67.57  60.98  69.93  62.89  61.73
62  64.94  64.94  68.97  62.89  69.93  64.94  63.69
63  67.11  66.67  69.93  65.79  69.93  67.57  66.67
64  68.97  69.44  71.94  68.03  69.93  69.93  68.49
65  71.43  70.92  72.99  70.42  70.42  72.46  70.42
66  73.53  72.99  74.63  72.46  72.46  74.07  72.99
67  74.63  75.19  75.76  74.63  74.63  76.92  75.19
68  76.34  76.92  76.92  76.34  76.34  78.74  76.34
69  78.13  78.13  78.74  78.13  78.13  79.37  78.13
70  80.00  80.00  80.00  80.00  80.00  80.00  80.00
71  86.21  86.21  86.21  86.21  86.21  86.21  86.21
72  92.59  92.59  92.59  92.59  92.59  92.59  92.59
73  99.01  99.01  99.01  99.01  99.01  99.01  99.01
74 107.53 107.53 107.53 107.53 107.53 107.53 107.53
75 114.94 114.94 114.94 114.94 114.94 114.94 114.94
76 123.46 123.46 123.46 123.46 123.46 123.46 123.46
77 133.33 133.33 133.33 133.33 133.33 133.33 133.33
78 142.86 142.86 142.86 142.86 142.86 142.86 142.86
79 153.85 153.85 153.85 153.85 153.85 153.85 153.85
80 166.67 166.67 166.67 166.67 166.67 166.67 166.67
     Pal    Hun    Pri    Sha   Mage   Lock    Dru
```
# Spirit-Based Mana Regeneration Formula
(Patch 3.2.0 Data)

`ManaRegen(SPI, INT, LEVEL) = (0.001 + SPI * BASE_REGEN[LEVEL] * (INT^0.5)) * 5`
```
BASE_REGEN[LEVEL]=
1  0.020979  21 0.011840  41 0.008235  61 0.006421
2  0.020515  22 0.011494  42 0.008113  62 0.006314
3  0.020079  23 0.011292  43 0.008018  63 0.006175
4  0.019516  24 0.010990  44 0.007906  64 0.006072
5  0.018997  25 0.010761  45 0.007798  65 0.005981
6  0.018646  26 0.010546  46 0.007713  66 0.005885
7  0.018314  27 0.010321  47 0.007612  67 0.005791
8  0.017997  28 0.010151  48 0.007524  68 0.005732
9  0.017584  29 0.009949  49 0.007430  69 0.005668
10 0.017197  30 0.009740  50 0.007340  70 0.005596
11 0.016551  31 0.009597  51 0.007268  71 0.005316
12 0.015729  32 0.009425  52 0.007184  72 0.005049
13 0.015229  33 0.009278  53 0.007116  73 0.004796
14 0.014580  34 0.009123  54 0.007029  74 0.004555
15 0.014008  35 0.008974  55 0.006945  75 0.004327
16 0.013650  36 0.008847  56 0.006884  76 0.004110
17 0.013175  37 0.008698  57 0.006805  77 0.003903
18 0.012832  38 0.008581  58 0.006747  78 0.003708
19 0.012475  39 0.008457  59 0.006667  79 0.003522
20 0.012073  40 0.008338  60 0.006600  80 0.003345
```

# TODO
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


# Version History
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
- Initial release