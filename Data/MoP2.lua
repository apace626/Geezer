local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:MoPInitializeData()
     
    -- Shado-Pan Monastery
    addonTable.data[959] = {
        name = "Shado-Pan Monastery",
        {
            npcID = 56541,
            encounterID = 1304, 
            bossName= "Master Snowdrift",
            notes = {
                "Dodge the frontal boxing animation - "..S(106853)..
                "When the boss starts spinning - "..S(106434).." - run away or be knocked back.",
                "Keep an eye on his "..S(106454)..", attacking front of him will damage you.",
                "Boss will split in mirror images, find the right one.",
                "Avoid Ball of Fire",
            }
        },
        {
            npcID = 56747,
            encounterID = 1303, 
            bossName= "Gu Cloudstrike",
            notes = {
                "P1 - Dodge lightning zones - "..S(193260).." - on the ground, drag the boss out of it so your party can dps.",
                "In Phase 2 Gu becomes immune to damage and you need to attack the dragon, watch the frontal cone - "..S(20543)..
                "Phase 3 is the same as P1",
            }
        },
        {
            npcID = 56719,
            encounterID = 1305, 
            bossName= "Sha of Violence",
            notes = {
                "Taunt after very "..S(106872)..", you'll lose threat.",
                "Dodge circle under your feet - "..S(106877).."",
                "Ignore adds",
                "Nuke the boss",
                
            }
        },
        {
            npcID = 56884,
            encounterID = 1306, 
            bossName= "Taran Zhu",
            notes = {
                "Remove "..S(107087).." by using the extra action button - "..S(107200)..".",
                "When you see a purple ring around the boss - "..S(131521)..", move in it.",
                "DPS should focus kill the adds.",
                
            }
        },
    }
    
    -- Temple of the Jade Serpent
    addonTable.data[960] = {
        name = "Temple of the Jade Serpent",
        {
            npcID = 56439,
            encounterID = 1439, 
            bossName= "Sha of Doubt",
            notes = {
                "When copies of the party spawn - "..S(117665).." - focus kill these copies before they explode, this damages you and heals the boss. Boss is immune as long as copies live.",
                "Stacking the group right before the cast goes off greatly simplifies the mechanic.",
                "Rotate your cooldowns for every cast of "..S(106228)..", this really helps the healer.",
            }
        },
        {
            npcID = 56732,
            encounterID = 1416, 
            bossName= "Liu Flameheart",
            notes = {
                "Use mitigation/cooldowns for "..S(106823).."",
                "Stay spread out and avoid fire waves - "..S(106856).."",
                "at 70% HP she will receive buffed spells (knockbacks and fire pools)",
                "at 30% HP she will summon Yu'lon, focus kill the dragon.",
                "Avoid green pools on the floor.",
                "Avoid the dragon's frontal - "..S(396907).."",
            }
        },
        {
            npcID = 56843,
            encounterID = 1417, 
            bossName= "Lorewalker Stonestep",
            notes = {
                "You will have to fight one of two lore manifestations.",
                "The Trail of Youngol: two adds. Attack one until it reaches 6-7 stacks, then swap to the other.",
                "The Champion of Five Suns: attack the 4 suns, when they die a Sha will spawn, Defeat Zao when corrupted.",
            }
        },
        {
            npcID = 56448,
            encounterID = 1418, 
            bossName= "Wise Mari",
            notes = {
                "Move to the back of the room and ignore the boss, he will spawn adds - "..S(106526)..", very slowly.",
                "Focus kill every add that spawns and take heed not to step into their sha puddle trail.",
                "After a couple of adds are killed the boss will burst his "..S(106062).."  and start rotating a beam of water - "..S(106055)..".",
                "Rotate around the boss, don't touch the beam of water and nuke the boss down.",
            }
        },
    }
    
    -- Stormstout Brewery
    addonTable.data[961] = {
        name = "Stormstout Brewery",
        {
            npcID = 56637,
            encounterID = 1412, 
            bossName= "Ook-Ook",
            notes = {
                "Face the boss away from the party for it's frontal cone - "..S(106807).."",
                "The boss will be throwing around bananas - "..S(106651).." - avoid them or jump unto a barrel and roll into the boss.",
            }
        },
        {
            npcID = 56717,
            encounterID = 1413, 
            bossName= "Hoptallus",
            notes = {
                "Avoid the boss' frontal cone while he spins around during "..S(112944).."",
                "When the boss starts spinning violently, run away - "..S(112992).."",
                "During "..S(112992).." a lot of adds spawn. Kill Boppers, they drop a hammer. Use the hammers to kill the adds.",
            }
        },
        {
            npcID = 59479,
            encounterID = 1414, 
            bossName= "Yan-Zhu the Uncasked",
            notes = {
                "Stay in melee range at all times to avoid "..S(114548).."",
                "If a player bleeds beer from its ears, stay away from them - "..S(106546).."",
                "When you have "..S(106851)..", keep moving/jump to remove stacks, 10 stacks makes you fall asleep.",
                "Click on the bubbles to fly up and avoid "..S(115003)..""
            }
        },
    }
    
    -- Gate of the Setting Sun
    addonTable.data[962] = {
        name = "Gate of the Setting Sun",
        {
            npcID = 56877,
            encounterID = 1419, 
            bossName= "Raigonn",
            notes = {
                "Dodge the frontal - "..S(111668).."",
                "Stay on the ground flour and pick up all adds.",
                "Once the boss' weak spot is destroyed he will fixate someone",
                "If you're"..S(111723).."d, kite the boss around, the others will nuke it down.",
                
            }
        },
        {
            npcID = 56906,
            encounterID = 1397, 
            bossName= "Saboteur Kip'tilak",
            notes = {
                "Stay spread out for "..S(107268).."",
                "Boss will throw explosives, stand on the edge of the arena so you don't get hit by any of the 4 lines.",
                "At 70 and 30% HP the boss will detonate all explosives",
            }
        },
        {
            npcID = 56589,
            encounterID = 1405, 
            bossName= "Striker Ga'dok",
            notes = {
                "Dodge the huge fire zones when the boss zooms around the arena.",
                "use mitigation cooldown for "..S(107047).."",
                "Pick up all adds when they spawn.",
                "Avoid acid bombs",
            }
        },
        {
            npcID = 56636,
            encounterID = 1406, 
            bossName= "Commander Ri'mok",
            notes = {
                "Drag the boss out of the green puddles",
                "Dodge the frontal cone - "..S(107120).."",
                "Pick up all adds",
                "Be mindful of bombs",
                
            }
        },
    }
    
    -- Mogu'shan Palace
    addonTable.data[994] = {
        name = "Mogu'shan Palace",
        {
            npcID = 61243,
            encounterID = 2129, 
            bossName= "Gekkan",
            notes = {
                "Focus kill the adds, put a skull on the one you want to kill first. ",
                "We suggest the Oracle first and the annoying backstab one soon after.",
                "Interrupt as much as you can.",
            }
        },
        {
            npcID = 61398,
            encounterID = 1441, 
            bossName= "Xin the Weaponmaster",
            notes = {
                "Tank the boss at the bottom of the steps.",
                "Avoid the frontal cone - "..S(119684).."",
                "Dodge spinning weapons and fiery circles",
                "Dodge the flying daggers.",
                
            }
        },
        {
            npcID = 999999,
            encounterID = 1442, 
            bossName= "Trial of the King",
            notes = {
                "You'll have to fight 3 bosses in a random order.",
                "Kuai: Avoid the frontal cone - "..S(119922).."",
                "Ming: Dodge the whirlwinds, resist the pull from "..S(120100).."",
                "Haiyan: stack on the player targeted by "..S(120195).." to split damage.",
            }
        },
    }
    
    -- Terrace of Endless Spring
    addonTable.data[996] = {
        name = "Terrace of Endless Spring",
        {
            npcID = 999999,
            encounterID = 1409, 
            bossName= "Protectors of the Endless",
            notes = {
            }
        },
        {
            npcID = 60999,
            encounterID = 1431, 
            bossName= "Sha of Fear",
            notes = {
            }
        },
        {
            npcID = 62983,
            encounterID = 1506, 
            bossName= "Lei Shi",
            notes = {
            }
        },
        {
            npcID = 62442,
            encounterID = 1505, 
            bossName= "Tsulong",
            notes = {
            }
        },
    }
    
    -- Scarlet Halls
    addonTable.data[1001] = {
        name = "Scarlet Halls",
        {
            npcID = 58632,
            encounterID = 1421, 
            bossName= "Armsmaster Harlan",
            notes = {
            }
        },
        {
            npcID = 59150,
            encounterID = 1420, 
            bossName= "Flameweaver Koegler",
            notes = {
            }
        },
        {
            npcID = 59303,
            encounterID = 1422, 
            bossName= "Houndmaster Braun",
            notes = {
            }
        },
    }
    
    -- Scarlet Monastery
    addonTable.data[1004] = {
        name = "Scarlet Monastery",
        {
            npcID = 59223,
            encounterID = 1424, 
            bossName= "Brother Korloff",
            notes = {
            }
        },
        {
            npcID = 3977,
            encounterID = 1425, 
            bossName= "High Inquisitor Whitemane",
            notes = {
            }
        },
        {
            npcID = 59789,
            encounterID = 1423, 
            bossName= "Thalnos the Soulrender",
            notes = {
            }
        },
    }
    
    -- Scholomance
    addonTable.data[1007] = {
        name = "Scholomance",
        {
            npcID = 58633,
            encounterID = 1426, 
            bossName= "Instructor Chillheart",
            notes = {
            }
        },
        {
            npcID = 59184,
            encounterID = 1427, 
            bossName= "Jandice Barov",
            notes = {
            }
        },
        {
            npcID = 59153,
            encounterID = 1428, 
            bossName= "Rattlegore",
            notes = {
            }
        },
        {
            npcID = 59200,
            encounterID = 1429, 
            bossName= "Lilian Voss",
            notes = {
            }
        },
        {
            npcID = 59080,
            encounterID = 1430, 
            bossName= "Darkmaster Gandling",
            notes = {
            }
        },
    }
    
    -- Mogu'shan Vaults
    addonTable.data[1008] = {
        name = "Mogu'shan Vaults",
        {
            npcID = 999999,
            encounterID = 1407, 
            bossName= "Will of the Emperor",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1395, 
            bossName= "The Stone Guard",
            notes = {
            }
        },
        {
            npcID = 60143,
            encounterID = 1434, 
            bossName= "Gara'jal the Spiritbinder",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1436, 
            bossName= "The Spirit Kings",
            notes = {
            }
        },
        {
            npcID = 60009,
            encounterID = 1390, 
            bossName= "Feng the Accursed",
            notes = {
            }
        },
        {
            npcID = 60410,
            encounterID = 1500, 
            bossName= "Elegon",
            notes = {
            }
        },
    }
    
    -- Heart of Fear
    addonTable.data[1009] = {
        name = "Heart of Fear",
        {
            npcID = 62164,
            encounterID = 1463, 
            bossName= "Garalon",
            notes = {
            }
        },
        {
            npcID = 62511,
            encounterID = 1499, 
            bossName= "Amber-Shaper Un'sok",
            notes = {
            }
        },
        {
            npcID = 62397,
            encounterID = 1498, 
            bossName= "Wind Lord Mel'jarak",
            notes = {
            }
        },
        {
            npcID = 62837,
            encounterID = 1501, 
            bossName= "Grand Empress Shek'zeer",
            notes = {
            }
        },
        {
            npcID = 62543,
            encounterID = 1504, 
            bossName= "Blade Lord Ta'yak",
            notes = {
            }
        },
        {
            npcID = 62980,
            encounterID = 1507, 
            bossName= "Imperial Vizier Zor'lok",
            notes = {
            }
        },
    }
    
    -- Siege of Niuzao Temple
    addonTable.data[1011] = {
        name = "Siege of Niuzao Temple",
        {
            npcID = 61485,
            encounterID = 1447, 
            bossName= "General Pa'valak",
            notes = {
                "Don't stand in between the boss and the sword he throws, he will charge - "..S(124283).." -  them soon after.",
                "At 65 and 35% HP the boss will raise a "..S(119476).." and summon adds",
                "Pick up the adds and have the party throw bombs at them and the boss' shield.",
            }
        },
        {
            npcID = 61567,
            encounterID = 1465, 
            bossName= "Vizier Jin'bak",
            notes = {
                "Yellow pool in the middle will grow, given enough time the boss will "..S(120095).." it (the bigger it is, the more damage it does)",
                "you can shrink the pool by hopping in and out of it. Better left to DPS.",
                "Focus kill any add before it reaches the yellow pool",
            }
        },
        {
            npcID = 62205,
            encounterID = 1464, 
            bossName= "Wing Leader Ner'onok",
            notes = {
                "Avoid standing in stuff on the floor., "..S(121442).."",
                "If you get "..S(121447)..", jump around to reduce the bar.",
                "Boss will fly off to the other side, resist the wind and run after him.",
                "Interrupt "..S(121284).." to stop it.",
                
            }
        },
        {
            npcID = 61634,
            encounterID = 1502, 
            bossName= "Commander Vo'jak",
            notes = {
                "Strike the gong to speed up the waves of adds periodically.",
                "Throw Tar Kegs at the enemies scaling the stairs to debuff them with "..S(120778)..". Most will die before they reach the top.",
                "If some reach the top, pick them up and nuke them down.",
                "Boss will run up when all waves are defeated.",
                "Take a step back when he does "..S(120760).."",
            }
        },
    }
    
    -- Throne of Thunder
    addonTable.data[1098] = {
        name = "Throne of Thunder",
        {
            npcID = 999999,
            encounterID = 1570, 
            bossName= "Council of Elders",
            notes = {
            }
        },
        {
            npcID = 68078,
            encounterID = 1559, 
            bossName= "Iron Qon",
            notes = {
            }
        },
        {
            npcID = 68036,
            encounterID = 1572, 
            bossName= "Durumu the Forgotten",
            notes = {
            }
        },
        {
            npcID = 68476,
            encounterID = 1575, 
            bossName= "Horridon",
            notes = {
            }
        },
        {
            npcID = 69017,
            encounterID = 1574, 
            bossName= "Primordius",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1578, 
            bossName= "Megaera",
            notes = {
            }
        },
        {
            npcID = 69427,
            encounterID = 1576, 
            bossName= "Dark Animus",
            notes = {
            }
        },
        {
            npcID = 67977,
            encounterID = 1565, 
            bossName= "Tortos",
            notes = {
            }
        },
        {
            npcID = 69465,
            encounterID = 1577, 
            bossName= "Jin'rokh the Breaker",
            notes = {
            }
        },
        {
            npcID = 69712,
            encounterID = 1573, 
            bossName= "Ji-Kun",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1560, 
            bossName= "Twin Empyreans",
            notes = {
            }
        },
        {
            npcID = 156866,
            encounterID = 1580, 
            bossName= "Ra-den",
            notes = {
            }
        },
        {
            npcID = 68397,
            encounterID = 1579, 
            bossName= "Lei Shen",
            notes = {
            }
        },
    }
    
    -- Siege of Orgrimmar
    addonTable.data[1136] = {
        name = "Siege of Orgrimmar",
        {
            npcID = 71454,
            encounterID = 1595, 
            bossName= "Malkorok",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1598, 
            bossName= "The Fallen Protectors",
            notes = {
            }
        },
        {
            npcID = 71515,
            encounterID = 1603, 
            bossName= "General Nazgrim",
            notes = {
            }
        },
        {
            npcID = 71529,
            encounterID = 1599, 
            bossName= "Thok the Bloodthirsty",
            notes = {
            }
        },
        {
            npcID = 71543,
            encounterID = 1602, 
            bossName= "Immerseus",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1593, 
            bossName= "Paragons of the Klaxxi",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1606, 
            bossName= "Kor'kron Dark Shaman",
            notes = {
            }
        },
        {
            npcID = 71466,
            encounterID = 1600, 
            bossName= "Iron Juggernaut",
            notes = {
            }
        },
        {
            npcID = 71504,
            encounterID = 1601, 
            bossName= "Siegecrafter Blackfuse",
            notes = {
            }
        },
        {
            npcID = 153325,
            encounterID = 1624, 
            bossName= "Norushen",
            notes = {
            }
        },
        {
            npcID = 71734,
            encounterID = 1604, 
            bossName= "Sha of Pride",
            notes = {
            }
        },
        {
            npcID = 72249,
            encounterID = 1622, 
            bossName= "Galakras",
            notes = {
            }
        },
        {
            npcID = 71865,
            encounterID = 1623, 
            bossName= "Garrosh Hellscream",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1594, 
            bossName= "Spoils of Pandaria",
            notes = {
            }
        },
        {
            npcID = 72249,
            encounterID = 1622, 
            bossName= "Galakras",
            notes = {
            }
        },
    }
    
end