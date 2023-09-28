local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:LegionInitializeData()
     
    -- Eye of Azshara
    addonTable.data[1456] = {
        name = "Eye of Azshara",
        
        {
            npcID = 91808,
            encounterID = 1813, 
            bossName= "Serpentrix",
            notes = {}
        },
        
        {
            npcID = 91784,
            encounterID = 1810, 
            bossName= "Warlord Parjesh",
            notes = {}
        },
        
        {
            npcID = 91789,
            encounterID = 1811, 
            bossName= "Lady Hatecoil",
            notes = {}
        },
        
        {
            npcID = 91797,
            encounterID = 1812, 
            bossName= "King Deepbeard",
            notes = {}
        },
        
        {
            npcID = 96028,
            encounterID = 1814, 
            bossName= "Wrath of Azshara",
            notes = {}
        },
        
    }
    
    -- Neltharion's Lair
    addonTable.data[1458] = {
        name = "Neltharion's Lair",
        
        {
            npcID = 91003,
            encounterID = 1790, 
            bossName= "Rokmora",
            notes = {}
        },
        
        {
            npcID = 91004,
            encounterID = 1791, 
            bossName= "Ularogg Cragshaper",
            notes = {}
        },
        
        {
            npcID = 91005,
            encounterID = 1792, 
            bossName= "Naraxas",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1793, 
            bossName= "Dargrul the Underking",
            notes = {}
        },
        
    }
    
    -- Darkheart Thicket
    addonTable.data[1466] = {
        name = "Darkheart Thicket",
        
        {
            npcID = 96512,
            encounterID = 1836, 
            bossName= "Archdruid Glaidalis",
            notes = {}
        },
        
        {
            npcID = 103344,
            encounterID = 1837, 
            bossName= "Oakheart",
            notes = {}
        },
        
        {
            npcID = 99200,
            encounterID = 1838, 
            bossName= "Dresaron",
            notes = {}
        },
        
        {
            npcID = 99192,
            encounterID = 1839, 
            bossName= "Shade of Xavius",
            notes = {}
        },
        
    }
    
    -- Halls of Valor
    addonTable.data[1477] = {
        name = "Halls of Valor",
        
        {
            npcID = 94960,
            encounterID = 1805, 
            bossName= "Hymdall",
            notes = {}
        },
        
        {
            npcID = 95833,
            encounterID = 1806, 
            bossName= "Hyrja",
            notes = {}
        },
        
        {
            npcID = 99868,
            encounterID = 1807, 
            bossName= "Fenryr",
            notes = {}
        },
        
        {
            npcID = 95675,
            encounterID = 1808, 
            bossName= "God-King Skovald",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1809, 
            bossName= "Odyn",
            notes = {}
        },
        
    }
    
    -- Maw of Souls
    addonTable.data[1492] = {
        name = "Maw of Souls",
        
        {
            npcID = 96756,
            encounterID = 1822, 
            bossName= "Ymiron, the Fallen King",
            notes = {}
        },
        
        {
            npcID = 96754,
            encounterID = 1823, 
            bossName= "Harbaron",
            notes = {}
        },
        
        {
            npcID = 114537,
            encounterID = 1824, 
            bossName= "Helya",
            notes = {}
        },
        
    }
    
    -- Vault of the Wardens
    addonTable.data[1493] = {
        name = "Vault of the Wardens",
        
        {
            npcID = 95885,
            encounterID = 1815, 
            bossName= "Tirathon Saltheril",
            notes = {}
        },
        
        {
            npcID = 95886,
            encounterID = 1816, 
            bossName= "Ash'golm",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1817, 
            bossName= "Glazer",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1818, 
            bossName= "Cordana Felsong",
            notes = {}
        },
        
        {
            npcID = 96015,
            encounterID = 1850, 
            bossName= "Inquisitor Tormentorum",
            notes = {}
        },
        
    }
    
    -- Black Rook Hold
    addonTable.data[1501] = {
        name = "Black Rook Hold",
        
        {
            npcID = 999999,
            encounterID = 1832, 
            bossName= "The Amalgam of Souls",
            notes = {}
        },
        
        {
            npcID = 98696,
            encounterID = 1833, 
            bossName= "Illysanna Ravencrest",
            notes = {}
        },
        
        {
            npcID = 98949,
            encounterID = 1834, 
            bossName= "Smashspite the Hateful",
            notes = {}
        },
        
        {
            npcID = 94923,
            encounterID = 1835, 
            bossName= "Lord Kur'talos Ravencrest",
            notes = {}
        },
        
    }
    
    -- The Arcway
    addonTable.data[1516] = {
        name = "The Arcway",
        
        {
            npcID = 98203,
            encounterID = 1827, 
            bossName= "Ivanyr",
            notes = {}
        },
        
        {
            npcID = 98205,
            encounterID = 1825, 
            bossName= "Corstilax",
            notes = {}
        },
        
        {
            npcID = 98206,
            encounterID = 1828, 
            bossName= "General Xakal",
            notes = {}
        },
        
        {
            npcID = 98207,
            encounterID = 1826, 
            bossName= "Nal'tira",
            notes = {}
        },
        
        {
            npcID = 98208,
            encounterID = 1829, 
            bossName= "Advisor Vandros",
            notes = {}
        },
        
    }
    
    -- The Emerald Nightmare
    addonTable.data[1520] = {
        name = "The Emerald Nightmare",
        
        {
            npcID = 100497,
            encounterID = 1841, 
            bossName= "Ursoc",
            notes = {}
        },
        
        {
            npcID = 102672,
            encounterID = 1853, 
            bossName= "Nythendra",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1854, 
            bossName= "Dragons of Nightmare",
            notes = {}
        },
        
        {
            npcID = 99192,
            encounterID = 1864, 
            bossName= "Xavius",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1873, 
            bossName= "Il'gynoth, Heart of Corruption",
            notes = {}
        },
        
        {
            npcID = 106087,
            encounterID = 1876, 
            bossName= "Elerethe Renferal",
            notes = {}
        },
        
        {
            npcID = 104636,
            encounterID = 1877, 
            bossName= "Cenarius",
            notes = {}
        },
        
    }
    
    -- The Nighthold
    addonTable.data[1530] = {
        name = "The Nighthold",
        
        {
            npcID = 102263,
            encounterID = 1849, 
            bossName= "Skorpyron",
            notes = {}
        },
        
        {
            npcID = 101002,
            encounterID = 1842, 
            bossName= "Krosus",
            notes = {}
        },
        
        {
            npcID = 104415,
            encounterID = 1865, 
            bossName= "Chronomatic Anomaly",
            notes = {}
        },
        
        {
            npcID = 104288,
            encounterID = 1867, 
            bossName= "Trilliax",
            notes = {}
        },
        
        {
            npcID = 103758,
            encounterID = 1863, 
            bossName= "Star Augur Etraeus",
            notes = {}
        },
        
        {
            npcID = 105503,
            encounterID = 1866, 
            bossName= "Gul'dan",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1872, 
            bossName= "Grand Magistrix Elisande",
            notes = {}
        },
        
        {
            npcID = 107699,
            encounterID = 1871, 
            bossName= "Spellblade Aluriel",
            notes = {}
        },
        
        {
            npcID = 104528,
            encounterID = 1886, 
            bossName= "High Botanist Tel'arn",
            notes = {}
        },
        
        {
            npcID = 103685,
            encounterID = 1862, 
            bossName= "Tichondrius",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1872, 
            bossName= "Grand Magistrix Elisande",
            notes = {}
        },
        
    }
    
    -- Assault on Violet Hold
    addonTable.data[1544] = {
        name = "Assault on Violet Hold",
        
        {
            npcID = 101950,
            encounterID = 1846, 
            bossName= "Mindflayer Kaahrj",
            notes = {}
        },
        
        {
            npcID = 101976,
            encounterID = 1847, 
            bossName= "Millificent Manastorm",
            notes = {}
        },
        
        {
            npcID = 101995,
            encounterID = 1848, 
            bossName= "Festerface",
            notes = {}
        },
        
        {
            npcID = 101951,
            encounterID = 1845, 
            bossName= "Shivermaw",
            notes = {}
        },
        
        {
            npcID = 102246,
            encounterID = 1852, 
            bossName= "Anub'esset",
            notes = {}
        },
        
        {
            npcID = 102387,
            encounterID = 1851, 
            bossName= "Sael'orn",
            notes = {}
        },
        
        {
            npcID = 102431,
            encounterID = 1855, 
            bossName= "Blood-Princess Thal'ena",
            notes = {}
        },
        
        {
            npcID = 102446,
            encounterID = 1856, 
            bossName= "Fel Lord Betrug",
            notes = {}
        },
        
    }
    
    -- Court of Stars
    addonTable.data[1571] = {
        name = "Court of Stars",
        
        {
            npcID = 104215,
            encounterID = 1868, 
            bossName= "Patrol Captain Gerdo",
            notes = {}
        },
        
        {
            npcID = 104217,
            encounterID = 1869, 
            bossName= "Talixae Flamewreath",
            notes = {}
        },
        
        {
            npcID = 101831,
            encounterID = 1870, 
            bossName= "Advisor Melandrus",
            notes = {}
        },
        
    }
    
    -- Trial of Valor
    addonTable.data[1648] = {
        name = "Trial of Valor",
        
        {
            npcID = 999999,
            encounterID = 1958, 
            bossName= "Odyn",
            notes = {}
        },
        
        {
            npcID = 114537,
            encounterID = 2008, 
            bossName= "Helya",
            notes = {}
        },
        
        {
            npcID = 114344,
            encounterID = 1962, 
            bossName= "Guarm",
            notes = {}
        },
        
    }
    
    -- Return to Karazhan
    addonTable.data[1651] = {
        name = "Return to Karazhan",
        
        {
            npcID = 114350,
            encounterID = 1965, 
            bossName= "Shade of Medivh",
            notes = {}
        },
        
        {
            npcID = 115831,
            encounterID = 1959, 
            bossName= "Mana Devourer",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1957, 
            bossName= "Opera Hall: Wikket",
            notes = {}
        },
        
        {
            npcID = 16457,
            encounterID = 1954, 
            bossName= "Maiden of Virtue",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1957, 
            bossName= "Opera Hall: Westfall Story",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1957, 
            bossName= "Opera Hall: Beautiful Beast",
            notes = {}
        },
        
        {
            npcID = 114262,
            encounterID = 1960, 
            bossName= "Attumen the Huntsman",
            notes = {}
        },
        
        {
            npcID = 15691,
            encounterID = 1964, 
            bossName= "The Curator",
            notes = {}
        },
        
        {
            npcID = 114312,
            encounterID = 1961, 
            bossName= "Moroes",
            notes = {}
        },
        
        {
            npcID = 114790,
            encounterID = 2017, 
            bossName= "Viz'aduum the Watcher",
            notes = {}
        },
        
    }
    
    -- Tomb of Sargeras
    addonTable.data[1676] = {
        name = "Tomb of Sargeras",
        
        {
            npcID = 116407,
            encounterID = 2036, 
            bossName= "Harjatan",
            notes = {}
        },
        
        {
            npcID = 115767,
            encounterID = 2037, 
            bossName= "Mistress Sassz'ine",
            notes = {}
        },
        
        {
            npcID = 115844,
            encounterID = 2032, 
            bossName= "Goroth",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2048, 
            bossName= "Demonic Inquisition",
            notes = {}
        },
        
        {
            npcID = 120436,
            encounterID = 2038, 
            bossName= "Fallen Avatar",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2054, 
            bossName= "The Desolate Host",
            notes = {}
        },
        
        {
            npcID = 118289,
            encounterID = 2052, 
            bossName= "Maiden of Vigilance",
            notes = {}
        },
        
        {
            npcID = 25315,
            encounterID = 2051, 
            bossName= "Kil'jaeden",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2050, 
            bossName= "Sisters of the Moon",
            notes = {}
        },
        
    }
    
    -- Cathedral of Eternal Night
    addonTable.data[1677] = {
        name = "Cathedral of Eternal Night",
        
        {
            npcID = 120793,
            encounterID = 2053, 
            bossName= "Mephistroth",
            notes = {}
        },
        
        {
            npcID = 119542,
            encounterID = 2039, 
            bossName= "Domatrax",
            notes = {}
        },
        
        {
            npcID = 117193,
            encounterID = 2055, 
            bossName= "Agronox",
            notes = {}
        },
        
        {
            npcID = 117194,
            encounterID = 2057, 
            bossName= "Thrashbite the Scornful",
            notes = {}
        },
        
    }
    
    -- Antorus, the Burning Throne
    addonTable.data[1712] = {
        name = "Antorus, the Burning Throne",
        
        {
            npcID = 125075,
            encounterID = 2069, 
            bossName= "Varimathras",
            notes = {}
        },
        
        {
            npcID = 121975,
            encounterID = 2063, 
            bossName= "Aggramar",
            notes = {}
        },
        
        {
            npcID = 124393,
            encounterID = 2064, 
            bossName= "Portal Keeper Hasabel",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2073, 
            bossName= "The Coven of Shivarra",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2074, 
            bossName= "Felhounds of Sargeras",
            notes = {}
        },
        
        {
            npcID = 123371,
            encounterID = 2076, 
            bossName= "Garothi Worldbreaker",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2070, 
            bossName= "Antoran High Command",
            notes = {}
        },
        
        {
            npcID = 125050,
            encounterID = 2088, 
            bossName= "Kin'garoth",
            notes = {}
        },
        
        {
            npcID = 125055,
            encounterID = 2082, 
            bossName= "Imonar the Soulhunter",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 2075, 
            bossName= "Eonar the Life-Binder",
            notes = {}
        },
        
        {
            npcID = 124828,
            encounterID = 2092, 
            bossName= "Argus the Unmaker",
            notes = {}
        },
        
    }
    
    -- Seat of the Triumvirate
    addonTable.data[1753] = {
        name = "Seat of the Triumvirate",
        
        {
            npcID = 122313,
            encounterID = 2065, 
            bossName= "Zuraal the Ascended",
            notes = {}
        },
        
        {
            npcID = 122316,
            encounterID = 2066, 
            bossName= "Saprish",
            notes = {}
        },
        
        {
            npcID = 124309,
            encounterID = 2067, 
            bossName= "Viceroy Nezhar",
            notes = {}
        },
        
        {
            npcID = 122314,
            encounterID = 2068, 
            bossName= "L'ura",
            notes = {}
        },
        
    }
    
end