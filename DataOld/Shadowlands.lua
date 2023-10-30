local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ShadowlandsInitializeData()
     
    -- Sanguine Depths
    addonTable.data[2284] = {
        name = "Sanguine Depths",
        
        {
            npcID = 162100,
            encounterID = 2360, 
            bossName= "Kryxis the Voracious",
            notes = {
                "Do not face the boss toward the edge because knockback - "..S(319650),
                "Interrupt "..S(319654),
                S(319713).." - Move between the targeted player and the boss to split the damage",
                "At full energy boss casts "..S(319685)..", everyone should be on the same side of the boss. The smash will cause knockback and spawn orbs. Soak the orbs before they get to the boss.",
            }
        },
        
        {
            npcID = 165318,
            encounterID = 2363, 
            bossName= "General Kaal",
            notes = {}
        },
        
        {
            npcID = 162103,
            encounterID = 2361, 
            bossName= "Executor Tarvold",
            notes = {}
        },
        
        {
            npcID = 162102,
            encounterID = 2362, 
            bossName= "Grand Proctor Beryllia",
            notes = {}
        },
        
    }
    
    -- Spires of Ascension
    addonTable.data[2285] = {
        name = "Spires of Ascension",
        
        {
            npcID = 999999,
            encounterID = 2357, 
            bossName= "Kin-Tara",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2359, 
            bossName= "Devos, Paragon of Doubt",
            notes = {}
        },
        
        {
            npcID = 162060,
            encounterID = 2358, 
            bossName= "Oryphrion",
            notes = {}
        },
        
        {
            npcID = 162058,
            encounterID = 2356, 
            bossName= "Ventunax",
            notes = {}
        },
        
    }
    
    -- The Necrotic Wake
    addonTable.data[2286] = {
        name = "The Necrotic Wake",
        
        {
            npcID = 999999,
            encounterID = 2388, 
            bossName= "Amarth, The Harvester",
            notes = {}
        },
        
        {
            npcID = 166882,
            encounterID = 2389, 
            bossName= "Surgeon Stitchflesh",
            notes = {}
        },
        
        {
            npcID = 162691,
            encounterID = 2387, 
            bossName= "Blightbone",
            notes = {}
        },
        
        {
            npcID = 166945,
            encounterID = 2390, 
            bossName= "Nalthor the Rimebinder",
            notes = {}
        },
        
    }
    
    -- Halls of Atonement
    addonTable.data[2287] = {
        name = "Halls of Atonement",
        
        {
            npcID = 156827,
            encounterID = 2380, 
            bossName= "Echelon",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2401, 
            bossName= "Halkias, the Sin-Stained Goliath",
            notes = {}
        },
        
        {
            npcID = 165410,
            encounterID = 2403, 
            bossName= "High Adjudicator Aleez",
            notes = {}
        },
        
        {
            npcID = 164218,
            encounterID = 2381, 
            bossName= "Lord Chamberlain",
            notes = {}
        },
        
    }
    
    -- Plaguefall
    addonTable.data[2289] = {
        name = "Plaguefall",
        
        {
            npcID = 164967,
            encounterID = 2384, 
            bossName= "Doctor Ickus",
            notes = {}
        },
        
        {
            npcID = 164267,
            encounterID = 2386, 
            bossName= "Margrave Stradama",
            notes = {}
        },
        
        {
            npcID = 164255,
            encounterID = 2382, 
            bossName= "Globgrog",
            notes = {}
        },
        
        {
            npcID = 164266,
            encounterID = 2385, 
            bossName= "Domina Venomblade",
            notes = {}
        },
        
    }
    
    -- Mists of Tirna Scithe
    addonTable.data[2290] = {
        name = "Mists of Tirna Scithe",
        
        {
            npcID = 164567,
            encounterID = 2397, 
            bossName= "Ingra Maloch",
            notes = {}
        },
        
        {
            npcID = 170217,
            encounterID = 2392, 
            bossName= "Mistcaller",
            notes = {}
        },
        
        {
            npcID = 164517,
            encounterID = 2393, 
            bossName= "Tred'ova",
            notes = {}
        },
        
    }
    
    -- De Other Side
    addonTable.data[2291] = {
        name = "De Other Side",
        
        {
            npcID = 999999,
            encounterID = 2400, 
            bossName= "Dealer Xy'exa",
            notes = {}
        },
        
        {
            npcID = 166473,
            encounterID = 2395, 
            bossName= "Hakkar the Soulflayer",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2394, 
            bossName= "The Manastorms",
            notes = {}
        },
        
        {
            npcID = 169769,
            encounterID = 2396, 
            bossName= "Mueh'zala",
            notes = {}
        },
        
    }
    
    -- Theater of Pain
    addonTable.data[2293] = {
        name = "Theater of Pain",
        
        {
            npcID = 162309,
            encounterID = 2364, 
            bossName= "Kul'tharok",
            notes = {}
        },
        
        {
            npcID = 162329,
            encounterID = 2366, 
            bossName= "Xav the Unfallen",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2391, 
            bossName= "An Affront of Challengers",
            notes = {}
        },
        
        {
            npcID = 162317,
            encounterID = 2365, 
            bossName= "Gorechop",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2404, 
            bossName= "Mordretha, the Endless Empress",
            notes = {}
        },
        
    }
    
    -- Castle Nathria
    addonTable.data[2296] = {
        name = "Castle Nathria",
        
        {
            npcID = 172145,
            encounterID = 2398, 
            bossName= "Shriekwing",
            notes = {}
        },
        
        {
            npcID = 174733,
            encounterID = 2399, 
            bossName= "Sludgefist",
            notes = {}
        },
        
        {
            npcID = 166644,
            encounterID = 2405, 
            bossName= "Artificer Xy'mox",
            notes = {}
        },
        
        {
            npcID = 167517,
            encounterID = 2406, 
            bossName= "Lady Inerva Darkvein",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2402, 
            bossName= "Sun King's Salvation",
            notes = {}
        },
        
        {
            npcID = 168938,
            encounterID = 2407, 
            bossName= "Sire Denathrius",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2417, 
            bossName= "Stone Legion Generals",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2412, 
            bossName= "The Council of Blood",
            notes = {}
        },
        
        {
            npcID = 164261,
            encounterID = 2383, 
            bossName= "Hungering Destroyer",
            notes = {}
        },
        
        {
            npcID = 165066,
            encounterID = 2418, 
            bossName= "Huntsman Altimor",
            notes = {}
        },
        
    }
    
    -- Sanctum of Domination
    addonTable.data[2450] = {
        name = "Sanctum of Domination",
        
        {
            npcID = 152253,
            encounterID = 2423, 
            bossName= "The Tarragrue",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2429, 
            bossName= "The Nine",
            notes = {}
        },
        
        {
            npcID = 175559,
            encounterID = 2422, 
            bossName= "Kel'Thuzad",
            notes = {}
        },
        
        {
            npcID = 175732,
            encounterID = 2435, 
            bossName= "Sylvanas Windrunner",
            notes = {}
        },
        
        {
            npcID = 180018,
            encounterID = 2433, 
            bossName= "The Eye of the Jailer",
            notes = {}
        },
        
        {
            npcID = 176523,
            encounterID = 2430, 
            bossName= "Painsmith Raznal",
            notes = {}
        },
        
        {
            npcID = 175729,
            encounterID = 2432, 
            bossName= "Remnant of Ner'zhul",
            notes = {}
        },
        
        {
            npcID = 175727,
            encounterID = 2434, 
            bossName= "Soulrender Dormazain",
            notes = {}
        },
        
        {
            npcID = 175731,
            encounterID = 2436, 
            bossName= "Guardian of the First Ones",
            notes = {}
        },
        
        {
            npcID = 179390,
            encounterID = 2431, 
            bossName= "Fatescribe Roh-Kalo",
            notes = {}
        },
        
    }
    
    -- Sepulcher of the First Ones
    addonTable.data[2481] = {
        name = "Sepulcher of the First Ones",
        
        {
            npcID = 999999,
            encounterID = 2543, 
            bossName= "Lords of Dread",
            notes = {}
        },
        
        {
            npcID = 180773,
            encounterID = 2512, 
            bossName= "Vigilant Guardian",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2540, 
            bossName= "Dausegne, the Fallen Oracle",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2544, 
            bossName= "Prototype Pantheon",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2539, 
            bossName= "Lihuvim, Principal Architect",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2529, 
            bossName= "Halondrus the Reclaimer",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2537, 
            bossName= "The Jailer",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2542, 
            bossName= "Skolex, the Insatiable Ravener",
            notes = {}
        },
        
        {
            npcID = 182777,
            encounterID = 2549, 
            bossName= "Rygelon",
            notes = {}
        },
        
        {
            npcID = 181954,
            encounterID = 2546, 
            bossName= "Anduin Wrynn",
            notes = {}
        },
        
        {
            npcID = 166644,
            encounterID = 2553, 
            bossName= "Artificer Xy'mox",
            notes = {}
        },
        
    }
    
end