local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:BFAInitializeData()
     
    -- Azeroth
    addonTable.data[1] = {
        name = "Azeroth",
        
        {
            npcID = 160970,
            encounterID = 2353, 
            bossName= "Vuk'laz the Earthbreaker",
            notes = {}
        },
        
    }
    
    -- Azeroth
    addonTable.data[870] = {
        name = "Azeroth",
        
        {
            npcID = 154638,
            encounterID = 2351, 
            bossName= "Grand Empress Shek'zara",
            notes = {}
        },
        
    }
    
    -- Temple of the Jade Serpent
    addonTable.data[960] = {
        name = "Temple of the Jade Serpent",
        
        {
            npcID = 56439,
            encounterID = 1439, 
            bossName= "Sha of Doubt",
            notes = {}
        },
        
        {
            npcID = 56732,
            encounterID = 1416, 
            bossName= "Liu Flameheart",
            notes = {}
        },
        
        {
            npcID = 56843,
            encounterID = 1417, 
            bossName= "Lorewalker Stonestep",
            notes = {}
        },
        
        {
            npcID = 56448,
            encounterID = 1418, 
            bossName= "Wise Mari",
            notes = {}
        },
        
    }
    
    -- Mogu'shan Palace
    addonTable.data[994] = {
        name = "Mogu'shan Palace",
        
        {
            npcID = 61243,
            encounterID = 2129, 
            bossName= "Gekkan",
            notes = {}
        },
        
        {
            npcID = 61398,
            encounterID = 1441, 
            bossName= "Xin the Weaponmaster",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1442, 
            bossName= "Trial of the King",
            notes = {}
        },
        
    }
    
    -- The MOTHERLODE!!
    addonTable.data[1594] = {
        name = "The MOTHERLODE!!",
        
        {
            npcID = 139904,
            encounterID = 2105, 
            bossName= "Coin-Operated Crowd Pummeler",
            notes = {}
        },
        
        {
            npcID = 129227,
            encounterID = 2106, 
            bossName= "Azerokk",
            notes = {}
        },
        
        {
            npcID = 139273,
            encounterID = 2107, 
            bossName= "Rixxa Fluxflame",
            notes = {}
        },
        
        {
            npcID = 131227,
            encounterID = 2108, 
            bossName= "Mogul Razdunk",
            notes = {}
        },
        
    }
    
    -- Azeroth
    addonTable.data[1718] = {
        name = "Azeroth",
        
        {
            npcID = 999999,
            encounterID = 2317, 
            bossName= "Ulmath, the Soulbinder",
            notes = {}
        },
        
        {
            npcID = 152671,
            encounterID = 2318, 
            bossName= "Wekemara",
            notes = {}
        },
        
    }
    
    -- Freehold
    addonTable.data[1754] = {
        name = "Freehold",
        
        {
            npcID = 999999,
            encounterID = 2094, 
            bossName= "Council o' Captains",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2095, 
            bossName= "Ring of Booty",
            notes = {}
        },
        
        {
            npcID = 129440,
            encounterID = 2096, 
            bossName= "Harlan Sweete",
            notes = {}
        },
        
        {
            npcID = 129732,
            encounterID = 2093, 
            bossName= "Skycap'n Kragg",
            notes = {}
        },
        
    }
    
    -- Kings' Rest
    addonTable.data[1762] = {
        name = "Kings' Rest",
        
        {
            npcID = 135322,
            encounterID = 2139, 
            bossName= "The Golden Serpent",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2140, 
            bossName= "The Council of Tribes",
            notes = {}
        },
        
        {
            npcID = 134993,
            encounterID = 2142, 
            bossName= "Mchimba the Embalmer",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2143, 
            bossName= "Dazar, The First King",
            notes = {}
        },
        
    }
    
    -- Atal'Dazar
    addonTable.data[1763] = {
        name = "Atal'Dazar",
        
        {
            npcID = 129412,
            encounterID = 2087, 
            bossName= "Yazma",
            notes = {}
        },
        
        {
            npcID = 129399,
            encounterID = 2085, 
            bossName= "Vol'kaal",
            notes = {}
        },
        
        {
            npcID = 129614,
            encounterID = 2084, 
            bossName= "Priestess Alun'za",
            notes = {}
        },
        
        {
            npcID = 143577,
            encounterID = 2086, 
            bossName= "Rezan",
            notes = {}
        },
        
    }
    
    -- Tol Dagor
    addonTable.data[1771] = {
        name = "Tol Dagor",
        
        {
            npcID = 127503,
            encounterID = 2104, 
            bossName= "Overseer Korgus",
            notes = {}
        },
        
        {
            npcID = 134927,
            encounterID = 2101, 
            bossName= "The Sand Queen",
            notes = {}
        },
        
        {
            npcID = 127484,
            encounterID = 2102, 
            bossName= "Jes Howlis",
            notes = {}
        },
        
        {
            npcID = 130646,
            encounterID = 2103, 
            bossName= "Knight Captain Valyri",
            notes = {}
        },
        
    }
    
    -- Siege of Boralus
    addonTable.data[1822] = {
        name = "Siege of Boralus",
        
        {
            npcID = 144160,
            encounterID = 2098, 
            bossName= "Chopper Redhook",
            notes = {}
        },
        
        {
            npcID = 144158,
            encounterID = 2097, 
            bossName= "Sergeant Bainbridge",
            notes = {}
        },
        
        {
            npcID = 130836,
            encounterID = 2099, 
            bossName= "Hadal Darkfathom",
            notes = {}
        },
        
        {
            npcID = 128652,
            encounterID = 2100, 
            bossName= "Viq'Goth",
            notes = {}
        },
        
        {
            npcID = 129208,
            encounterID = 2109, 
            bossName= "Dread Captain Lockwood",
            notes = {}
        },
        
    }
    
    -- The Underrot
    addonTable.data[1841] = {
        name = "The Underrot",
        
        {
            npcID = 131383,
            encounterID = 2112, 
            bossName= "Sporecaller Zancha",
            notes = {}
        },
        
        {
            npcID = 131817,
            encounterID = 2118, 
            bossName= "Cragmaw the Infested",
            notes = {}
        },
        
        {
            npcID = 131318,
            encounterID = 2111, 
            bossName= "Elder Leaxa",
            notes = {}
        },
        
        {
            npcID = 133007,
            encounterID = 2123, 
            bossName= "Unbound Abomination",
            notes = {}
        },
        
    }
    
    -- Uldir
    addonTable.data[1861] = {
        name = "Uldir",
        
        {
            npcID = 133298,
            encounterID = 2128, 
            bossName= "Fetid Devourer",
            notes = {}
        },
        
        {
            npcID = 163405,
            encounterID = 2122, 
            bossName= "G'huun",
            notes = {}
        },
        
        {
            npcID = 134442,
            encounterID = 2134, 
            bossName= "Vectis",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2141, 
            bossName= "MOTHER",
            notes = {}
        },
        
        {
            npcID = 137119,
            encounterID = 2144, 
            bossName= "Taloc",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2136, 
            bossName= "Zek'voz, Herald of N'Zoth",
            notes = {}
        },
        
        {
            npcID = 136383,
            encounterID = 2135, 
            bossName= "Mythrax the Unraveler",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2145, 
            bossName= "Zul, Reborn",
            notes = {}
        },
        
    }
    
    -- Waycrest Manor
    addonTable.data[1862] = {
        name = "Waycrest Manor",
        
        {
            npcID = 999999,
            encounterID = 2113, 
            bossName= "Heartsbane Triad",
            notes = {}
        },
        
        {
            npcID = 131667,
            encounterID = 2114, 
            bossName= "Soulbound Goliath",
            notes = {}
        },
        
        {
            npcID = 131863,
            encounterID = 2115, 
            bossName= "Raal the Gluttonous",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2116, 
            bossName= "Lord and Lady Waycrest",
            notes = {}
        },
        
        {
            npcID = 144324,
            encounterID = 2117, 
            bossName= "Gorak Tul",
            notes = {}
        },
        
    }
    
    -- Shrine of the Storm
    addonTable.data[1864] = {
        name = "Shrine of the Storm",
        
        {
            npcID = 134056,
            encounterID = 2130, 
            bossName= "Aqu'sirr",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2131, 
            bossName= "Tidesage Council",
            notes = {}
        },
        
        {
            npcID = 139737,
            encounterID = 2132, 
            bossName= "Lord Stormsong",
            notes = {}
        },
        
        {
            npcID = 134069,
            encounterID = 2133, 
            bossName= "Vol'zith the Whisperer",
            notes = {}
        },
        
    }
    
    -- Temple of Sethraliss
    addonTable.data[1877] = {
        name = "Temple of Sethraliss",
        
        {
            npcID = 999999,
            encounterID = 2124, 
            bossName= "Adderis and Aspix",
            notes = {}
        },
        
        {
            npcID = 133384,
            encounterID = 2125, 
            bossName= "Merektha",
            notes = {}
        },
        
        {
            npcID = 133389,
            encounterID = 2126, 
            bossName= "Galvazzt",
            notes = {}
        },
        
        {
            npcID = 133392,
            encounterID = 2127, 
            bossName= "Avatar of Sethraliss",
            notes = {}
        },
        
    }
    
    -- Battle of Dazar'alor
    addonTable.data[2070] = {
        name = "Battle of Dazar'alor",
        
        {
            npcID = 999999,
            encounterID = 2285, 
            bossName= "Jadefire Masters",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2263, 
            bossName= "Grong, the Jungle Lord",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2268, 
            bossName= "Conclave of the Chosen",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2265, 
            bossName= "Champion of the Light",
            notes = {}
        },
        
        {
            npcID = 144796,
            encounterID = 2276, 
            bossName= "High Tinker Mekkatorque",
            notes = {}
        },
        
        {
            npcID = 145616,
            encounterID = 2272, 
            bossName= "King Rastakhan",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2280, 
            bossName= "Stormwall Blockade",
            notes = {}
        },
        
        {
            npcID = 144638,
            encounterID = 2284, 
            bossName= "Grong, the Revenant",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2266, 
            bossName= "Jadefire Masters",
            notes = {}
        },
        
        {
            npcID = 145261,
            encounterID = 2271, 
            bossName= "Opulence",
            notes = {}
        },
        
        {
            npcID = 165396,
            encounterID = 2281, 
            bossName= "Lady Jaina Proudmoore",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2265, 
            bossName= "Champion of the Light",
            notes = {}
        },
        
    }
    
    -- Crucible of Storms
    addonTable.data[2096] = {
        name = "Crucible of Storms",
        
        {
            npcID = 999999,
            encounterID = 2269, 
            bossName= "The Restless Cabal",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2273, 
            bossName= "Uu'nat, Harbinger of the Void",
            notes = {}
        },
        
    }
    
    -- Operation: Mechagon
    addonTable.data[2097] = {
        name = "Operation: Mechagon",
        
        {
            npcID = 152619,
            encounterID = 2260, 
            bossName= "King Mechagon",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2257, 
            bossName= "Tussle Tonks",
            notes = {}
        },
        
        {
            npcID = 144246,
            encounterID = 2258, 
            bossName= "K.U.-J.0.",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2259, 
            bossName= "Machinist's Garden",
            notes = {}
        },
        
        {
            npcID = 155157,
            encounterID = 2291, 
            bossName= "HK-8 Aerial Oppression Unit",
            notes = {}
        },
        
        {
            npcID = 150159,
            encounterID = 2290, 
            bossName= "King Gobbamak",
            notes = {}
        },
        
        {
            npcID = 150222,
            encounterID = 2292, 
            bossName= "Gunker",
            notes = {}
        },
        
        {
            npcID = 155407,
            encounterID = 2312, 
            bossName= "Trixie & Naeno",
            notes = {}
        },
        
    }
    
    -- The Eternal Palace
    addonTable.data[2164] = {
        name = "The Eternal Palace",
        
        {
            npcID = 154986,
            encounterID = 2289, 
            bossName= "Blackwater Behemoth",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2293, 
            bossName= "Za'qul, Harbinger of Ny'alotha",
            notes = {}
        },
        
        {
            npcID = 152128,
            encounterID = 2303, 
            bossName= "Orgozoa",
            notes = {}
        },
        
        {
            npcID = 155144,
            encounterID = 2298, 
            bossName= "Abyssal Commander Sivara",
            notes = {}
        },
        
        {
            npcID = 152364,
            encounterID = 2305, 
            bossName= "Radiance of Azshara",
            notes = {}
        },
        
        {
            npcID = 153142,
            encounterID = 2304, 
            bossName= "Lady Ashvane",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2311, 
            bossName= "The Queen's Court",
            notes = {}
        },
        
        {
            npcID = 54853,
            encounterID = 2299, 
            bossName= "Queen Azshara",
            notes = {}
        },
        
    }
    
    -- Ny'alotha, the Waking City
    addonTable.data[2217] = {
        name = "Ny'alotha, the Waking City",
        
        {
            npcID = 999999,
            encounterID = 2331, 
            bossName= "Ra-den the Despoiled",
            notes = {}
        },
        
        {
            npcID = 156523,
            encounterID = 2327, 
            bossName= "Maut",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2337, 
            bossName= "Carapace of N'Zoth",
            notes = {}
        },
        
        {
            npcID = 157231,
            encounterID = 2335, 
            bossName= "Shad'har the Insatiable",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2329, 
            bossName= "Wrathion, the Black Emperor",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2334, 
            bossName= "The Prophet Skitra",
            notes = {}
        },
        
        {
            npcID = 157354,
            encounterID = 2336, 
            bossName= "Vexiona",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2333, 
            bossName= "The Hivemind",
            notes = {}
        },
        
        {
            npcID = 157602,
            encounterID = 2343, 
            bossName= "Drest'agath",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2345, 
            bossName= "Il'gynoth, Corruption Reborn",
            notes = {}
        },
        
        {
            npcID = 158041,
            encounterID = 2344, 
            bossName= "N'Zoth the Corruptor",
            notes = {}
        },
        
        {
            npcID = 156575,
            encounterID = 2328, 
            bossName= "Dark Inquisitor Xanesh",
            notes = {}
        },
        
    }
    
end