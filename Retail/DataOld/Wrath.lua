local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
     
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
            npcID = 999999,
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
    
    -- Utgarde Keep
    addonTable.data[574] = {
        name = "Utgarde Keep",
        
        {
            npcID = 23953,
            encounterID = 2026, 
            bossName= "Prince Keleseth",
            notes = {}
        },
        
        {
            npcID = 24200,
            encounterID = 2024, 
            bossName= "Skarvald & Dalronn",
            notes = {}
        },
        
        {
            npcID = 23954,
            encounterID = 2025, 
            bossName= "Ingvar the Plunderer",
            notes = {}
        },
        
    }
    
    -- Utgarde Pinnacle
    addonTable.data[575] = {
        name = "Utgarde Pinnacle",
        
        {
            npcID = 26668,
            encounterID = 2030, 
            bossName= "Svala Sorrowgrave",
            notes = {}
        },
        
        {
            npcID = 26687,
            encounterID = 2027, 
            bossName= "Gortok Palehoof",
            notes = {}
        },
        
        {
            npcID = 26693,
            encounterID = 2029, 
            bossName= "Skadi the Ruthless",
            notes = {}
        },
        
        {
            npcID = 96756,
            encounterID = 2028, 
            bossName= "King Ymiron",
            notes = {}
        },
        
    }
    
    -- The Nexus
    addonTable.data[576] = {
        name = "The Nexus",
        
        {
            npcID = 26796,
            encounterID = 519, 
            bossName= "Commander Stoutbeard",
            notes = {}
        },
        
        {
            npcID = 26731,
            encounterID = 521, 
            bossName= "Grand Magus Telestra",
            notes = {}
        },
        
        {
            npcID = 26763,
            encounterID = 522, 
            bossName= "Anomalus",
            notes = {}
        },
        
        {
            npcID = 26794,
            encounterID = 524, 
            bossName= "Ormorok the Tree-Shaper",
            notes = {}
        },
        
        {
            npcID = 26723,
            encounterID = 527, 
            bossName= "Keristrasza",
            notes = {}
        },
        
        {
            npcID = 26798,
            encounterID = 519, 
            bossName= "Commander Kolurg",
            notes = {}
        },
        
    }
    
    -- The Oculus
    addonTable.data[578] = {
        name = "The Oculus",
        
        {
            npcID = 27654,
            encounterID = 528, 
            bossName= "Drakos the Interrogator",
            notes = {}
        },
        
        {
            npcID = 27447,
            encounterID = 530, 
            bossName= "Varos Cloudstrider",
            notes = {}
        },
        
        {
            npcID = 27655,
            encounterID = 533, 
            bossName= "Mage-Lord Urom",
            notes = {}
        },
        
        {
            npcID = 27656,
            encounterID = 534, 
            bossName= "Ley-Guardian Eregos",
            notes = {}
        },
        
    }
    
    -- The Culling of Stratholme
    addonTable.data[595] = {
        name = "The Culling of Stratholme",
        
        {
            npcID = 26529,
            encounterID = 2002, 
            bossName= "Meathook",
            notes = {}
        },
        
        {
            npcID = 26530,
            encounterID = 2004, 
            bossName= "Salramm the Fleshcrafter",
            notes = {}
        },
        
        {
            npcID = 26532,
            encounterID = 2003, 
            bossName= "Chrono-Lord Epoch",
            notes = {}
        },
        
        {
            npcID = 26533,
            encounterID = 2005, 
            bossName= "Mal'Ganis",
            notes = {}
        },
        
    }
    
    -- Halls of Stone
    addonTable.data[599] = {
        name = "Halls of Stone",
        
        {
            npcID = 27977,
            encounterID = 1994, 
            bossName= "Krystallus",
            notes = {}
        },
        
        {
            npcID = 27975,
            encounterID = 1996, 
            bossName= "Maiden of Grief",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1995, 
            bossName= "Tribunal of Ages",
            notes = {}
        },
        
        {
            npcID = 27978,
            encounterID = 1998, 
            bossName= "Sjonnir the Ironshaper",
            notes = {}
        },
        
    }
    
    -- Drak'Tharon Keep
    addonTable.data[600] = {
        name = "Drak'Tharon Keep",
        
        {
            npcID = 26630,
            encounterID = 1974, 
            bossName= "Trollgore",
            notes = {}
        },
        
        {
            npcID = 26631,
            encounterID = 1976, 
            bossName= "Novos the Summoner",
            notes = {}
        },
        
        {
            npcID = 27483,
            encounterID = 1977, 
            bossName= "King Dred",
            notes = {}
        },
        
        {
            npcID = 26632,
            encounterID = 1975, 
            bossName= "The Prophet Tharon'ja",
            notes = {}
        },
        
    }
    
    -- Azjol-Nerub
    addonTable.data[601] = {
        name = "Azjol-Nerub",
        
        {
            npcID = 28684,
            encounterID = 1971, 
            bossName= "Krik'thir the Gatewatcher",
            notes = {}
        },
        
        {
            npcID = 28921,
            encounterID = 1972, 
            bossName= "Hadronox",
            notes = {}
        },
        
        {
            npcID = 34564,
            encounterID = 1973, 
            bossName= "Anub'arak",
            notes = {}
        },
        
    }
    
    -- Halls of Lightning
    addonTable.data[602] = {
        name = "Halls of Lightning",
        
        {
            npcID = 28586,
            encounterID = 1987, 
            bossName= "General Bjarngrim",
            notes = {}
        },
        
        {
            npcID = 28587,
            encounterID = 1985, 
            bossName= "Volkhan",
            notes = {}
        },
        
        {
            npcID = 28546,
            encounterID = 1984, 
            bossName= "Ionar",
            notes = {}
        },
        
        {
            npcID = 28923,
            encounterID = 1986, 
            bossName= "Loken",
            notes = {}
        },
        
    }
    
    -- Ulduar
    addonTable.data[603] = {
        name = "Ulduar",
        
        {
            npcID = 33113,
            encounterID = 1132, 
            bossName= "Flame Leviathan",
            notes = {}
        },
        
        {
            npcID = 33118,
            encounterID = 1136, 
            bossName= "Ignis the Furnace Master",
            notes = {}
        },
        
        {
            npcID = 33186,
            encounterID = 1139, 
            bossName= "Razorscale",
            notes = {}
        },
        
        {
            npcID = 33293,
            encounterID = 1142, 
            bossName= "XT-002 Deconstructor",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1140, 
            bossName= "The Assembly of Iron",
            notes = {}
        },
        
        {
            npcID = 32930,
            encounterID = 1137, 
            bossName= "Kologarn",
            notes = {}
        },
        
        {
            npcID = 33515,
            encounterID = 1131, 
            bossName= "Auriaya",
            notes = {}
        },
        
        {
            npcID = 32845,
            encounterID = 1135, 
            bossName= "Hodir",
            notes = {}
        },
        
        {
            npcID = 32865,
            encounterID = 1141, 
            bossName= "Thorim",
            notes = {}
        },
        
        {
            npcID = 32906,
            encounterID = 1133, 
            bossName= "Freya",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1138, 
            bossName= "Mimiron",
            notes = {}
        },
        
        {
            npcID = 33271,
            encounterID = 1134, 
            bossName= "General Vezax",
            notes = {}
        },
        
        {
            npcID = 33288,
            encounterID = 1143, 
            bossName= "Yogg-Saron",
            notes = {}
        },
        
        {
            npcID = 32871,
            encounterID = 1130, 
            bossName= "Algalon the Observer",
            notes = {}
        },
        
    }
    
    -- Gundrak
    addonTable.data[604] = {
        name = "Gundrak",
        
        {
            npcID = 29304,
            encounterID = 1978, 
            bossName= "Slad'ran",
            notes = {}
        },
        
        {
            npcID = 29307,
            encounterID = 1983, 
            bossName= "Drakkari Colossus",
            notes = {}
        },
        
        {
            npcID = 29305,
            encounterID = 1980, 
            bossName= "Moorabi",
            notes = {}
        },
        
        {
            npcID = 29932,
            encounterID = 1988, 
            bossName= "Eck the Ferocious",
            notes = {}
        },
        
        {
            npcID = 29306,
            encounterID = 1981, 
            bossName= "Gal'darah",
            notes = {}
        },
        
    }
    
    -- The Violet Hold
    addonTable.data[608] = {
        name = "The Violet Hold",
        
        {
            npcID = 31134,
            encounterID = 2020, 
            bossName= "Cyanigosa",
            notes = {}
        },
        
    }
    
    -- The Obsidian Sanctum
    addonTable.data[615] = {
        name = "The Obsidian Sanctum",
        
        {
            npcID = 28860,
            encounterID = 1090, 
            bossName= "Sartharion",
            notes = {}
        },
        
    }
    
    -- The Eye of Eternity
    addonTable.data[616] = {
        name = "The Eye of Eternity",
        
        {
            npcID = 28859,
            encounterID = 1094, 
            bossName= "Malygos",
            notes = {}
        },
        
    }
    
    -- Ahn'kahet: The Old Kingdom
    addonTable.data[619] = {
        name = "Ahn'kahet: The Old Kingdom",
        
        {
            npcID = 29309,
            encounterID = 1969, 
            bossName= "Elder Nadox",
            notes = {}
        },
        
        {
            npcID = 29308,
            encounterID = 1966, 
            bossName= "Prince Taldaram",
            notes = {}
        },
        
        {
            npcID = 29310,
            encounterID = 1967, 
            bossName= "Jedoga Shadowseeker",
            notes = {}
        },
        
        {
            npcID = 30258,
            encounterID = 1989, 
            bossName= "Amanitar",
            notes = {}
        },
        
        {
            npcID = 29311,
            encounterID = 1968, 
            bossName= "Herald Volazj",
            notes = {}
        },
        
    }
    
    -- Vault of Archavon
    addonTable.data[624] = {
        name = "Vault of Archavon",
        
        {
            npcID = 31125,
            encounterID = 1126, 
            bossName= "Archavon the Stone Watcher",
            notes = {}
        },
        
        {
            npcID = 33993,
            encounterID = 1127, 
            bossName= "Emalon the Storm Watcher",
            notes = {}
        },
        
        {
            npcID = 35013,
            encounterID = 1128, 
            bossName= "Koralon the Flame Watcher",
            notes = {}
        },
        
        {
            npcID = 38433,
            encounterID = 1129, 
            bossName= "Toravon the Ice Watcher",
            notes = {}
        },
        
    }
    
    -- Icecrown Citadel
    addonTable.data[631] = {
        name = "Icecrown Citadel",
        
        {
            npcID = 36612,
            encounterID = 1101, 
            bossName= "Lord Marrowgar",
            notes = {}
        },
        
        {
            npcID = 36855,
            encounterID = 1100, 
            bossName= "Lady Deathwhisper",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1099, 
            bossName= "Icecrown Gunship Battle",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1099, 
            bossName= "Icecrown Gunship Battle",
            notes = {}
        },
        
        {
            npcID = 37813,
            encounterID = 1096, 
            bossName= "Deathbringer Saurfang",
            notes = {}
        },
        
        {
            npcID = 36626,
            encounterID = 1097, 
            bossName= "Festergut",
            notes = {}
        },
        
        {
            npcID = 36627,
            encounterID = 1104, 
            bossName= "Rotface",
            notes = {}
        },
        
        {
            npcID = 36678,
            encounterID = 1102, 
            bossName= "Professor Putricide",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1095, 
            bossName= "Blood Prince Council",
            notes = {}
        },
        
        {
            npcID = 37955,
            encounterID = 1103, 
            bossName= "Blood-Queen Lana'thel",
            notes = {}
        },
        
        {
            npcID = 36789,
            encounterID = 1098, 
            bossName= "Valithria Dreamwalker",
            notes = {}
        },
        
        {
            npcID = 36853,
            encounterID = 1105, 
            bossName= "Sindragosa",
            notes = {}
        },
        
        {
            npcID = 36597,
            encounterID = 1106, 
            bossName= "The Lich King",
            notes = {}
        },
        
    }
    
    -- The Forge of Souls
    addonTable.data[632] = {
        name = "The Forge of Souls",
        
        {
            npcID = 36497,
            encounterID = 2006, 
            bossName= "Bronjahm",
            notes = {}
        },
        
        {
            npcID = 36502,
            encounterID = 2007, 
            bossName= "Devourer of Souls",
            notes = {}
        },
        
    }
    
    -- Trial of the Crusader
    addonTable.data[649] = {
        name = "Trial of the Crusader",
        
        {
            npcID = 999999,
            encounterID = 1088, 
            bossName= "The Northrend Beasts",
            notes = {}
        },
        
        {
            npcID = 34780,
            encounterID = 1087, 
            bossName= "Lord Jaraxxus",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1086, 
            bossName= "Champions of the Alliance",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1086, 
            bossName= "Champions of the Horde",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1089, 
            bossName= "Twin Val'kyr",
            notes = {}
        },
        
        {
            npcID = 34564,
            encounterID = 1085, 
            bossName= "Anub'arak",
            notes = {}
        },
        
    }
    
    -- Trial of the Champion
    addonTable.data[650] = {
        name = "Trial of the Champion",
        
        {
            npcID = 999999,
            encounterID = 2022, 
            bossName= "Grand Champions",
            notes = {}
        },
        
        {
            npcID = 35119,
            encounterID = 2022, 
            bossName= "Eadric the Pure",
            notes = {}
        },
        
        {
            npcID = 34928,
            encounterID = 2022, 
            bossName= "Argent Confessor Paletress",
            notes = {}
        },
        
        {
            npcID = 35451,
            encounterID = 2021, 
            bossName= "The Black Knight",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2022, 
            bossName= "Grand Champions",
            notes = {}
        },
        
    }
    
    -- Pit of Saron
    addonTable.data[658] = {
        name = "Pit of Saron",
        
        {
            npcID = 36494,
            encounterID = 1999, 
            bossName= "Forgemaster Garfrost",
            notes = {}
        },
        
        {
            npcID = 36476,
            encounterID = 2001, 
            bossName= "Ick & Krick",
            notes = {}
        },
        
        {
            npcID = 36658,
            encounterID = 2000, 
            bossName= "Scourgelord Tyrannus",
            notes = {}
        },
        
    }
    
    -- Halls of Reflection
    addonTable.data[668] = {
        name = "Halls of Reflection",
        
        {
            npcID = 38112,
            encounterID = 1992, 
            bossName= "Falric",
            notes = {}
        },
        
        {
            npcID = 38113,
            encounterID = 1993, 
            bossName= "Marwyn",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1990, 
            bossName= "Escape from Arthas",
            notes = {}
        },
        
    }
    
    -- The Ruby Sanctum
    addonTable.data[724] = {
        name = "The Ruby Sanctum",
        
        {
            npcID = 39863,
            encounterID = 1150, 
            bossName= "Halion",
            notes = {}
        },
        
    }
    
end