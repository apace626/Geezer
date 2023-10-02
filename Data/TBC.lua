local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:TBCnitializeData()
     
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
            notes = {
                "Avoid red stuff/purple beam – "..S(30496),
                "Keep the boss facing away from the party to prevent cleave - "..S(35953),
                "Spins at 25% causing big shadow damage - "..S(30508),
            }
        },
        
        {
            npcID = 16809,
            encounterID = 1937, 
            bossName= "Warbringer O'mrogg",
            notes = {
                S(30618)..", makes tank lose all threat.",
                "The boss will periodically "..S(30584)
            }
        },
        
        {
            npcID = 16808,
            encounterID = 1938, 
            bossName= "Warchief Kargath Bladefist",
            notes = {
                "Tank the boss near where you entered the arena as this is where the adds spawn.",
                "Tank pick up adds, focus kill."
            }
        },
        
        {
            npcID = 20923,
            encounterID = 1935, 
            bossName= "Blood Guard Porung",
            notes = {
                "Uses Cleave inflicting physical damage to a player & all nearby. Face boss away.",
                "Focus kill the two archers"
            }
        },
        
    }
    
    -- The Blood Furnace
    addonTable.data[542] = {
        name = "The Blood Furnace",
        
        {
            npcID = 17381,
            encounterID = 1922, 
            bossName= "The Maker",
            notes = {
                S(30923).." - The Maker takes control of a player, causing them to fight their allies for 10 sec.",
                S(30925).." - The Maker throws a beaker at a player, inflicting 58 Nature damage to all players within 8 yards of the target, knocking them up."

            }
        },
        
        {
            npcID = 17380,
            encounterID = 1924, 
            bossName= "Broggok",
            notes = {
                "Open cells with the lever & kill the waves of orcs.",
                "Broggok damages all in front of him with "..S(38458).." avoid this.",
                S(30916).." leaves a green circle under boss & grows in size, keep away.",
                S(38459).." Poison Bolt shoots ticking poison at a player."
            }
        },
        
        {
            npcID = 17377,
            encounterID = 1923, 
            bossName= "Keli'dan the Breaker",
            notes = {
                "Kill the Shadowmoon Channelers.",
                "Boss deals shadow damage spells.",
                "All nearby players will be hit with fire damage during "..S(30940)..", boss is also immune from damage during this cast.",
                "[H] Shadow Wrath inflicts shadow damage to a player."
            }
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
            notes = {
                "Mushrooms spawn in random locations & explode after 20 sec.",
                S(34168).." covers an area dealing nauture damage.",
                "When boss at 20% "..S(31673).." steals health from all nearby players.",
            }
        },
        
        {
            npcID = 18105,
            encounterID = 1945, 
            bossName= "Ghaz'an",
            notes = {
                S(34268).." breathes acid on all players in front of him dealing nature damage.",
                S(38737).." hits any players standing behind him & knocks back.",
                S(34290).." spits acid at a player, does nature damage."
            }
        },
        
        {
            npcID = 17826,
            encounterID = 1947, 
            bossName= "Swamplord Musel'ek",
            notes = {
                S(18813).." knocks players back.",
                S(34974).." fires arrows at players & can hit up to 3 allies.",
                "His pet Claw will inflict physical damage & Echoing Roar will reduce nearby players armor by 50%.",
            }
        },
        
        {
            npcID = 17882,
            encounterID = 1948, 
            bossName= "The Black Stalker",
            notes = {
                "Boss will "..S(31704).." a player in the air.",
                S(31715).." inflicts ticking nature damage.",
                "Uses "..S(31717),
                "[H] Summons adds to attack you."
            }
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
            notes = {
                "Deals arcane damage to players.",
                "Summons Bloodwarder adds at 55%. Kill the Mender first and interrupt "..S(8092).." & "..S(87779),
            }
        },
        
        {
            npcID = 17975,
            encounterID = 1926, 
            bossName= "High Botanist Freywinn",
            notes = {
                "Plants seedlings that slow, stun & damage you.",
                "Boss turns into a tree with "..S(34551)..", healing nearby allies & immune for 45 sec.",
                "Kill the Frayer Protectors to kill boss quicker.",
            }
        },
        
        {
            npcID = 17978,
            encounterID = 1928, 
            bossName= "Thorngrin the Tender",
            notes = {
                S(34661).." teleports a player to him that stuns, steals health & damages.",
                S(1949).." sets floor under him on fire damaging himself & players nearby.",
                "|cffff0000(!)|r Uses "..S(184361)..", increasing his attack speed by 75% and his Physical damage dealt by 75% for 10 sec.",
            }
        },
        
        {
            npcID = 17980,
            encounterID = 1927, 
            bossName= "Laj",
            notes = {
                S(34697).." deals high damage & has chance to spread to nearest player.",
                "Elemental Shift increases & decreases his resistance to elements.",
                S(175979).." - Teleports to platform & summons thorn adds.",
            }
        },
        
        {
            npcID = 17977,
            encounterID = 1929, 
            bossName= "Warp Splinter",
            notes = {
                S(34716).." deals damage & increases physical damage taken by 550.",
                S(36705).." deals arcane damage to all players.",
                "Summons 6 saplings that will heal boss if they reach him, kill quickly."
            }
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
            notes = {
                "Put your back against a wall while tanking Pandemonius, to avoid "..S(38760).." knockback",
                "When Pandemonius casts "..S(38759)..", stop attacking, or use a cooldown to mitigate the Shadow damage from attacking",
            }
        },
        
        {
            npcID = 18343,
            encounterID = 1901, 
            bossName= "Tavarok",
            notes = {
                "Face Tavarok away from other party members, so they do not take "..S(38761).." damage"
            }
        },
        
        {
            npcID = 55312,
            encounterID = 250, 
            bossName= "Yor",
            notes = {
                S(12612).." damages & knocks back all nearby players.",
                "Damages all in front with "..S(41437)..", avoid this."
            }
        },
        
        {
            npcID = 18344,
            encounterID = 1899, 
            bossName= "Nexus-Prince Shaffar",
            notes = {
                "Taunt and tank any Ethereal Apprentice adds that spawn",
                "Taunt Nexus-Prince Shaffar after he Blinks away",
                "Interrupt Ethereal Apprentice's Fireball & Frostbolt"
            }
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
            notes = {
                "Click on the Spine to free a player from "..S(39837),
                "Use the Spine collected from freeing a player from "..S(39837).." to break "..S(39872),
                "Ranged DPS and healers should stay spread to avoid unnecessary damage from "..S(39835),
                "Melee DPS should avoid going in front of the boss to avoid being damage by "..S(39836)
            }
        },
        
        {
            npcID = 22898,
            encounterID = 602, 
            bossName= "Supremus",
            notes = {
                "PHASE ONE",
                "Don't stand in patches of "..S(40265),
                "Melee should avoid staying at full health due to "..S(41926)..". You can stand on "..S(40265).." to drop your health.",
                "PHASE TWO",
                "Stay away from "..S(42055),
                "If targeted by "..S(41951)..", run away from the boss.",
            }
            
        },
        
        {
            npcID = 22841,
            encounterID = 603, 
            bossName= "Shade of Akama",
            notes = {
                "PHASE ONE",
                "Prioritize killing Ashtongue Sorcerer and Ashtongue Channeler first, since they hinder Shade of Akama's speed, delaying Phase 2.",
                "Interrupt the adds as much as possible, specially Ashtongue Spiritbinder, since they will heal their allies.",
                "PHASE TWO",
                "Kill Shade of Akama before it kills Akama."
            }
        },
        
        {
            npcID = 22871,
            encounterID = 604, 
            bossName= "Teron Gorefiend",
            notes = {
                "Dispell "..S(40239),
                "If targeted with "..S(40251)..", deal as much damage as possible in the next 55 seconds.",
                "If transformed into Vengeful Spirit, your job is to prevent Shadowy Construct from wiping your group. In order to do that, make sure to use all your new spells to kill them, while slowing them to have enough time to do so.",
            }
        },
        
        {
            npcID = 92146,
            encounterID = 605, 
            bossName= "Gurtogg Bloodboil",
            notes = {
                "STAGE ONE",
                "Alternate the furthest targets from the boss to prevent high stacks of "..S(42005),
                "Have the other tank taunt right after "..S(40491).." happens.",
                "Make sure no one is in front of the boss with the tank to prevent "..S(40457).." cleaves.",
                "STAGE TWO",
                "Focus heal the target from "..S(40604),
                S(40604).." may turn the boss around, make sure to turn it back if you're targeted with it so "..S(40508).." and "..S(40599).." don't hit the group.",
                "Melee should try to stay at max range from the "..S(42005).." target to avoid getting hit by "..S(40569),
            }
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
            notes = {
                "Drag the boss to one of the large green crystals and tank him there.",
                "Interrupt "..S(46155),
                "When he starts to channel the crystal, focus kill the crystal, then drag him to the next one.",
            }
        },
        
        {
            npcID = 24744,
            encounterID = 1898, 
            bossName= "Vexallus",
            notes = {
                "Uses "..S(44318),
                S(44319).." deals ticking damage.",
                "At 20% "..S(44353).." deals arcane damage & increases your damage taken.",
                "Boss summons adds, when they die do more arcane damage."
            }
        },
        
        {
            npcID = 24560,
            encounterID = 1895, 
            bossName= "Priestess Delrissa",
            notes = {
                "Inflicts ticking shadow damage with "..S(15653),
                "Heals allies with "..S(41456),
                "Protects herself with "..S(46193).." absorbing damage.",
                "Interrupt "..S(344425),
                "Different adds will join fight, kill them quickly."
            }
        },
        
        {
            npcID = 165759,
            encounterID = 1894, 
            bossName= "Kael'thas Sunstrider",
            notes = {
                "Interrupt "..S(133),
                "When Phoenix dies, kill eggs fast, do not let them hatch.",
                "At 50% casts "..S(44226).." allowing you to fly.",
                "Move from "..S(170355).." they damage anyone they touch.",
                "[H] Boss is protected with "..S(36815)..", absorbing damage & immune to interrupts. |cffff0000(!)|r After Shock Barrier interrupt "..S(11366),
            }
        },
        
    }
    
end