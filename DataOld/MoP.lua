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
            notes = {}
        },
        
        {
            npcID = 56747,
            encounterID = 1303, 
            bossName= "Gu Cloudstrike",
            notes = {}
        },
        
        {
            npcID = 56719,
            encounterID = 1305, 
            bossName= "Sha of Violence",
            notes = {}
        },
        
        {
            npcID = 56884,
            encounterID = 1306, 
            bossName= "Taran Zhu",
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
    
    -- Stormstout Brewery
    addonTable.data[961] = {
        name = "Stormstout Brewery",
        
        {
            npcID = 56637,
            encounterID = 1412, 
            bossName= "Ook-Ook",
            notes = {}
        },
        
        {
            npcID = 56717,
            encounterID = 1413, 
            bossName= "Hoptallus",
            notes = {}
        },
        
        {
            npcID = 59479,
            encounterID = 1414, 
            bossName= "Yan-Zhu the Uncasked",
            notes = {}
        },
        
    }
    
    -- Gate of the Setting Sun
    addonTable.data[962] = {
        name = "Gate of the Setting Sun",
        
        {
            npcID = 56877,
            encounterID = 1419, 
            bossName= "Raigonn",
            notes = {}
        },
        
        {
            npcID = 56906,
            encounterID = 1397, 
            bossName= "Saboteur Kip'tilak",
            notes = {}
        },
        
        {
            npcID = 56589,
            encounterID = 1405, 
            bossName= "Striker Ga'dok",
            notes = {}
        },
        
        {
            npcID = 56636,
            encounterID = 1406, 
            bossName= "Commander Ri'mok",
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
    
    -- Terrace of Endless Spring
    addonTable.data[996] = {
        name = "Terrace of Endless Spring",
        
        {
            npcID = 999999,
            encounterID = 1409, 
            bossName= "Protectors of the Endless",
            notes = {}
        },
        
        {
            npcID = 60999,
            encounterID = 1431, 
            bossName= "Sha of Fear",
            notes = {}
        },
        
        {
            npcID = 62983,
            encounterID = 1506, 
            bossName= "Lei Shi",
            notes = {}
        },
        
        {
            npcID = 62442,
            encounterID = 1505, 
            bossName= "Tsulong",
            notes = {}
        },
        
    }
    
    -- Scarlet Halls
    addonTable.data[1001] = {
        name = "Scarlet Halls",
        
        {
            npcID = 58632,
            encounterID = 1421, 
            bossName= "Armsmaster Harlan",
            notes = {}
        },
        
        {
            npcID = 59150,
            encounterID = 1420, 
            bossName= "Flameweaver Koegler",
            notes = {}
        },
        
        {
            npcID = 59303,
            encounterID = 1422, 
            bossName= "Houndmaster Braun",
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
    
    -- Mogu'shan Vaults
    addonTable.data[1008] = {
        name = "Mogu'shan Vaults",
        
        {
            npcID = 999999,
            encounterID = 1407, 
            bossName= "Will of the Emperor",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1395, 
            bossName= "The Stone Guard",
            notes = {}
        },
        
        {
            npcID = 60143,
            encounterID = 1434, 
            bossName= "Gara'jal the Spiritbinder",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1436, 
            bossName= "The Spirit Kings",
            notes = {}
        },
        
        {
            npcID = 60009,
            encounterID = 1390, 
            bossName= "Feng the Accursed",
            notes = {}
        },
        
        {
            npcID = 60410,
            encounterID = 1500, 
            bossName= "Elegon",
            notes = {}
        },
        
    }
    
    -- Heart of Fear
    addonTable.data[1009] = {
        name = "Heart of Fear",
        
        {
            npcID = 62164,
            encounterID = 1463, 
            bossName= "Garalon",
            notes = {}
        },
        
        {
            npcID = 62511,
            encounterID = 1499, 
            bossName= "Amber-Shaper Un'sok",
            notes = {}
        },
        
        {
            npcID = 62397,
            encounterID = 1498, 
            bossName= "Wind Lord Mel'jarak",
            notes = {}
        },
        
        {
            npcID = 62837,
            encounterID = 1501, 
            bossName= "Grand Empress Shek'zeer",
            notes = {}
        },
        
        {
            npcID = 62543,
            encounterID = 1504, 
            bossName= "Blade Lord Ta'yak",
            notes = {}
        },
        
        {
            npcID = 62980,
            encounterID = 1507, 
            bossName= "Imperial Vizier Zor'lok",
            notes = {}
        },
        
    }
    
    -- Siege of Niuzao Temple
    addonTable.data[1011] = {
        name = "Siege of Niuzao Temple",
        
        {
            npcID = 61485,
            encounterID = 1447, 
            bossName= "General Pa'valak",
            notes = {}
        },
        
        {
            npcID = 61567,
            encounterID = 1465, 
            bossName= "Vizier Jin'bak",
            notes = {}
        },
        
        {
            npcID = 62205,
            encounterID = 1464, 
            bossName= "Wing Leader Ner'onok",
            notes = {}
        },
        
        {
            npcID = 61634,
            encounterID = 1502, 
            bossName= "Commander Vo'jak",
            notes = {}
        },
        
    }
    
    -- Throne of Thunder
    addonTable.data[1098] = {
        name = "Throne of Thunder",
        
        {
            npcID = 999999,
            encounterID = 1570, 
            bossName= "Council of Elders",
            notes = {}
        },
        
        {
            npcID = 68078,
            encounterID = 1559, 
            bossName= "Iron Qon",
            notes = {}
        },
        
        {
            npcID = 68036,
            encounterID = 1572, 
            bossName= "Durumu the Forgotten",
            notes = {}
        },
        
        {
            npcID = 68476,
            encounterID = 1575, 
            bossName= "Horridon",
            notes = {}
        },
        
        {
            npcID = 69017,
            encounterID = 1574, 
            bossName= "Primordius",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1578, 
            bossName= "Megaera",
            notes = {}
        },
        
        {
            npcID = 69427,
            encounterID = 1576, 
            bossName= "Dark Animus",
            notes = {}
        },
        
        {
            npcID = 67977,
            encounterID = 1565, 
            bossName= "Tortos",
            notes = {}
        },
        
        {
            npcID = 69465,
            encounterID = 1577, 
            bossName= "Jin'rokh the Breaker",
            notes = {}
        },
        
        {
            npcID = 69712,
            encounterID = 1573, 
            bossName= "Ji-Kun",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1560, 
            bossName= "Twin Empyreans",
            notes = {}
        },
        
        {
            npcID = 156866,
            encounterID = 1580, 
            bossName= "Ra-den",
            notes = {}
        },
        
        {
            npcID = 68397,
            encounterID = 1579, 
            bossName= "Lei Shen",
            notes = {}
        },
        
    }
    
    -- Siege of Orgrimmar
    addonTable.data[1136] = {
        name = "Siege of Orgrimmar",
        
        {
            npcID = 71454,
            encounterID = 1595, 
            bossName= "Malkorok",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1598, 
            bossName= "The Fallen Protectors",
            notes = {}
        },
        
        {
            npcID = 71515,
            encounterID = 1603, 
            bossName= "General Nazgrim",
            notes = {}
        },
        
        {
            npcID = 71529,
            encounterID = 1599, 
            bossName= "Thok the Bloodthirsty",
            notes = {}
        },
        
        {
            npcID = 71543,
            encounterID = 1602, 
            bossName= "Immerseus",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1593, 
            bossName= "Paragons of the Klaxxi",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1606, 
            bossName= "Kor'kron Dark Shaman",
            notes = {}
        },
        
        {
            npcID = 71466,
            encounterID = 1600, 
            bossName= "Iron Juggernaut",
            notes = {}
        },
        
        {
            npcID = 71504,
            encounterID = 1601, 
            bossName= "Siegecrafter Blackfuse",
            notes = {}
        },
        
        {
            npcID = 153325,
            encounterID = 1624, 
            bossName= "Norushen",
            notes = {}
        },
        
        {
            npcID = 71734,
            encounterID = 1604, 
            bossName= "Sha of Pride",
            notes = {}
        },
        
        {
            npcID = 72249,
            encounterID = 1622, 
            bossName= "Galakras",
            notes = {}
        },
        
        {
            npcID = 71865,
            encounterID = 1623, 
            bossName= "Garrosh Hellscream",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1594, 
            bossName= "Spoils of Pandaria",
            notes = {}
        },
        
        {
            npcID = 72249,
            encounterID = 1622, 
            bossName= "Galakras",
            notes = {}
        },
        
    }
    
end