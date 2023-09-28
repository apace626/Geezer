local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:DragonflightInitializeData()
    addonTable.data = {}
     
        -- Uldaman: Legacy of Tyr
        addonTable.data[2451] = {
            name = "Uldaman: Legacy of Tyr",
            
            {
                npcID = 999999,
                encounterID = 2555, 
                bossName= "The Lost Dwarves",
                notes = {}
            },
            
            {
                npcID = 184422,
                encounterID = 2558, 
                bossName= "Emberon",
                notes = {}
            },
            
            {
                npcID = 184125,
                encounterID = 2559, 
                bossName= "Chrono-Lord Deios",
                notes = {}
            },
            
            {
                npcID = 184124,
                encounterID = 2557, 
                bossName= "Sentinel Talondras",
                notes = {}
            },
            
            {
                npcID = 184018,
                encounterID = 2556, 
                bossName= "Bromach",
                notes = {}
            },
            
        }
     
        -- The Azure Vault
        addonTable.data[2515] = {
            name = "The Azure Vault",
            
            {
                npcID = 199614,
                encounterID = 2583, 
                bossName= "Telash Greywing",
                notes = {}
            },
            
            {
                npcID = 186644,
                encounterID = 2582, 
                bossName= "Leymor",
                notes = {}
            },
            
            {
                npcID = 186739,
                encounterID = 2585, 
                bossName= "Azureblade",
                notes = {}
            },
            
            {
                npcID = 186738,
                encounterID = 2584, 
                bossName= "Umbrelskul",
                notes = {}
            },
            
        }
     
        -- The Nokhud Offensive
        addonTable.data[2516] = {
            name = "The Nokhud Offensive",
            
            {
                npcID = 186151,
                encounterID = 2580, 
                bossName= "Balakar Khan",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2581, 
                bossName= "Teera and Maruuk",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2636, 
                bossName= "The Raging Tempest",
                notes = {}
            },
            
            {
                npcID = 186616,
                encounterID = 2637, 
                bossName= "Granyth",
                notes = {}
            },
            
        }
     
        -- Neltharus
        addonTable.data[2519] = {
            name = "Neltharus",
            
            {
                npcID = 189478,
                encounterID = 2612, 
                bossName= "Forgemaster Gorek",
                notes = {}
            },
            
            {
                npcID = 189340,
                encounterID = 2613, 
                bossName= "Chargath, Bane of Scales",
                notes = {}
            },
            
            {
                npcID = 181861,
                encounterID = 2610, 
                bossName= "Magmatusk",
                notes = {}
            },
            
            {
                npcID = 189901,
                encounterID = 2611, 
                bossName= "Warlord Sargha",
                notes = {}
            },
            
        }
     
        -- Brackenhide Hollow
        addonTable.data[2520] = {
            name = "Brackenhide Hollow",
            
            {
                npcID = 999999,
                encounterID = 2570, 
                bossName= "Hackclaw's War-Band",
                notes = {}
            },
            
            {
                npcID = 186116,
                encounterID = 2567, 
                bossName= "Gutshot",
                notes = {}
            },
            
            {
                npcID = 186120,
                encounterID = 2568, 
                bossName= "Treemouth",
                notes = {}
            },
            
            {
                npcID = 186121,
                encounterID = 2569, 
                bossName= "Decatriarch Wratheye",
                notes = {}
            },
            
        }
     
        -- Ruby Life Pools
        addonTable.data[2521] = {
            name = "Ruby Life Pools",
            
            {
                npcID = 189232,
                encounterID = 2606, 
                bossName= "Kokia Blazehoof",
                notes = {}
            },
            
            {
                npcID = 188252,
                encounterID = 2609, 
                bossName= "Melidrussa Chillworn",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2623, 
                bossName= "Kyrakka and Erkhart Stormvein",
                notes = {}
            },
            
        }
     
        -- Vault of the Incarnates
        addonTable.data[2522] = {
            name = "Vault of the Incarnates",
            
            {
                npcID = 184972,
                encounterID = 2587, 
                bossName= "Eranog",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2592, 
                bossName= "Sennarth, the Cold Breath",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2590, 
                bossName= "The Primal Council",
                notes = {}
            },
            
            {
                npcID = 181378,
                encounterID = 2605, 
                bossName= "Kurog Grimtotem",
                notes = {}
            },
            
            {
                npcID = 190245,
                encounterID = 2614, 
                bossName= "Broodkeeper Diurna",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2607, 
                bossName= "Raszageth the Storm-Eater",
                notes = {}
            },
            
            {
                npcID = 190496,
                encounterID = 2639, 
                bossName= "Terros",
                notes = {}
            },
            
            {
                npcID = 189813,
                encounterID = 2635, 
                bossName= "Dathea, Ascended",
                notes = {}
            },
            
        }
     
        -- Algeth'ar Academy
        addonTable.data[2526] = {
            name = "Algeth'ar Academy",
            
            {
                npcID = 191736,
                encounterID = 2564, 
                bossName= "Crawth",
                notes = {}
            },
            
            {
                npcID = 194181,
                encounterID = 2562, 
                bossName= "Vexamus",
                notes = {}
            },
            
            {
                npcID = 196482,
                encounterID = 2563, 
                bossName= "Overgrown Ancient",
                notes = {}
            },
            
            {
                npcID = 190609,
                encounterID = 2565, 
                bossName= "Echo of Doragosa",
                notes = {}
            },
            
        }
     
        -- Halls of Infusion
        addonTable.data[2527] = {
            name = "Halls of Infusion",
            
            {
                npcID = 189719,
                encounterID = 2615, 
                bossName= "Watcher Irideus",
                notes = {}
            },
            
            {
                npcID = 189722,
                encounterID = 2616, 
                bossName= "Gulping Goliath",
                notes = {}
            },
            
            {
                npcID = 189727,
                encounterID = 2617, 
                bossName= "Khajin the Unyielding",
                notes = {}
            },
            
            {
                npcID = 189729,
                encounterID = 2618, 
                bossName= "Primal Tsunami",
                notes = {}
            },
            
        }
     
        -- Aberrus, the Shadowed Crucible
        addonTable.data[2569] = {
            name = "Aberrus, the Shadowed Crucible",
            
            {
                npcID = 999999,
                encounterID = 2685, 
                bossName= "Scalecommander Sarkareth",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2688, 
                bossName= "Kazzara, the Hellforged",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2684, 
                bossName= "Echo of Neltharion",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2682, 
                bossName= "Assault of the Zaqali",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2680, 
                bossName= "Rashok, the Elder",
                notes = {}
            },
            
            {
                npcID = 201579,
                encounterID = 2683, 
                bossName= "Magmorax",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2687, 
                bossName= "The Amalgamation Chamber",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2693, 
                bossName= "The Forgotten Experiments",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2689, 
                bossName= "The Vigilant Steward, Zskarn",
                notes = {}
            },
            
        }
     
        -- Dawn of the Infinite
        addonTable.data[2579] = {
            name = "Dawn of the Infinite",
            
            {
                npcID = 198995,
                encounterID = 2666, 
                bossName= "Chronikar",
                notes = {}
            },
            
            {
                npcID = 198998,
                encounterID = 2670, 
                bossName= "Tyr, the Infinite Keeper",
                notes = {}
            },
            
            {
                npcID = 206238,
                encounterID = 2667, 
                bossName= "Manifested Timeways",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2672, 
                bossName= "Time-Lost Battlefield",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2672, 
                bossName= "Time-Lost Battlefield",
                notes = {}
            },
            
            {
                npcID = 207639,
                encounterID = 2668, 
                bossName= "Blight of Galakrond",
                notes = {}
            },
            
            {
                npcID = 202789,
                encounterID = 2671, 
                bossName= "Morchie",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 2669, 
                bossName= "Iridikron the Stonescaled",
                notes = {}
            },
            
            {
                npcID = 184125,
                encounterID = 2673, 
                bossName= "Chrono-Lord Deios",
                notes = {}
            },
            
        }
     
end