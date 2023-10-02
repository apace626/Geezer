local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
    -- Shadowfang Keep
    addonTable.data[33] = {
        name = "Shadowfang Keep",
        
        {
            npcID = 46962,
            encounterID = 1069, 
            bossName= "Baron Ashbury",
            notes = {
                "(Heals) "..S(93423)..", players health is reduced dramatically.",
                "After "..S(93423)..", "..S(93468).." will heal players to 50% of max health.",
                "Interrupt "..S(93581)
            }
        },
        
        {
            npcID = 3887,
            encounterID = 1070, 
            bossName= "Baron Silverlaine",
            notes = {
                "Curses his targets with "..S(23224).." reducing healing.",
                S(93857).." - tank should taunt but dps focus on boss."
            }
        },
        
        {
            npcID = 4278,
            encounterID = 1071, 
            bossName= "Commander Springvale",
            notes = {
                "Avoid frontal cone (purple flame) - "..S(93722),
                "Move out of "..S(93687)..", a green circle."
            }
        },
        
        {
            npcID = 46963,
            encounterID = 1073, 
            bossName= "Lord Walden",
            notes = {
                "Move around to avoid "..S(93527),
                "Watch out for "..S(93697).." he throws it at a player location."
            }
        },
        
        {
            npcID = 46964,
            encounterID = 1072, 
            bossName= "Lord Godfrey",
            notes = {
                "Interrupt "..S(93629),
                "He summons ghouls, tank should taunt but dps focus on boss."
            }
        },
        
    }
    
    -- The Stockade
    addonTable.data[34] = {
        name = "The Stockade",

        {
            npcID = 46383,
            encounterID = 1146, 
            bossName= "Randolph Moloch",
            notes = {
                "Boss will "..S(55964).." and pop up elsewhere.",
                "Face the boss away from the party to avoid cleave from "..S(86729)
            }
        },
        
        {
            npcID = 46254,
            encounterID = 1144, 
            bossName= "Hogger",
            notes = {
                "At 30% the boss will "..S(86736),
                "Interrupt "..S(86620),
            }
        },
        
        {
            npcID = 46264,
            encounterID = 1145, 
            bossName= "Lord Overheat",
            notes = {
                "Move out of "..S(86636),
                "Tank & Spank"
            }
        },
        
    }
    
    -- Deadmines
    addonTable.data[36] = {
        name = "Deadmines",
        
        {
            npcID = 47162,
            encounterID = 1064, 
            bossName= "Glubtok",
            notes = {
                "Boss will Blink teleporting to a new location.",
                "Avoid blossoms launched around room.",
                "[H] Fire & Frost Blossoms summon mobs when land.",
                "[H] Avoid rotating Fire Wall."
            }
        },
        
        {
            npcID = 47296,
            encounterID = 1065, 
            bossName= "Helix Gearbreaker",
            notes = {
                "Kill the Oaf mount, then the boss.",
                "Watch out for "..S(88352)..", avoid these on ground.",
                "[H] Stay spread out for Chest Bomb",
                "[H] Way more Chest Bomb",
            }
        },
        
        {
            npcID = 43778,
            encounterID = 1063, 
            bossName= "Foe Reaper 5000",
            notes = {
                "To activate boss kill all the other foe reapers.",
                "Face the boss away from the party to avoid "..S(88521).." cleave.",
                "Simple Tank & Spank",
                "[H] Activating boss summons adds, DPS should adds by piloting a reaper.",
            }
        },
        
        {
            npcID = 47626,
            encounterID = 1062, 
            bossName= "Admiral Ripsnarl",
            notes = {
                "Face the boss away from the party to avoid "..S(88839).." cleave.",
                "Boss will charge players with "..S(88836)..", knocking them down.",
                "During Fog kill the adds.",
                "Taunt the boss when he reappears."
            }
        },
        
        {
            npcID = 47739,
            encounterID = 1060, 
            bossName= "Captain Cookie",
            notes = {
                "Attack when boss is inside the cauldron.",
                "Avoid green foods"
            }
        },
        
        {
            npcID = 49541,
            encounterID = 1081, 
            bossName= "Vanessa VanCleef",
            notes = {
                "You will be transported into waves of nightmares to fight your way through.",
                "When she casts Fiery Blaze to detonate explosives around ship run to a rope & swing to safety (ropes by edge of ship on floor).",
                "Calls Defias mobs to aid her.",
            }
        },
        
    }
    
    -- Wailing Caverns
    addonTable.data[43] = {
        name = "Wailing Caverns",
        
        {
            npcID = 3671,
            encounterID = 585, 
            bossName= "Lady Anacondra",
            notes = {
                S(8040).." puts a party member to sleep",
                "Interrupt "..S(23381)
            }
        },
        
        {
            npcID = 3669,
            encounterID = 586, 
            bossName= "Lord Cobrahn",
            notes = {
                S(8040).." puts a party member to sleep",
                "Interrupt "..S(23381),
                "Can turn into a snake with "..S(7965)
            }
        },
        
        {
            npcID = 3670,
            encounterID = 588, 
            bossName= "Lord Pythas",
            notes = {
                S(8040).." puts a party member to sleep",
                "Interrupt "..S(23381)
            }
        },
        
        {
            npcID = 3653,
            encounterID = 587, 
            bossName= "Kresh",
            notes = {
                S(80362).." reduce target's armor."
            }
        },
        
        {
            npcID = 3674,
            encounterID = 589, 
            bossName= "Skum",
            notes = {
                "Tank & Spank"
            }
        },
        
        {
            npcID = 3673,
            encounterID = 590, 
            bossName= "Lord Serpentis",
            notes = {
                S(8040).." puts a party member to sleep",
                "Interrupt "..S(23381)
            }
        },
        
        {
            npcID = 5775,
            encounterID = 591, 
            bossName= "Verdan the Everliving",
            notes = {
                S(8142).." will knock you down and immobilize you for 5 seconds."
            }
        },
        
        {
            npcID = 3654,
            encounterID = 592, 
            bossName= "Mutanus the Devourer",
            notes = {
                "Kill the waves of adds, then boss will appear.",
                "The boss can sleep, stun and fear players.",
            }
        },
        
    }
    
    -- Razorfen Kraul
    addonTable.data[47] = {
        name = "Razorfen Kraul",
        
        {
            npcID = 74948,
            encounterID = 438, 
            bossName= "Roogug",
            notes = {
                "Avoid standing in "..S(153525).." and "..S(153528).." (green & yellow circles on floor).",
                "Interrupt "..S(150774)
            }
        },
        
        {
            npcID = 75001,
            encounterID = 1656, 
            bossName= "Hunter Bonetusk",
            notes = {
                S(150904).." - Move out of the circle of arrows.",
                "At 50% HP the boss will call "..S(150917)..", avoid all the boars."
            }
        },
        
        {
            npcID = 74462,
            encounterID = 1659, 
            bossName= "Warlord Ramtusk",
            notes = {
                "Boss cannot leave circle",
                "Tank pickup adds"
            }
        },
        
        {
            npcID = 999999,
            encounterID = 1660, 
            bossName= "Groyat, the Blind Hunter",
            notes = {
                "Move away from "..S(128381).." (circle on ground).",
                "Move out of the circles of "..S(153214),
                S(43417).." bites a target inflicting damage & leeching health."
            }
        },
        
        {
            npcID = 4421,
            encounterID = 1661, 
            bossName= "Charlga Razorflank",
            notes = {
                S(151534).." - This allows the boss to summon two totems, outlined below.",
                "Run away to avoid being pulled in by the blue crystal.",
                "Green crystal spawns ooze mobs, avoid standing near the green puddles.",
                "Red crystal inflicts fire damage to anyone hit by the lines.",
                S(151583).." will root you in place.",
            }
        },
        
    }
    
    -- Blackfathom Deeps
    addonTable.data[48] = {
        name = "Blackfathom Deeps",
        
        {
            npcID = 4887,
            encounterID = 1667, 
            bossName= "Ghamoo-Ra",
            notes = {
                "Move out way of lightning pool on ground, spins around then charges forward - "..S(149865),
                "Hits random targets with "..S(151681).." during fight."
            }
        },
        
        {
            npcID = 74565,
            encounterID = 1669, 
            bossName= "Subjugator Kor'ul",
            notes = {
                "Grabs a player with "..S(150634),
                S(151159).." summons tentacles to hit ground (move out of the crumbling floor)."
            }
        },
        
        {
            npcID = 164266,
            encounterID = 1668, 
            bossName= "Domina",
            notes = {
                "Avoid frontal cone "..S(149893).." (purple line on floor).",
                "Run away from "..S(149886).." (green bolts)."
            }
        },
        
        {
            npcID = 74728,
            encounterID = 1671, 
            bossName= "Twilight Lord Bathiel",
            notes = {
                S(150020).." summons adds then boss absorbs them to heal, kill what you can.",
                "Run away from "..S(151813)..", ice shards fall & follow enemies.",
            }
        },
        
        {
            npcID = 75408,
            encounterID = 1672, 
            bossName= "Aku'mai",
            notes = {
                "Move around to avoid damage from falling rocks.",
                S(151303).." summons tentacles that hit the ground (move out of the crumbling floor).",
            }
        },
        
        {
            npcID = 75410,
            encounterID = 1676, 
            bossName= "Guardian of the Deep",
            notes = {
                "Does aoe damage with "..S(149916).." (circle echoes out).",
                S(152753).." summons adds.",
                "Heals himself when eats a Blue Shale Crawler - "..S(149920),
            }
        },
        
        {
            npcID = 74988,
            encounterID = 1670, 
            bossName= "Executioner Gore",
            notes = {
                "Move out of purple line/frontal cone - "..S(149943),
                "Avoid standing in the purple circles left on ground.",
                "Interrupt "..S(149955)..", grabs a player draining their health."
            }
        },
        
        {
            npcID = 74505,
            encounterID = 1675, 
            bossName= "Thruk",
            notes = {
                S(149908).." pulls in & roots a player in a fishing net.",
                S(149913).." smashes the ground around him, move away 10 yds."
            }
        },
        
    }
    
    -- Uldaman
    addonTable.data[70] = {
        name = "Uldaman",
        
        {
            npcID = 6910,
            encounterID = 547, 
            bossName= "Revelosh",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 548, 
            bossName= "The Lost Dwarves",
            notes = {}
        },
        
        {
            npcID = 7228,
            encounterID = 549, 
            bossName= "Ironaya",
            notes = {}
        },
        
        {
            npcID = 7206,
            encounterID = 551, 
            bossName= "Ancient Stone Keeper",
            notes = {}
        },
        
        {
            npcID = 7291,
            encounterID = 552, 
            bossName= "Galgann Firehammer",
            notes = {}
        },
        
        {
            npcID = 4854,
            encounterID = 553, 
            bossName= "Grimlok",
            notes = {}
        },
        
        {
            npcID = 2748,
            encounterID = 554, 
            bossName= "Archaedas",
            notes = {}
        },
        
        {
            npcID = 7023,
            encounterID = 1887, 
            bossName= "Obsidian Sentinel",
            notes = {}
        },
        
    }
    
    -- Gnomeregan
    addonTable.data[90] = {
        name = "Gnomeregan",
        
        {
            npcID = 6229,
            encounterID = 381, 
            bossName= "Crowd Pummeler 9-60",
            notes = {
                "Avoid the frontal "..S(8374)
            }
        },
        
        {
            npcID = 7361,
            encounterID = 379, 
            bossName= "Grubbis",
            notes = {
                "Start fight by talking to Blastmaster Emi Shortfuse at back of room.",
                "Defeat waves of adds before the boss appears."
            }
        },
        
        {
            npcID = 7079,
            encounterID = 378, 
            bossName= "Viscous Fallout",
            notes = {
                "Careful of mobs nearby before pulling boss. Group gets poison ticks on them."
            }
        },
        
        {
            npcID = 6235,
            encounterID = 380, 
            bossName= "Electrocutioner 6000",
            notes = {
                "Interrupt "..S(11082)..", if not dodge.",
                "Interrupt "..S(11085)
            }
        },
        
        {
            npcID = 7800,
            encounterID = 382, 
            bossName= "Mekgineer Thermaplugg",
            notes = {
                "Interrupt "..S(93655)..", this knocks back.",
                "Keep moving to avoid Walking Bombs."
            }
        },
        
    }
    
    -- The Temple of Atal'hakkar
    addonTable.data[109] = {
        name = "The Temple of Atal'hakkar",
        
        {
            npcID = 8443,
            encounterID = 492, 
            bossName= "Avatar of Hakkar",
            notes = {}
        },
        
        {
            npcID = 5710,
            encounterID = 488, 
            bossName= "Jammal'an the Prophet",
            notes = {}
        },
        
        {
            npcID = 5709,
            encounterID = 493, 
            bossName= "Shade of Eranikus",
            notes = {}
        },
        
    }
    
    -- Razorfen Downs
    addonTable.data[129] = {
        name = "Razorfen Downs",
        
        {
            npcID = 74347,
            encounterID = 1663, 
            bossName= "Mordresh Fire Eye",
            notes = {}
        },
        
        {
            npcID = 74434,
            encounterID = 1666, 
            bossName= "Amnennar the Coldbringer",
            notes = {}
        },
        
        {
            npcID = 74412,
            encounterID = 1662, 
            bossName= "Aarux",
            notes = {}
        },
        
        {
            npcID = 74435,
            encounterID = 1664, 
            bossName= "Mushlump",
            notes = {}
        },
        
        {
            npcID = 74875,
            encounterID = 1665, 
            bossName= "Death Speaker Blackthorn",
            notes = {}
        },
        
    }
    
    -- Zul'Farrak
    addonTable.data[209] = {
        name = "Zul'Farrak",
        
        {
            npcID = 7273,
            encounterID = 594, 
            bossName= "Gahz'rilla",
            notes = {
                S(11131).." will slow you down",
                S(11836).." is a stun ability.",
                "Move away from "..S(11902)..", this is a knockback."
            }
        },
        
        {
            npcID = 8127,
            encounterID = 595, 
            bossName= "Antu'sul",
            notes = {
                "Kill the adds first.",
                "Kill the Greater Healing Ward & "..S(8376),
                "Boss uses variety of shaman spells, interrupt the heals.",
                "At 75% & 25% summons "..S(11894).." to fight, kill them quickly.",
            }
        },
        
        {
            npcID = 7272,
            encounterID = 596, 
            bossName= "Theka the Martyr",
            notes = {
                "The scarabs will attack when you pull the boss",
                "Interrupt "..S(8600),
                "At 30% the boss transforms making him immune to physical attacks and shadow magic"
            }
        },
        
        {
            npcID = 7271,
            encounterID = 597, 
            bossName= "Witch Doctor Zum'rah",
            notes = {
                "Raises zombies from nearby graves.",
                "Kill the "..S(11086).." totem before it summons adds.",
                "Interrupt "..S(12491),
                "Interrupt "..S(12739),
                "Interrupt "..S(15245),
            }
        },
        
        {
            npcID = 7796,
            encounterID = 598, 
            bossName= "Nekrum & Sezz'ziz",
            notes = {
                "The prisoners help you fight the trolls & bosses.",
                "Nekrum: Interrupt "..S(8600),
                "Sezz'ziz: Interrupt "..S(12739)..", "..S(8362).."  & "..S(12039),
                S(8269).." will fear you.",
            }
        },
        
        {
            npcID = 7267,
            encounterID = 600, 
            bossName= "Chief Ukorz Sandscalp",
            notes = {
                "Ruuzlu will aid the boss in this fight.",
                "Face the boss away from the party to avoid "..S(15496).." and "..S(11837).."",
                "Boss will "..S(12739),
            }
        },
        
    }
    
    -- Lower Blackrock Spire
    addonTable.data[229] = {
        name = "Lower Blackrock Spire",
        
        {
            npcID = 9196,
            encounterID = 267, 
            bossName= "Highlord Omokk",
            notes = {}
        },
        
        {
            npcID = 9236,
            encounterID = 268, 
            bossName= "Shadow Hunter Vosh'gajin",
            notes = {}
        },
        
        {
            npcID = 9237,
            encounterID = 269, 
            bossName= "War Master Voone",
            notes = {}
        },
        
        {
            npcID = 10596,
            encounterID = 270, 
            bossName= "Mother Smolderweb",
            notes = {}
        },
        
        {
            npcID = 10584,
            encounterID = 271, 
            bossName= "Urok Doomhowl",
            notes = {}
        },
        
        {
            npcID = 9736,
            encounterID = 272, 
            bossName= "Quartermaster Zigris",
            notes = {}
        },
        
        {
            npcID = 10220,
            encounterID = 274, 
            bossName= "Halycon",
            notes = {}
        },
        
        {
            npcID = 10268,
            encounterID = 273, 
            bossName= "Gizrul the Slavener",
            notes = {}
        },
        
        {
            npcID = 9568,
            encounterID = 275, 
            bossName= "Overlord Wyrmthalak",
            notes = {}
        },
        
    }
    
    -- Blackrock Depths
    addonTable.data[230] = {
        name = "Blackrock Depths",
        
        {
            npcID = 9502,
            encounterID = 239, 
            bossName= "Phalanx",
            notes = {}
        },
        
        {
            npcID = 9018,
            encounterID = 227, 
            bossName= "High Interrogator Gerstahn",
            notes = {}
        },
        
        {
            npcID = 9025,
            encounterID = 228, 
            bossName= "Lord Roccor",
            notes = {}
        },
        
        {
            npcID = 9319,
            encounterID = 229, 
            bossName= "Houndmaster Grebmar",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 230, 
            bossName= "Ring of Law",
            notes = {}
        },
        
        {
            npcID = 9024,
            encounterID = 231, 
            bossName= "Pyromancer Loregrain",
            notes = {}
        },
        
        {
            npcID = 9017,
            encounterID = 232, 
            bossName= "Lord Incendius",
            notes = {}
        },
        
        {
            npcID = 9041,
            encounterID = 233, 
            bossName= "Warder Stilgiss",
            notes = {}
        },
        
        {
            npcID = 9056,
            encounterID = 234, 
            bossName= "Fineous Darkvire",
            notes = {}
        },
        
        {
            npcID = 9016,
            encounterID = 235, 
            bossName= "Bael'Gar",
            notes = {}
        },
        
        {
            npcID = 9033,
            encounterID = 236, 
            bossName= "General Angerforge",
            notes = {}
        },
        
        {
            npcID = 8983,
            encounterID = 237, 
            bossName= "Golem Lord Argelmach",
            notes = {}
        },
        
        {
            npcID = 9537,
            encounterID = 238, 
            bossName= "Hurley Blackbreath",
            notes = {}
        },
        
        {
            npcID = 9499,
            encounterID = 241, 
            bossName= "Plugger Spazzring",
            notes = {}
        },
        
        {
            npcID = 9156,
            encounterID = 242, 
            bossName= "Ambassador Flamelash",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 243, 
            bossName= "The Seven",
            notes = {}
        },
        
        {
            npcID = 9938,
            encounterID = 244, 
            bossName= "Magmus",
            notes = {}
        },
        
        {
            npcID = 9019,
            encounterID = 245, 
            bossName= "Emperor Dagran Thaurissan",
            notes = {}
        },
        
    }
    
    -- Onyxia's Lair
    addonTable.data[249] = {
        name = "Onyxia's Lair",
        
        {
            npcID = 41270,
            encounterID = 1084, 
            bossName= "Onyxia",
            notes = {}
        },
        
    }
    
    -- Zul'Gurub
    addonTable.data[309] = {
        name = "Zul'Gurub",
        
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Gri'lek",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Hazza'rah",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Renataki",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Wushoolay",
            notes = {}
        },
        
    }
    
    -- Stratholme
    addonTable.data[329] = {
        name = "Stratholme",
        
        {
            npcID = 10558,
            encounterID = 473, 
            bossName= "Hearthsinger Forresten",
            notes = {}
        },
        
        {
            npcID = 10808,
            encounterID = 474, 
            bossName= "Timmy the Cruel",
            notes = {}
        },
        
        {
            npcID = 10997,
            encounterID = 475, 
            bossName= "Willey Hopebreaker",
            notes = {}
        },
        
        {
            npcID = 10811,
            encounterID = 477, 
            bossName= "Instructor Galford",
            notes = {}
        },
        
        {
            npcID = 10813,
            encounterID = 478, 
            bossName= "Balnazzar",
            notes = {}
        },
        
        {
            npcID = 10516,
            encounterID = 472, 
            bossName= "The Unforgiven",
            notes = {}
        },
        
        {
            npcID = 10436,
            encounterID = 479, 
            bossName= "Baroness Anastari",
            notes = {}
        },
        
        {
            npcID = 10437,
            encounterID = 480, 
            bossName= "Nerub'enkan",
            notes = {}
        },
        
        {
            npcID = 10438,
            encounterID = 481, 
            bossName= "Maleki the Pallid",
            notes = {}
        },
        
        {
            npcID = 10435,
            encounterID = 482, 
            bossName= "Magistrate Barthilas",
            notes = {}
        },
        
        {
            npcID = 10439,
            encounterID = 483, 
            bossName= "Ramstein the Gorger",
            notes = {}
        },
        
        {
            npcID = 45412,
            encounterID = 484, 
            bossName= "Lord Aurius Rivendare",
            notes = {}
        },
        
        {
            npcID = 11032,
            encounterID = 476, 
            bossName= "Commander Malor",
            notes = {}
        },
        
    }
    
    -- Maraudon
    addonTable.data[349] = {
        name = "Maraudon",
        
        {
            npcID = 13282,
            encounterID = 422, 
            bossName= "Noxxion",
            notes = {}
        },
        
        {
            npcID = 12258,
            encounterID = 423, 
            bossName= "Razorlash",
            notes = {}
        },
        
        {
            npcID = 13601,
            encounterID = 427, 
            bossName= "Tinkerer Gizlock",
            notes = {}
        },
        
        {
            npcID = 12236,
            encounterID = 424, 
            bossName= "Lord Vyletongue",
            notes = {}
        },
        
        {
            npcID = 12225,
            encounterID = 425, 
            bossName= "Celebras the Cursed",
            notes = {}
        },
        
        {
            npcID = 12203,
            encounterID = 426, 
            bossName= "Landslide",
            notes = {}
        },
        
        {
            npcID = 13596,
            encounterID = 428, 
            bossName= "Rotgrip",
            notes = {}
        },
        
        {
            npcID = 12201,
            encounterID = 429, 
            bossName= "Princess Theradras",
            notes = {}
        },
        
    }
    
    -- Ragefire Chasm
    addonTable.data[389] = {
        name = "Ragefire Chasm",
        {
            npcID = 61408,
            encounterID = 1443, 
            bossName= "Adarogg",
            notes = {
                "Move out of the way of "..S(119299)..".",
                "Take note of the frontal cone "..S(119420).."."
                }
        },
        {
            npcID = 61412,
            encounterID = 1444, 
            bossName= "Dark Shaman Koranthal",
             notes = {
                "Interrupt "..S(119300)..", inflicts shadow damage on target.",
                "Avoid "..S(119971).." , inflicts shadow damage to all players within 2 yards of purple circles."
                }
        },
        {
            npcID = 61463,
            encounterID = 1445, 
            bossName= "Slagmaw",
            notes = {
                "Boss will occasionally vanish in the lava and pop up somewhere else."
                }
        },
        {
            npcID = 61528,
            encounterID = 1446, 
            bossName= "Lava Guard Gordoth",
            notes = {
                S(119999).." and "..S(120024).." will knock back players.",
                "Boss will "..S(50420).." at 30% health."
                }
        },
        
    }
    
    -- Molten Core
    addonTable.data[409] = {
        name = "Molten Core",
        
        {
            npcID = 11988,
            encounterID = 670, 
            bossName= "Golemagg the Incinerator",
            notes = {}
        },
        
        {
            npcID = 12018,
            encounterID = 671, 
            bossName= "Majordomo Executus",
            notes = {}
        },
        
        {
            npcID = 11502,
            encounterID = 672, 
            bossName= "Ragnaros",
            notes = {}
        },
        
        {
            npcID = 71865,
            encounterID = 666, 
            bossName= "Garr",
            notes = {}
        },
        
        {
            npcID = 12264,
            encounterID = 667, 
            bossName= "Shazzrah",
            notes = {}
        },
        
        {
            npcID = 12056,
            encounterID = 668, 
            bossName= "Baron Geddon",
            notes = {}
        },
        
        {
            npcID = 12098,
            encounterID = 669, 
            bossName= "Sulfuron Harbinger",
            notes = {}
        },
        
        {
            npcID = 12118,
            encounterID = 663, 
            bossName= "Lucifron",
            notes = {}
        },
        
        {
            npcID = 11982,
            encounterID = 664, 
            bossName= "Magmadar",
            notes = {}
        },
        
        {
            npcID = 12259,
            encounterID = 665, 
            bossName= "Gehennas",
            notes = {}
        },
        
    }
    
    -- Dire Maul
    addonTable.data[429] = {
        name = "Dire Maul",
        
        {
            npcID = 11490,
            encounterID = 343, 
            bossName= "Zevrim Thornhoof",
            notes = {}
        },
        
        {
            npcID = 13280,
            encounterID = 344, 
            bossName= "Hydrospawn",
            notes = {}
        },
        
        {
            npcID = 14327,
            encounterID = 345, 
            bossName= "Lethtendris",
            notes = {}
        },
        
        {
            npcID = 11492,
            encounterID = 346, 
            bossName= "Alzzin the Wildshaper",
            notes = {}
        },
        
        {
            npcID = 11489,
            encounterID = 350, 
            bossName= "Tendris Warpwood",
            notes = {}
        },
        
        {
            npcID = 11488,
            encounterID = 347, 
            bossName= "Illyanna Ravenoak",
            notes = {}
        },
        
        {
            npcID = 11487,
            encounterID = 348, 
            bossName= "Magister Kalendris",
            notes = {}
        },
        
        {
            npcID = 11496,
            encounterID = 349, 
            bossName= "Immol'thar",
            notes = {}
        },
        
        {
            npcID = 11486,
            encounterID = 361, 
            bossName= "Prince Tortheldrin",
            notes = {}
        },
        
        {
            npcID = 14326,
            encounterID = 362, 
            bossName= "Guard Mol'dar",
            notes = {}
        },
        
        {
            npcID = 14322,
            encounterID = 363, 
            bossName= "Stomper Kreeg",
            notes = {}
        },
        
        {
            npcID = 14321,
            encounterID = 364, 
            bossName= "Guard Fengus",
            notes = {}
        },
        
        {
            npcID = 14323,
            encounterID = 365, 
            bossName= "Guard Slip'kik",
            notes = {}
        },
        
        {
            npcID = 14325,
            encounterID = 366, 
            bossName= "Captain Kromcrush",
            notes = {}
        },
        
        {
            npcID = 14324,
            encounterID = 367, 
            bossName= "Cho'Rush the Observer",
            notes = {}
        },
        
        {
            npcID = 11501,
            encounterID = 368, 
            bossName= "King Gordok",
            notes = {}
        },
        
    }
    
    -- Blackwing Lair
    addonTable.data[469] = {
        name = "Blackwing Lair",
        
        {
            npcID = 12435,
            encounterID = 610, 
            bossName= "Razorgore the Untamed",
            notes = {}
        },
        
        {
            npcID = 13020,
            encounterID = 611, 
            bossName= "Vaelastrasz the Corrupt",
            notes = {}
        },
        
        {
            npcID = 12017,
            encounterID = 612, 
            bossName= "Broodlord Lashlayer",
            notes = {}
        },
        
        {
            npcID = 11983,
            encounterID = 613, 
            bossName= "Firemaw",
            notes = {}
        },
        
        {
            npcID = 14601,
            encounterID = 614, 
            bossName= "Ebonroc",
            notes = {}
        },
        
        {
            npcID = 11981,
            encounterID = 615, 
            bossName= "Flamegor",
            notes = {}
        },
        
        {
            npcID = 14020,
            encounterID = 616, 
            bossName= "Chromaggus",
            notes = {}
        },
        
        {
            npcID = 41376,
            encounterID = 617, 
            bossName= "Nefarian",
            notes = {}
        },
        
    }
    
    -- Ruins of Ahn'Qiraj
    addonTable.data[509] = {
        name = "Ruins of Ahn'Qiraj",
        
        {
            npcID = 15348,
            encounterID = 718, 
            bossName= "Kurinnaxx",
            notes = {}
        },
        
        {
            npcID = 15341,
            encounterID = 719, 
            bossName= "General Rajaxx",
            notes = {}
        },
        
        {
            npcID = 15340,
            encounterID = 720, 
            bossName= "Moam",
            notes = {}
        },
        
        {
            npcID = 15370,
            encounterID = 721, 
            bossName= "Buru the Gorger",
            notes = {}
        },
        
        {
            npcID = 15369,
            encounterID = 722, 
            bossName= "Ayamiss the Hunter",
            notes = {}
        },
        
        {
            npcID = 15339,
            encounterID = 723, 
            bossName= "Ossirian the Unscarred",
            notes = {}
        },
        
    }
    
    -- Temple of Ahn'Qiraj
    addonTable.data[531] = {
        name = "Temple of Ahn'Qiraj",
        
        {
            npcID = 15263,
            encounterID = 709, 
            bossName= "The Prophet Skeram",
            notes = {}
        },
        
        {
            npcID = 15516,
            encounterID = 711, 
            bossName= "Battleguard Sartura",
            notes = {}
        },
        
        {
            npcID = 15510,
            encounterID = 712, 
            bossName= "Fankriss the Unyielding",
            notes = {}
        },
        
        {
            npcID = 15509,
            encounterID = 714, 
            bossName= "Princess Huhuran",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 710, 
            bossName= "Silithid Royalty",
            notes = {}
        },
        
        {
            npcID = 15299,
            encounterID = 713, 
            bossName= "Viscidus",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 715, 
            bossName= "The Twin Emperors",
            notes = {}
        },
        
        {
            npcID = 15517,
            encounterID = 716, 
            bossName= "Ouro",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 717, 
            bossName= "C'Thun",
            notes = {}
        },
        
    }
    
    -- Naxxramas
    addonTable.data[533] = {
        name = "Naxxramas",
        
        {
            npcID = 15956,
            encounterID = 1107, 
            bossName= "Anub'Rekhan",
            notes = {}
        },
        
        {
            npcID = 15953,
            encounterID = 1110, 
            bossName= "Grand Widow Faerlina",
            notes = {}
        },
        
        {
            npcID = 15952,
            encounterID = 1116, 
            bossName= "Maexxna",
            notes = {}
        },
        
        {
            npcID = 15954,
            encounterID = 1117, 
            bossName= "Noth the Plaguebringer",
            notes = {}
        },
        
        {
            npcID = 15936,
            encounterID = 1112, 
            bossName= "Heigan the Unclean",
            notes = {}
        },
        
        {
            npcID = 16011,
            encounterID = 1115, 
            bossName= "Loatheb",
            notes = {}
        },
        
        {
            npcID = 16061,
            encounterID = 1113, 
            bossName= "Instructor Razuvious",
            notes = {}
        },
        
        {
            npcID = 16060,
            encounterID = 1109, 
            bossName= "Gothik the Harvester",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1121, 
            bossName= "The Four Horsemen",
            notes = {}
        },
        
        {
            npcID = 16028,
            encounterID = 1118, 
            bossName= "Patchwerk",
            notes = {}
        },
        
        {
            npcID = 15931,
            encounterID = 1111, 
            bossName= "Grobbulus",
            notes = {}
        },
        
        {
            npcID = 15932,
            encounterID = 1108, 
            bossName= "Gluth",
            notes = {}
        },
        
        {
            npcID = 15928,
            encounterID = 1120, 
            bossName= "Thaddius",
            notes = {}
        },
        
        {
            npcID = 15989,
            encounterID = 1119, 
            bossName= "Sapphiron",
            notes = {}
        },
        
        {
            npcID = 175559,
            encounterID = 1114, 
            bossName= "Kel'Thuzad",
            notes = {}
        },
        
    }
    
    -- Zul'Gurub
    addonTable.data[859] = {
        name = "Zul'Gurub",
        
        {
            npcID = 52155,
            encounterID = 1178, 
            bossName= "High Priest Venoxis",
            notes = {}
        },
        
        {
            npcID = 52151,
            encounterID = 1179, 
            bossName= "Bloodlord Mandokir",
            notes = {}
        },
        
        {
            npcID = 52059,
            encounterID = 1180, 
            bossName= "High Priestess Kilnara",
            notes = {}
        },
        
        {
            npcID = 52053,
            encounterID = 1181, 
            bossName= "Zanzil",
            notes = {}
        },
        
        {
            npcID = 52148,
            encounterID = 1182, 
            bossName= "Jin'do the Godbreaker",
            notes = {}
        },
        
    }
    
    -- Scarlet Monastery
    addonTable.data[1004] = {
        name = "Scarlet Monastery",
        
        {
            npcID = 59223,
            encounterID = 1424, 
            bossName= "Brother Korloff",
            notes = {}
        },
        
        {
            npcID = 3977,
            encounterID = 1425, 
            bossName= "High Inquisitor Whitemane",
            notes = {}
        },
        
        {
            npcID = 59789,
            encounterID = 1423, 
            bossName= "Thalnos the Soulrender",
            notes = {}
        },
        
    }
    
    -- Scholomance
    addonTable.data[1007] = {
        name = "Scholomance",
        
        {
            npcID = 58633,
            encounterID = 1426, 
            bossName= "Instructor Chillheart",
            notes = {}
        },
        
        {
            npcID = 59184,
            encounterID = 1427, 
            bossName= "Jandice Barov",
            notes = {}
        },
        
        {
            npcID = 59153,
            encounterID = 1428, 
            bossName= "Rattlegore",
            notes = {}
        },
        
        {
            npcID = 59200,
            encounterID = 1429, 
            bossName= "Lilian Voss",
            notes = {}
        },
        
        {
            npcID = 59080,
            encounterID = 1430, 
            bossName= "Darkmaster Gandling",
            notes = {}
        },
        
    }
    
    -- Upper Blackrock Spire
    addonTable.data[1358] = {
        name = "Upper Blackrock Spire",
        
        {
            npcID = 76413,
            encounterID = 1761, 
            bossName= "Orebender Gor'ashan",
            notes = {}
        },
        
        {
            npcID = 199790,
            encounterID = 1758, 
            bossName= "Kyrak",
            notes = {}
        },
        
        {
            npcID = 79912,
            encounterID = 1759, 
            bossName= "Commander Tharbek",
            notes = {}
        },
        
        {
            npcID = 76585,
            encounterID = 1760, 
            bossName= "Ragewing the Untamed",
            notes = {}
        },
        
        {
            npcID = 77120,
            encounterID = 1762, 
            bossName= "Warlord Zaela",
            notes = {}
        },
        
    }

    
end