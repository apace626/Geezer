local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
     
    -- Bloodmaul Slag Mines
    addonTable.data[1175] = {
        name = "Bloodmaul Slag Mines",
        
        {
            npcID = 75786,
            encounterID = 1652, 
            bossName= "Roltall",
            notes = {}
        },
        
        {
            npcID = 74787,
            encounterID = 1653, 
            bossName= "Slave Watcher Crushto",
            notes = {}
        },
        
        {
            npcID = 74790,
            encounterID = 1654, 
            bossName= "Gug'rokk",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1655, 
            bossName= "Magmolatus",
            notes = {}
        },
        
    }
    
    -- Shadowmoon Burial Grounds
    addonTable.data[1176] = {
        name = "Shadowmoon Burial Grounds",
        
        {
            npcID = 75509,
            encounterID = 1677, 
            bossName= "Sadana Bloodfury",
            notes = {}
        },
        
        {
            npcID = 75452,
            encounterID = 1679, 
            bossName= "Bonemaw",
            notes = {}
        },
        
        {
            npcID = 175729,
            encounterID = 1682, 
            bossName= "Ner'zhul",
            notes = {}
        },
        
        {
            npcID = 75829,
            encounterID = 1688, 
            bossName= "Nhallish",
            notes = {}
        },
        
    }
    
    -- Auchindoun
    addonTable.data[1182] = {
        name = "Auchindoun",
        
        {
            npcID = 75839,
            encounterID = 1686, 
            bossName= "Vigilant Kaathar",
            notes = {}
        },
        
        {
            npcID = 76177,
            encounterID = 1685, 
            bossName= "Soulbinder Nyami",
            notes = {}
        },
        
        {
            npcID = 75927,
            encounterID = 1678, 
            bossName= "Azzakel",
            notes = {}
        },
        
        {
            npcID = 77734,
            encounterID = 1714, 
            bossName= "Teron'gor",
            notes = {}
        },
        
    }
    
    -- Iron Docks
    addonTable.data[1195] = {
        name = "Iron Docks",
        
        {
            npcID = 81305,
            encounterID = 1749, 
            bossName= "Fleshrender Nok'gar",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1748, 
            bossName= "Grimrail Enforcers",
            notes = {}
        },
        
        {
            npcID = 79852,
            encounterID = 1750, 
            bossName= "Oshir",
            notes = {}
        },
        
        {
            npcID = 83612,
            encounterID = 1754, 
            bossName= "Skulloc",
            notes = {}
        },
        
    }
    
    -- Blackrock Foundry
    addonTable.data[1205] = {
        name = "Blackrock Foundry",
        
        {
            npcID = 77325,
            encounterID = 1704, 
            bossName= "Blackhand",
            notes = {}
        },
        
        {
            npcID = 76865,
            encounterID = 1694, 
            bossName= "Beastlord Darmac",
            notes = {}
        },
        
        {
            npcID = 76814,
            encounterID = 1689, 
            bossName= "Flamebender Ka'graz",
            notes = {}
        },
        
        {
            npcID = 76906,
            encounterID = 1692, 
            bossName= "Operator Thogar",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1690, 
            bossName= "The Blast Furnace",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1693, 
            bossName= "Hans'gar and Franzok",
            notes = {}
        },
        
        {
            npcID = 19044,
            encounterID = 1691, 
            bossName= "Gruul",
            notes = {}
        },
        
        {
            npcID = 77692,
            encounterID = 1713, 
            bossName= "Kromog",
            notes = {}
        },
        
        {
            npcID = 77182,
            encounterID = 1696, 
            bossName= "Oregorger",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1695, 
            bossName= "The Iron Maidens",
            notes = {}
        },
        
    }
    
    -- Grimrail Depot
    addonTable.data[1208] = {
        name = "Grimrail Depot",
        
        {
            npcID = 80005,
            encounterID = 1736, 
            bossName= "Skylord Tovra",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1715, 
            bossName= "Rocketspark and Borka",
            notes = {}
        },
        
        {
            npcID = 79545,
            encounterID = 1732, 
            bossName= "Nitrogg Thundertower",
            notes = {}
        },
        
    }
    
    -- Skyreach
    addonTable.data[1209] = {
        name = "Skyreach",
        
        {
            npcID = 75964,
            encounterID = 1698, 
            bossName= "Ranjit",
            notes = {}
        },
        
        {
            npcID = 76141,
            encounterID = 1699, 
            bossName= "Araknath",
            notes = {}
        },
        
        {
            npcID = 76379,
            encounterID = 1700, 
            bossName= "Rukhran",
            notes = {}
        },
        
        {
            npcID = 76266,
            encounterID = 1701, 
            bossName= "High Sage Viryx",
            notes = {}
        },
        
    }
    
    -- Highmaul
    addonTable.data[1228] = {
        name = "Highmaul",
        
        {
            npcID = 77404,
            encounterID = 1706, 
            bossName= "The Butcher",
            notes = {}
        },
        
        {
            npcID = 78714,
            encounterID = 1721, 
            bossName= "Kargath Bladefist",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1719, 
            bossName= "Twin Ogron",
            notes = {}
        },
        
        {
            npcID = 79015,
            encounterID = 1723, 
            bossName= "Ko'ragh",
            notes = {}
        },
        
        {
            npcID = 78948,
            encounterID = 1722, 
            bossName= "Tectus",
            notes = {}
        },
        
        {
            npcID = 78491,
            encounterID = 1720, 
            bossName= "Brackenspore",
            notes = {}
        },
        
        {
            npcID = 77428,
            encounterID = 1705, 
            bossName= "Imperator Mar'gok",
            notes = {}
        },
        
    }
    
    -- The Everbloom
    addonTable.data[1279] = {
        name = "The Everbloom",
        
        {
            npcID = 84550,
            encounterID = 1752, 
            bossName= "Xeri'tac",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1757, 
            bossName= "Ancient Protectors",
            notes = {}
        },
        
        {
            npcID = 82682,
            encounterID = 1751, 
            bossName= "Archmage Sol",
            notes = {}
        },
        
        {
            npcID = 83846,
            encounterID = 1756, 
            bossName= "Yalnu",
            notes = {}
        },
        
        {
            npcID = 81522,
            encounterID = 1746, 
            bossName= "Witherbark",
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
    
    -- Hellfire Citadel
    addonTable.data[1448] = {
        name = "Hellfire Citadel",
        
        {
            npcID = 91809,
            encounterID = 1783, 
            bossName= "Gorefiend",
            notes = {}
        },
        
        {
            npcID = 89890,
            encounterID = 1777, 
            bossName= "Fel Lord Zakuun",
            notes = {}
        },
        
        {
            npcID = 90776,
            encounterID = 1787, 
            bossName= "Kormrok",
            notes = {}
        },
        
        {
            npcID = 93439,
            encounterID = 1784, 
            bossName= "Tyrant Velhari",
            notes = {}
        },
        
        {
            npcID = 54969,
            encounterID = 1795, 
            bossName= "Mannoroth",
            notes = {}
        },
        
        {
            npcID = 90378,
            encounterID = 1786, 
            bossName= "Kilrogg Deadeye",
            notes = {}
        },
        
        {
            npcID = 90284,
            encounterID = 1785, 
            bossName= "Iron Reaver",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1778, 
            bossName= "Hellfire Assault",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1794, 
            bossName= "Socrethar the Eternal",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 1798, 
            bossName= "Hellfire High Council",
            notes = {}
        },
        
        {
            npcID = 90316,
            encounterID = 1788, 
            bossName= "Shadow-Lord Iskar",
            notes = {}
        },
        
        {
            npcID = 17968,
            encounterID = 1799, 
            bossName= "Archimonde",
            notes = {}
        },
        
        {
            npcID = 93068,
            encounterID = 1800, 
            bossName= "Xhul'horac",
            notes = {}
        },
        
    }
    
end