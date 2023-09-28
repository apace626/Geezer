local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
     
    -- The Black Morass
    addonTable.data[269] = {
        name = "The Black Morass",
        
        {
            npcID = 17881,
            encounterID = 1919, 
            bossName= "Aeonus",
            notes = {}
        },
        
        {
            npcID = 17879,
            encounterID = 1920, 
            bossName= "Chrono Lord Deja",
            notes = {}
        },
        
        {
            npcID = 17880,
            encounterID = 1921, 
            bossName= "Temporus",
            notes = {}
        },
        
    }
    
    -- Karazhan
    addonTable.data[532] = {
        name = "Karazhan",
        
        {
            npcID = 114262,
            encounterID = 652, 
            bossName= "Attumen the Huntsman",
            notes = {}
        },
        
        {
            npcID = 114312,
            encounterID = 653, 
            bossName= "Moroes",
            notes = {}
        },
        
        {
            npcID = 16457,
            encounterID = 654, 
            bossName= "Maiden of Virtue",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 655, 
            bossName= "Opera Hall",
            notes = {}
        },
        
        {
            npcID = 15691,
            encounterID = 656, 
            bossName= "The Curator",
            notes = {}
        },
        
        {
            npcID = 16524,
            encounterID = 658, 
            bossName= "Shade of Aran",
            notes = {}
        },
        
        {
            npcID = 15688,
            encounterID = 657, 
            bossName= "Terestian Illhoof",
            notes = {}
        },
        
        {
            npcID = 15689,
            encounterID = 659, 
            bossName= "Netherspite",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 660, 
            bossName= "Chess Event",
            notes = {}
        },
        
        {
            npcID = 15690,
            encounterID = 661, 
            bossName= "Prince Malchezaar",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 660, 
            bossName= "Chess Event",
            notes = {}
        },
        
    }
    
    -- Hyjal Summit
    addonTable.data[534] = {
        name = "Hyjal Summit",
        
        {
            npcID = 17767,
            encounterID = 618, 
            bossName= "Rage Winterchill",
            notes = {}
        },
        
        {
            npcID = 17808,
            encounterID = 619, 
            bossName= "Anetheron",
            notes = {}
        },
        
        {
            npcID = 17888,
            encounterID = 620, 
            bossName= "Kaz'rogal",
            notes = {}
        },
        
        {
            npcID = 17842,
            encounterID = 621, 
            bossName= "Azgalor",
            notes = {}
        },
        
        {
            npcID = 17968,
            encounterID = 622, 
            bossName= "Archimonde",
            notes = {}
        },
        
    }
    
    -- The Shattered Halls
    addonTable.data[540] = {
        name = "The Shattered Halls",
        
        {
            npcID = 16807,
            encounterID = 1936, 
            bossName= "Grand Warlock Nethekurse",
            notes = {}
        },
        
        {
            npcID = 16809,
            encounterID = 1937, 
            bossName= "Warbringer O'mrogg",
            notes = {}
        },
        
        {
            npcID = 16808,
            encounterID = 1938, 
            bossName= "Warchief Kargath Bladefist",
            notes = {}
        },
        
        {
            npcID = 20923,
            encounterID = 1935, 
            bossName= "Blood Guard Porung",
            notes = {}
        },
        
    }
    
    -- The Blood Furnace
    addonTable.data[542] = {
        name = "The Blood Furnace",
        
        {
            npcID = 17381,
            encounterID = 1922, 
            bossName= "The Maker",
            notes = {}
        },
        
        {
            npcID = 17380,
            encounterID = 1924, 
            bossName= "Broggok",
            notes = {}
        },
        
        {
            npcID = 17377,
            encounterID = 1923, 
            bossName= "Keli'dan the Breaker",
            notes = {}
        },
        
    }
    
    -- Hellfire Ramparts
    addonTable.data[543] = {
        name = "Hellfire Ramparts",
        
        {
            npcID = 17306,
            encounterID = 1893, 
            bossName= "Watchkeeper Gargolmar",
            notes = {}
        },
        
        {
            npcID = 17308,
            encounterID = 1891, 
            bossName= "Omor the Unscarred",
            notes = {}
        },
        
        {
            npcID = 17307,
            encounterID = 1892, 
            bossName= "Vazruden the Herald",
            notes = {}
        },
        
    }
    
    -- Magtheridon's Lair
    addonTable.data[544] = {
        name = "Magtheridon's Lair",
        
        {
            npcID = 17257,
            encounterID = 651, 
            bossName= "Magtheridon",
            notes = {}
        },
        
    }
    
    -- The Steamvault
    addonTable.data[545] = {
        name = "The Steamvault",
        
        {
            npcID = 17797,
            encounterID = 1942, 
            bossName= "Hydromancer Thespia",
            notes = {}
        },
        
        {
            npcID = 17796,
            encounterID = 1943, 
            bossName= "Mekgineer Steamrigger",
            notes = {}
        },
        
        {
            npcID = 17798,
            encounterID = 1944, 
            bossName= "Warlord Kalithresh",
            notes = {}
        },
        
    }
    
    -- The Underbog
    addonTable.data[546] = {
        name = "The Underbog",
        
        {
            npcID = 17770,
            encounterID = 1946, 
            bossName= "Hungarfen",
            notes = {}
        },
        
        {
            npcID = 18105,
            encounterID = 1945, 
            bossName= "Ghaz'an",
            notes = {}
        },
        
        {
            npcID = 17826,
            encounterID = 1947, 
            bossName= "Swamplord Musel'ek",
            notes = {}
        },
        
        {
            npcID = 17882,
            encounterID = 1948, 
            bossName= "The Black Stalker",
            notes = {}
        },
        
    }
    
    -- The Slave Pens
    addonTable.data[547] = {
        name = "The Slave Pens",
        
        {
            npcID = 17941,
            encounterID = 1939, 
            bossName= "Mennu the Betrayer",
            notes = {}
        },
        
        {
            npcID = 17991,
            encounterID = 1941, 
            bossName= "Rokmar the Crackler",
            notes = {}
        },
        
        {
            npcID = 17942,
            encounterID = 1940, 
            bossName= "Quagmirran",
            notes = {}
        },
        
    }
    
    -- Serpentshrine Cavern
    addonTable.data[548] = {
        name = "Serpentshrine Cavern",
        
        {
            npcID = 21216,
            encounterID = 623, 
            bossName= "Hydross the Unstable",
            notes = {}
        },
        
        {
            npcID = 21217,
            encounterID = 624, 
            bossName= "The Lurker Below",
            notes = {}
        },
        
        {
            npcID = 21215,
            encounterID = 625, 
            bossName= "Leotheras the Blind",
            notes = {}
        },
        
        {
            npcID = 21214,
            encounterID = 626, 
            bossName= "Fathom-Lord Karathress",
            notes = {}
        },
        
        {
            npcID = 21213,
            encounterID = 627, 
            bossName= "Morogrim Tidewalker",
            notes = {}
        },
        
        {
            npcID = 21212,
            encounterID = 628, 
            bossName= "Lady Vashj",
            notes = {}
        },
        
    }
    
    -- The Eye
    addonTable.data[550] = {
        name = "The Eye",
        
        {
            npcID = 999999,
            encounterID = 730, 
            bossName= "Al'ar",
            notes = {}
        },
        
        {
            npcID = 19516,
            encounterID = 731, 
            bossName= "Void Reaver",
            notes = {}
        },
        
        {
            npcID = 18805,
            encounterID = 732, 
            bossName= "High Astromancer Solarian",
            notes = {}
        },
        
        {
            npcID = 165759,
            encounterID = 733, 
            bossName= "Kael'thas Sunstrider",
            notes = {}
        },
        
    }
    
    -- The Arcatraz
    addonTable.data[552] = {
        name = "The Arcatraz",
        
        {
            npcID = 20870,
            encounterID = 1916, 
            bossName= "Zereketh the Unbound",
            notes = {}
        },
        
        {
            npcID = 20885,
            encounterID = 1913, 
            bossName= "Dalliah the Doomsayer",
            notes = {}
        },
        
        {
            npcID = 20886,
            encounterID = 1915, 
            bossName= "Wrath-Scryer Soccothrates",
            notes = {}
        },
        
        {
            npcID = 20912,
            encounterID = 1914, 
            bossName= "Harbinger Skyriss",
            notes = {}
        },
        
    }
    
    -- The Botanica
    addonTable.data[553] = {
        name = "The Botanica",
        
        {
            npcID = 17976,
            encounterID = 1925, 
            bossName= "Commander Sarannis",
            notes = {}
        },
        
        {
            npcID = 17975,
            encounterID = 1926, 
            bossName= "High Botanist Freywinn",
            notes = {}
        },
        
        {
            npcID = 17978,
            encounterID = 1928, 
            bossName= "Thorngrin the Tender",
            notes = {}
        },
        
        {
            npcID = 17980,
            encounterID = 1927, 
            bossName= "Laj",
            notes = {}
        },
        
        {
            npcID = 17977,
            encounterID = 1929, 
            bossName= "Warp Splinter",
            notes = {}
        },
        
    }
    
    -- The Mechanar
    addonTable.data[554] = {
        name = "The Mechanar",
        
        {
            npcID = 19219,
            encounterID = 1932, 
            bossName= "Mechano-Lord Capacitus",
            notes = {}
        },
        
        {
            npcID = 19221,
            encounterID = 1930, 
            bossName= "Nethermancer Sepethrea",
            notes = {}
        },
        
        {
            npcID = 19220,
            encounterID = 1931, 
            bossName= "Pathaleon the Calculator",
            notes = {}
        },
        
    }
    
    -- Shadow Labyrinth
    addonTable.data[555] = {
        name = "Shadow Labyrinth",
        
        {
            npcID = 18731,
            encounterID = 1908, 
            bossName= "Ambassador Hellmaw",
            notes = {}
        },
        
        {
            npcID = 18667,
            encounterID = 1909, 
            bossName= "Blackheart the Inciter",
            notes = {}
        },
        
        {
            npcID = 18732,
            encounterID = 1911, 
            bossName= "Grandmaster Vorpil",
            notes = {}
        },
        
        {
            npcID = 18708,
            encounterID = 1910, 
            bossName= "Murmur",
            notes = {}
        },
        
    }
    
    -- Sethekk Halls
    addonTable.data[556] = {
        name = "Sethekk Halls",
        
        {
            npcID = 18472,
            encounterID = 1903, 
            bossName= "Darkweaver Syth",
            notes = {}
        },
        
        {
            npcID = 23035,
            encounterID = 1904, 
            bossName= "Anzu",
            notes = {}
        },
        
        {
            npcID = 18473,
            encounterID = 1902, 
            bossName= "Talon King Ikiss",
            notes = {}
        },
        
    }
    
    -- Mana-Tombs
    addonTable.data[557] = {
        name = "Mana-Tombs",
        
        {
            npcID = 18341,
            encounterID = 1900, 
            bossName= "Pandemonius",
            notes = {}
        },
        
        {
            npcID = 18343,
            encounterID = 1901, 
            bossName= "Tavarok",
            notes = {}
        },
        
        {
            npcID = 55312,
            encounterID = 250, 
            bossName= "Yor",
            notes = {}
        },
        
        {
            npcID = 18344,
            encounterID = 1899, 
            bossName= "Nexus-Prince Shaffar",
            notes = {}
        },
        
    }
    
    -- Auchenai Crypts
    addonTable.data[558] = {
        name = "Auchenai Crypts",
        
        {
            npcID = 18371,
            encounterID = 1890, 
            bossName= "Shirrak the Dead Watcher",
            notes = {}
        },
        
        {
            npcID = 18373,
            encounterID = 1889, 
            bossName= "Exarch Maladaar",
            notes = {}
        },
        
    }
    
    -- Old Hillsbrad Foothills
    addonTable.data[560] = {
        name = "Old Hillsbrad Foothills",
        
        {
            npcID = 17848,
            encounterID = 1905, 
            bossName= "Lieutenant Drake",
            notes = {}
        },
        
        {
            npcID = 17862,
            encounterID = 1907, 
            bossName= "Captain Skarloc",
            notes = {}
        },
        
        {
            npcID = 18096,
            encounterID = 1906, 
            bossName= "Epoch Hunter",
            notes = {}
        },
        
    }
    
    -- Black Temple
    addonTable.data[564] = {
        name = "Black Temple",
        
        {
            npcID = 22887,
            encounterID = 601, 
            bossName= "High Warlord Naj'entus",
            notes = {}
        },
        
        {
            npcID = 22898,
            encounterID = 602, 
            bossName= "Supremus",
            notes = {}
        },
        
        {
            npcID = 22841,
            encounterID = 603, 
            bossName= "Shade of Akama",
            notes = {}
        },
        
        {
            npcID = 22871,
            encounterID = 604, 
            bossName= "Teron Gorefiend",
            notes = {}
        },
        
        {
            npcID = 92146,
            encounterID = 605, 
            bossName= "Gurtogg Bloodboil",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 606, 
            bossName= "Reliquary of Souls",
            notes = {}
        },
        
        {
            npcID = 22947,
            encounterID = 607, 
            bossName= "Mother Shahraz",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 608, 
            bossName= "The Illidari Council",
            notes = {}
        },
        
        {
            npcID = 22917,
            encounterID = 609, 
            bossName= "Illidan Stormrage",
            notes = {}
        },
        
    }
    
    -- Gruul's Lair
    addonTable.data[565] = {
        name = "Gruul's Lair",
        
        {
            npcID = 18831,
            encounterID = 649, 
            bossName= "High King Maulgar",
            notes = {}
        },
        
        {
            npcID = 19044,
            encounterID = 650, 
            bossName= "Gruul the Dragonkiller",
            notes = {}
        },
        
    }
    
    -- Zul'Aman
    addonTable.data[568] = {
        name = "Zul'Aman",
        
        {
            npcID = 23574,
            encounterID = 1189, 
            bossName= "Akil'zon",
            notes = {}
        },
        
        {
            npcID = 23576,
            encounterID = 1190, 
            bossName= "Nalorakk",
            notes = {}
        },
        
        {
            npcID = 23578,
            encounterID = 1191, 
            bossName= "Jan'alai",
            notes = {}
        },
        
        {
            npcID = 23577,
            encounterID = 1192, 
            bossName= "Halazzi",
            notes = {}
        },
        
        {
            npcID = 24239,
            encounterID = 1193, 
            bossName= "Hex Lord Malacrass",
            notes = {}
        },
        
        {
            npcID = 23863,
            encounterID = 1194, 
            bossName= "Daakara",
            notes = {}
        },
        
    }
    
    -- Sunwell Plateau
    addonTable.data[580] = {
        name = "Sunwell Plateau",
        
        {
            npcID = 24850,
            encounterID = 724, 
            bossName= "Kalecgos",
            notes = {}
        },
        
        {
            npcID = 24882,
            encounterID = 725, 
            bossName= "Brutallus",
            notes = {}
        },
        
        {
            npcID = 25038,
            encounterID = 726, 
            bossName= "Felmyst",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 727, 
            bossName= "The Eredar Twins",
            notes = {}
        },
        
        {
            npcID = 999999,
            encounterID = 728, 
            bossName= "M'uru",
            notes = {}
        },
        
        {
            npcID = 25315,
            encounterID = 729, 
            bossName= "Kil'jaeden",
            notes = {}
        },
        
    }
    
    -- Magisters' Terrace
    addonTable.data[585] = {
        name = "Magisters' Terrace",
        
        {
            npcID = 24723,
            encounterID = 1897, 
            bossName= "Selin Fireheart",
            notes = {}
        },
        
        {
            npcID = 24744,
            encounterID = 1898, 
            bossName= "Vexallus",
            notes = {}
        },
        
        {
            npcID = 24560,
            encounterID = 1895, 
            bossName= "Priestess Delrissa",
            notes = {}
        },
        
        {
            npcID = 165759,
            encounterID = 1894, 
            bossName= "Kael'thas Sunstrider",
            notes = {}
        },
        
    }
    
end