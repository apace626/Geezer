local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:WrathInitializeData()
     
    -- Onyxia's Lair
    addonTable.data[249] = {
        name = "Onyxia's Lair",
        {
            npcID = 41270,
            encounterID = 1084, 
            bossName= "Onyxia",
            notes = {
            }
        },
    }
    
    -- Naxxramas
    addonTable.data[533] = {
        name = "Naxxramas",
        {
            npcID = 15956,
            encounterID = 1107, 
            bossName= "Anub'Rekhan",
            notes = {
            }
        },
        {
            npcID = 15953,
            encounterID = 1110, 
            bossName= "Grand Widow Faerlina",
            notes = {
            }
        },
        {
            npcID = 15952,
            encounterID = 1116, 
            bossName= "Maexxna",
            notes = {
            }
        },
        {
            npcID = 15954,
            encounterID = 1117, 
            bossName= "Noth the Plaguebringer",
            notes = {
            }
        },
        {
            npcID = 15936,
            encounterID = 1112, 
            bossName= "Heigan the Unclean",
            notes = {
            }
        },
        {
            npcID = 16011,
            encounterID = 1115, 
            bossName= "Loatheb",
            notes = {
            }
        },
        {
            npcID = 16061,
            encounterID = 1113, 
            bossName= "Instructor Razuvious",
            notes = {
            }
        },
        {
            npcID = 16060,
            encounterID = 1109, 
            bossName= "Gothik the Harvester",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1121, 
            bossName= "The Four Horsemen",
            notes = {
            }
        },
        {
            npcID = 16028,
            encounterID = 1118, 
            bossName= "Patchwerk",
            notes = {
            }
        },
        {
            npcID = 15931,
            encounterID = 1111, 
            bossName= "Grobbulus",
            notes = {
            }
        },
        {
            npcID = 15932,
            encounterID = 1108, 
            bossName= "Gluth",
            notes = {
            }
        },
        {
            npcID = 15928,
            encounterID = 1120, 
            bossName= "Thaddius",
            notes = {
            }
        },
        {
            npcID = 15989,
            encounterID = 1119, 
            bossName= "Sapphiron",
            notes = {
            }
        },
        {
            npcID = 175559,
            encounterID = 1114, 
            bossName= "Kel'Thuzad",
            notes = {
            }
        },
    }
    
    -- Utgarde Keep
    addonTable.data[574] = {
        name = "Utgarde Keep",
        {
            npcID = 23953,
            encounterID = 2026, 
            bossName= "Prince Keleseth",
            notes = {
                "Freezes a player in ice dealing frost damage - ICE TOMB - you can free players by attacking tomb.",
                "Summons Skeletons to fight, they will keep reviving themselves 20 secs after being killed.",
            }
        },
        {
            npcID = 24200,
            encounterID = 2024, 
            bossName= "Skarvald & Dalronn",
            notes = {
                "Skarvald deals physical damage, stuns & knocks back.",
                "Dalronn uses "..S(59575)..", interrupt this.",
                "When 1 boss dies he will continue fighting as a ghost.",
                "[TW] Skarvald also "..S(48193).."s. Dalronn "..S(52611)..", interrupt this.",
            }
        },
        {
            npcID = 23954,
            encounterID = 2025, 
            bossName= "Ingvar the Plunderer",
            notes = {
                "Face the boss away from the party for "..S(42724).."",
                "Avoid frontal cones "..S(42669).." & Dark "..S(42669)..".",
                "Deals physical & shadow damage.",
                "Increases speed with "..S(59707)..", this stacks.",
                "Move away from spinning axe, lands on player.",
                "Interrupts players spell casting with "..S(59708).." and "..S(59734)..".",
            }
        },
    }
    
    -- Utgarde Pinnacle
    addonTable.data[575] = {
        name = "Utgarde Pinnacle",
        {
            npcID = 26668,
            encounterID = 2030, 
            bossName= "Svala Sorrowgrave",
            notes = {
                "Inflicts fire damage to a player with "..S(48258)..".",
                "Tries to sacrifice a player with "..S(48276)..", they are stunned until adds are killed.",
                "Avoid sword by the altar & kill all adds.",
            }
        },
        {
            npcID = 26687,
            encounterID = 2027, 
            bossName= "Gortok Palehoof",
            notes = {
                "Defeat the 2 trophies that come alive, then boss.",
                "Avoid frontal cone "..S(48260)..".",
                ""..S(59267).." deals damage & lowers max health, this stacks.",
                "Throws a spear at player with "..S(59268)..", deals ticking damage.",
            }
        },
        {
            npcID = 26693,
            encounterID = 2029, 
            bossName= "Skadi the Ruthless",
            notes = {
                "Boss flies in air, avoid freezing clouds that land on floor.",
                "Pick up adds and focus kill them, the Harpooner mob drops them Harpoons, the other players must shoot at the boss.",
                "When the boss is down avoid his moving "..S(50228)..".",
                "Throws a "..S(50255).." at a player.",
            }
        },
        {
            npcID = 96756,
            encounterID = 2028, 
            bossName= "King Ymiron",
            notes = {
                "Will call upon a Fallen King 2 times to grant him a new ability, he stuns all players when chooses.",
                "Deals shadow damage to players & lots of ticking damage.",
                "Save a cooldown for "..S(48292)..".",
            }
        },
    }
    
    -- The Nexus
    addonTable.data[576] = {
        name = "The Nexus",
        {
            npcID = 26796,
            encounterID = 519, 
            bossName= "Commander Stoutbeard",
            notes = {
            }
        },
        {
            npcID = 26731,
            encounterID = 521, 
            bossName= "Grand Magus Telestra",
            notes = {
            }
        },
        {
            npcID = 26763,
            encounterID = 522, 
            bossName= "Anomalus",
            notes = {
            }
        },
        {
            npcID = 26794,
            encounterID = 524, 
            bossName= "Ormorok the Tree-Shaper",
            notes = {
            }
        },
        {
            npcID = 26723,
            encounterID = 527, 
            bossName= "Keristrasza",
            notes = {
            }
        },
        {
            npcID = 26798,
            encounterID = 519, 
            bossName= "Commander Kolurg",
            notes = {
            }
        },
    }
    
    -- The Oculus
    addonTable.data[578] = {
        name = "The Oculus",
        {
            npcID = 27654,
            encounterID = 528, 
            bossName= "Drakos the Interrogator",
            notes = {
                ""..S(50774).." knocks all players in the air.",
                "Move away from Unstable Spheres as explode after 20 sec.",
                ""..S(51336).." teleports all players to him.",
            }
        },
        {
            npcID = 27447,
            encounterID = 530, 
            bossName= "Varos Cloudstrider",
            notes = {
                "Energizes part of the platform, move out of this.",
                "Azure Ring Captain joins the fight - "..S(51008).."",
                "Channels an Arcane Beam, follows a random player.",
            }
        },
        {
            npcID = 27655,
            encounterID = 533, 
            bossName= "Mage-Lord Urom",
            notes = {
                ""..S(51103).." freezes the ground, move out of this.",
                ""..S(51121).." explodes in a random player, keep away from them.",
                "Avoid bosses line of sight for "..S(51110)..".",
            }
        },
        {
            npcID = 27656,
            encounterID = 534, 
            bossName= "Ley-Guardian Eregos",
            notes = {
                "Deals arcane damage to players.",
                "Summons Whelps to fight, they inflict arcane damage to players.",
                "Enrages during "..S(51170)..".",
            }
        },
    }
    
    -- The Culling of Stratholme
    addonTable.data[595] = {
        name = "The Culling of Stratholme",
        {
            npcID = 26529,
            encounterID = 2002, 
            bossName= "Meathook",
            notes = {
                "Stuns a player with "..S(52696).." & deals physical damage.",
                "Green circle around boss - "..S(58824).." - deals damage & interrupts spell casting of all nearby.",
            }
        },
        {
            npcID = 26530,
            encounterID = 2004, 
            bossName= "Salramm the Fleshcrafter",
            notes = {
                ""..S(52708).." reduces a players damage by 75% & increases bosses damge by 75%.",
                ""..S(52451).." to fight.",
                ""..S(52480).." - Ghouls explode inflicting fire damage to all nearby.",
            }
        },
        {
            npcID = 26532,
            encounterID = 2003, 
            bossName= "Chrono-Lord Epoch",
            notes = {
                ""..S(52766).." reduces attacks & movement of all by 70%.",
                ""..S(58830).." inflicts damage & reduces healing effects.",
                ""..S(52772).." increases a players cost of spells/abilities by 100% for 10 sec.",
            }
        },
        {
            npcID = 26533,
            encounterID = 2005, 
            bossName= "Mal'Ganis",
            notes = {
                "Puts a player to "..S(58849).." for 10 sec, any damage will wake them up.",
                "Inflicts shadow damage to a player.",
                ""..S(52723).." heals him for damage done with melee attacks.",
                ""..S(58852).." inflicts ticking shadow damage to players in front."
            }
        },
    }
    
    -- Halls of Stone
    addonTable.data[599] = {
        name = "Halls of Stone",
        {
            npcID = 27977,
            encounterID = 1994, 
            bossName= "Krystallus",
            notes = {
                "Ground Slam knocks all players back, slows movement speed then stuns (turn to stone) until shattered.",
                ""..S(61546).." breaks free all players in stone & inflicts physical damage.",
            }
        },
        {
            npcID = 27975,
            encounterID = 1996, 
            bossName= "Maiden of Grief",
            notes = {
                ""..S(50760).." damages & stuns.",
                "Move out of "..S(50752).."",
            }
        },
        {
            npcID = 28234,
            encounterID = 1995, 
            bossName= "Tribunal of Ages",
            notes = {
                "Speak to Brann Bronzebeard to activate fight.",
                "Run red beam out.",
                "Move away from player hit with Dark Matter ",
                "Adds will spawn, kill them quickly.",
                "You can interrupt any Lightning Bolt & Chain Lightning spells.",
            }
        },
        {
            npcID = 27978,
            encounterID = 1998, 
            bossName= "Sjonnir the Ironshaper",
            notes = {
                ""..S(50834).." zaps nearby allies & enemies with nature damage.",
                ""..S(50840).." inflicts nature damage to all nearby & increase damage taken.",
                "At 20% HP the boss goes into "..S(28747)..".",
                "Kill adds.",
            }
        },
    }
    
    -- Drak'Tharon Keep
    addonTable.data[600] = {
        name = "Drak'Tharon Keep",
        {
            npcID = 26630,
            encounterID = 1974, 
            bossName= "Trollgore",
            notes = {
                "Tank the boss on top of the stairs.",
                "Adds will attack the boss, they will be killed by CONSUME.",
                "The corpses of those adds will explode - CORPSE EXPLODE.",
            }
        },
        {
            npcID = 26631,
            encounterID = 1976, 
            bossName= "Novos the Summoner",
            notes = {
                "Boss is immune at the start, kill waves of adds, taunt the elites.",
                "Kill 4 Crystal Handlers to activate boss.",
                "Don't stand in BLIZZARD.",
                "You will be hit with ARCANE BLAST, this is a knockback.",
                "Pick up all adds."
            }
        },
        {
            npcID = 27483,
            encounterID = 1977, 
            bossName= "King Dred",
            notes = {
                "Clear all the adds around the stairs.",
                "Pull the boss back to the stairs and tank him there.",
                "Watch out for his fear - FEARSOME ROAR.",
                "Kill all adds.",
            }
        },
        {
            npcID = 26632,
            encounterID = 1975, 
            bossName= "The Prophet Tharon'ja",
            notes = {
                "Stuns all players with Decay Flesh",
                "You will all be turned into Skeletons with new abilities",
                "Avoid standing in Poison Cloud."
            }
        },
    }
    
    -- Azjol-Nerub
    addonTable.data[601] = {
        name = "Azjol-Nerub",
        {
            npcID = 28684,
            encounterID = 1971, 
            bossName= "Krik'thir the Gatewatcher",
            notes = {
            }
        },
        {
            npcID = 28921,
            encounterID = 1972, 
            bossName= "Hadronox",
            notes = {
            }
        },
        {
            npcID = 29120,
            encounterID = 1973, 
            bossName= "Anub'arak",
            notes = {
            }
        },
    }
    
    -- Halls of Lightning
    addonTable.data[602] = {
        name = "Halls of Lightning",
        {
            npcID = 28586,
            encounterID = 1987, 
            bossName= "General Bjarngrim",
            notes = {
                "Use a survivability cooldown during "..S(52028).." and "..S(16856).."",
                "Move the boss away from other players as he begins to cast "..S(52028).."",
                "If affected by "..S(59085)..", limit your movement other than for "..S(52028).."",
                "Interrupt the Stormforged Lieutenants' "..S(52774).."",
            }
        },
        {
            npcID = 28587,
            encounterID = 1985, 
            bossName= "Volkhan",
            notes = {
                "Taunt Molten Golems off of other players if they are at danger of dying to the Golem's melee attacks"
            }
        },
        {
            npcID = 28546,
            encounterID = 1984, 
            bossName= "Ionar",
            notes = {
                "Be sure not to be too close to the ranged or to other melee DPS to avoid spreading "..S(59800).." or "..S(59795).." damage",
                "If affected by "..S(59795)..", try to position so that the melee DPS do not take its damage",
                "Do not rush too quickly to the location at which Ionar will reform once Sparks of Ionar begin to converge - the "..S(59834).." damage will be fatal",
                "Quickly taunt Ionar when he reforms",
            }
        },
        {
            npcID = 28923,
            encounterID = 1986, 
            bossName= "Loken",
            notes = {
                "Stand at maximum melee range from the boss to avoid sharing "..S(52921).." damage"
            }
        },
    }
    
    -- Ulduar
    addonTable.data[603] = {
        name = "Ulduar",
        {
            npcID = 33113,
            encounterID = 1132, 
            bossName= "Flame Leviathan",
            notes = {
            }
        },
        {
            npcID = 33118,
            encounterID = 1136, 
            bossName= "Ignis the Furnace Master",
            notes = {
            }
        },
        {
            npcID = 33186,
            encounterID = 1139, 
            bossName= "Razorscale",
            notes = {
            }
        },
        {
            npcID = 33293,
            encounterID = 1142, 
            bossName= "XT-002 Deconstructor",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1140, 
            bossName= "The Assembly of Iron",
            notes = {
            }
        },
        {
            npcID = 32930,
            encounterID = 1137, 
            bossName= "Kologarn",
            notes = {
            }
        },
        {
            npcID = 33515,
            encounterID = 1131, 
            bossName= "Auriaya",
            notes = {
            }
        },
        {
            npcID = 32845,
            encounterID = 1135, 
            bossName= "Hodir",
            notes = {
            }
        },
        {
            npcID = 32865,
            encounterID = 1141, 
            bossName= "Thorim",
            notes = {
            }
        },
        {
            npcID = 32906,
            encounterID = 1133, 
            bossName= "Freya",
            notes = {
            }
        },
        {
            npcID = 33350,
            encounterID = 1138, 
            bossName= "Mimiron",
            notes = {
            }
        },
        {
            npcID = 33271,
            encounterID = 1134, 
            bossName= "General Vezax",
            notes = {
            }
        },
        {
            npcID = 33288,
            encounterID = 1143, 
            bossName= "Yogg-Saron",
            notes = {
            }
        },
        {
            npcID = 32871,
            encounterID = 1130, 
            bossName= "Algalon the Observer",
            notes = {
            }
        },
    }
    
    -- Gundrak
    addonTable.data[604] = {
        name = "Gundrak",
        {
            npcID = 29304,
            encounterID = 1978, 
            bossName= "Slad'ran",
            notes = {
                "Tank the boss near his starting position to give adds a longer path to get to players",
                "Taunt Slad'ran Vipers off of other players",
                "Use one of the snake statues to line of sight the "..S(59842).."",
                "Use a cooldown if you cannot get out of line of sight of Slad'ran for "..S(59842).."",
                "If another player is about to reach 5 stacks of "..S(55093)..", taunt any Slad'ran Constrictors off of them",
                "Otherwise, avoid tanking the Slad'ran Constrictors"
            }
        },
        {
            npcID = 29307,
            encounterID = 1983, 
            bossName= "Drakkari Colossus",
            notes = {
                "Quickly taunt the Drakkari Elemental and Drakkari Colossus after each transition",
                "Tank the Elemental near a wall, so that players have time to react to "..S(54801).."",
                "Move the bosses away from any nearby "..S(59451).."s so melee DPS will not stand in them",
                "Use a survivability cooldown when the Drakkari Colossus gains the "..S(54719).." buff",
            }
        },
        {
            npcID = 29305,
            encounterID = 1980, 
            bossName= "Moorabi",
            notes = {
                "Assist in interrupting "..S(55098).." as required",
                "Use powerful survivability cooldowns during the Avatar phase",
            }
        },
        {
            npcID = 29932,
            encounterID = 1988, 
            bossName= "Eck the Ferocious [H]",
            notes = {
                "Face Eck away from the party for "..S(55814).."",
                "Taunt Eck immediately following each "..S(55815).." (wait for him to land first)",
                "Minimize boss movement to avoid losing DPS"
            }
        },
        {
            npcID = 29306,
            encounterID = 1981, 
            bossName= "Gal'darah",
            notes = {
                "Run away from Gal'darah during "..S(59825).." and kite him away from ranged players",
                "Use a survivability or self-healing cooldown after "..S(59826)..""
            }
        },
    }
    
    -- The Violet Hold
    addonTable.data[608] = {
        name = "The Violet Hold",
        {
            npcID = 31134,
            encounterID = 2020, 
            bossName= "Cyanigosa",
            notes = {
                "Avoid frontal cone "..S(58688).." ",
                "Avoid behind cone "..S(58690).."",
                "Move out of "..S(58693).."",
                ""..S(58694).." summons all players to her.",
            }
        },
    }
    
    -- The Obsidian Sanctum
    addonTable.data[615] = {
        name = "The Obsidian Sanctum",
        {
            npcID = 28860,
            encounterID = 1090, 
            bossName= "Sartharion",
            notes = {
            }
        },
    }
    
    -- The Eye of Eternity
    addonTable.data[616] = {
        name = "The Eye of Eternity",
        {
            npcID = 28859,
            encounterID = 1094, 
            bossName= "Malygos",
            notes = {
            }
        },
    }
    
    -- Ahn'kahet: The Old Kingdom
    addonTable.data[619] = {
        name = "Ahn'kahet: The Old Kingdom",
        {
            npcID = 29309,
            encounterID = 1969, 
            bossName= "Elder Nadox",
            notes = {
                "Tank the boss in the middle of the room so you can see the adds spawning.",
                "Focus kill the Guardian add.",
                "Use cooldowns while afflicted with "..S(59467).."",
            }
        },
        {
            npcID = 29308,
            encounterID = 1966, 
            bossName= "Prince Taldaram",
            notes = {
                "Use an absorption cooldown when the boss is buffed by "..S(55968).." to attempt to prevent him from healing",
                "Deal as much damage as possible to the boss during "..S(59513)..", if you are not affected",
                "Run away from the Flame Spheres' path"
            }
        },
        {
            npcID = 29310,
            encounterID = 1967, 
            bossName= "Jedoga Shadowseeker",
            notes = {
                "Pull the boss away from nearby "..S(60029).." pools",
                "Use a cooldown when the boss begins to cast "..S(60030).."",
                "Taunt the boss quickly when she lands after the Twilight Ascendance ritual",
                "Help kill adds to prevent the boss from gaining "..S(56219).."",
            }
        },
        {
            npcID = 30258,
            encounterID = 1989, 
            bossName= "Amanitar [H]",
            notes = {
                "the boss frequently resets his threat table, so taunt the boss each time this occurs",
                "If afflicted by "..S(57055)..", run to a Healthy Mushroom and kill it to remove the debuff",
                "Take care not to destroy too many Healthy Mushrooms, and avoid killing any Poisonous Mushrooms"
            }
        },
        {
            npcID = 29311,
            encounterID = 1968, 
            bossName= "Herald Volazj",
            notes = {
                "Interrupt "..S(59974).."",
                "Kill the four clones in your version of reality, then assist other players with theirs",
                "Use survivability cooldowns, self-healing abilities, and CC to keep yourself alive during "..S(57496)..", since the healer cannot heal you",
                "Taunt the boss after each "..S(57496).." phase ends",
            }
        },
    }
    
    -- Vault of Archavon
    addonTable.data[624] = {
        name = "Vault of Archavon",
        {
            npcID = 31125,
            encounterID = 1126, 
            bossName= "Archavon the Stone Watcher",
            notes = {
            }
        },
        {
            npcID = 33993,
            encounterID = 1127, 
            bossName= "Emalon the Storm Watcher",
            notes = {
            }
        },
        {
            npcID = 35013,
            encounterID = 1128, 
            bossName= "Koralon the Flame Watcher",
            notes = {
            }
        },
        {
            npcID = 38433,
            encounterID = 1129, 
            bossName= "Toravon the Ice Watcher",
            notes = {
            }
        },
    }
    
    -- Icecrown Citadel
    addonTable.data[631] = {
        name = "Icecrown Citadel",
        {
            npcID = 36612,
            encounterID = 1101, 
            bossName= "Lord Marrowgar",
            notes = {
            }
        },
        {
            npcID = 36855,
            encounterID = 1100, 
            bossName= "Lady Deathwhisper",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1099, 
            bossName= "Icecrown Gunship Battle",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1099, 
            bossName= "Icecrown Gunship Battle",
            notes = {
            }
        },
        {
            npcID = 37813,
            encounterID = 1096, 
            bossName= "Deathbringer Saurfang",
            notes = {
            }
        },
        {
            npcID = 36626,
            encounterID = 1097, 
            bossName= "Festergut",
            notes = {
            }
        },
        {
            npcID = 36627,
            encounterID = 1104, 
            bossName= "Rotface",
            notes = {
            }
        },
        {
            npcID = 36678,
            encounterID = 1102, 
            bossName= "Professor Putricide",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1095, 
            bossName= "Blood Prince Council",
            notes = {
            }
        },
        {
            npcID = 37955,
            encounterID = 1103, 
            bossName= "Blood-Queen Lana'thel",
            notes = {
            }
        },
        {
            npcID = 36789,
            encounterID = 1098, 
            bossName= "Valithria Dreamwalker",
            notes = {
            }
        },
        {
            npcID = 36853,
            encounterID = 1105, 
            bossName= "Sindragosa",
            notes = {
            }
        },
        {
            npcID = 36597,
            encounterID = 1106, 
            bossName= "The Lich King",
            notes = {
            }
        },
    }
    
    -- The Forge of Souls
    addonTable.data[632] = {
        name = "The Forge of Souls",
        {
            npcID = 36497,
            encounterID = 2006, 
            bossName= "Bronjahm",
            notes = {
                "Slashes all players inflicting lots of physical damage.",
                "Kill all Soul Fragments before reach boss.",
                "Move in for "..S(68872)..".",
                ""..S(68950).."s a random player.",
            }
        },
        {
            npcID = 36502,
            encounterID = 2007, 
            bossName= "Devourer of Souls",
            notes = {
                "Interrupt "..S(68982).."",
                "Avoid "..S(68863).." on ground",
                "Run from ghosts",
                "Avoid the red beam - "..S(68899).." - as it damages and knocks back"
            }
        },
    }
    
    -- Trial of the Crusader
    addonTable.data[649] = {
        name = "Trial of the Crusader",
        {
            npcID = 999999,
            encounterID = 1088, 
            bossName= "The Northrend Beasts",
            notes = {
            }
        },
        {
            npcID = 34780,
            encounterID = 1087, 
            bossName= "Lord Jaraxxus",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1086, 
            bossName= "Champions of the Alliance",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1086, 
            bossName= "Champions of the Horde",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1089, 
            bossName= "Twin Val'kyr",
            notes = {
            }
        },
        {
            npcID = 29120,
            encounterID = 1085, 
            bossName= "Anub'arak",
            notes = {
            }
        },
    }
    
    -- Trial of the Champion
    addonTable.data[650] = {
        name = "Trial of the Champion",
        {
            npcID = 999999,
            encounterID = 2022, 
            bossName= "Grand Champions",
            notes = {
                "Pick up an Argent Lance & equip it. Grab a mount.",
                "If you fall off your mount get another.",
                "Keep Defend up & use all other abilities.",
                "After joust battle be ready for melee fight.",
                "Kill Colosos/Runok Wildmane first & interrupt "..S(67528)..".",
                "Interrupt Ambrose's/Erressea's "..S(66043).."."
            }
        },
        {
            npcID = 35119,
            encounterID = 2022, 
            bossName= "Eadric the Pure",
            notes = {
                "Face away from boss to avoid "..S(66862)..".",
                ""..S(66940).." stuns a player.",
                ""..S(66867).." is thrown at a player dealing holy damage.",
                "Can be thrown back at boss.",
            }
        },
        {
            npcID = 34928,
            encounterID = 2022, 
            bossName= "Argent Confessor Paletress",
            notes = {
                "Interrupt "..S(66536).." & "..S(66538)..".",
                "At 50% summons a Memory from the past.",
                "Boss is protected from damage while Memory is up.",
                "Memory inflicts shadow damage & causes players to flee.",
            }
        },
        {
            npcID = 35451,
            encounterID = 2021, 
            bossName= "The Black Knight",
            notes = {
                "Damages, stuns & knocks back a player.",
                ""..S(67725).." inflicts physical damage, amount depends how many diseases the target is suffering with.",
                "Ghouls deal damage & explode, keep away from them.",
            }
        },
        
    }
    
    -- Pit of Saron
    addonTable.data[658] = {
        name = "Pit of Saron",
        {
            npcID = 36494,
            encounterID = 1999, 
            bossName= "Forgemaster Garfrost",
            notes = {
                ""..S(68786).." hits all in line of sight, stacks frost damage taken.",
                ""..S(68788)..", avoid this.",
                ""..S(68771).." stuns players.",
                "Avoid frontal cone "..S(68778)..".",
                "Slows a players movement then freezes & damages them.",
            }
        },
        {
            npcID = 36476,
            encounterID = 2001, 
            bossName= "Ick & Krick",
            notes = {
                ""..S(69021).." knocks back.",
                ""..S(68987).." - run away.",
                "Stand far away to avoid "..S(68989)..".",
                "Run away from exploding orbs.",
                "Avoid green toxic on ground.",
            }
        },
        {
            npcID = 36658,
            encounterID = 2000, 
            bossName= "Scourgelord Tyrannus",
            notes = {
                ""..S(69155).." Knocks back",
                ""..S(69275).." - Rimefang ordered to attack players",
                "Avoid patches of ice on ground",
                ""..S(69246).." inflicts frost damage and stuns all nearby players.",
            }
        },
    }
    
    -- Halls of Reflection
    addonTable.data[668] = {
        name = "Halls of Reflection",
        {
            npcID = 38112,
            encounterID = 1992, 
            bossName= "Falric",
            notes = {
                ""..S(72426).." stuns a player, can dispel.",
                ""..S(72435).." fears nearby players & inflicts ticking damage.",
                "Nearby players damage & healing dealt is reduced by 20% each cast of "..S(72395)..".",
            }
        },
        {
            npcID = 38113,
            encounterID = 1993, 
            bossName= "Marwyn",
            notes = {
                "Strikes a player for physical damage.",
                "Avoid standing in "..S(72362)..", the purple circles.",
                ""..S(72363).." reduces max health for 8 sec.",
                "Deals ticking shadow damage to a player.",
            }
        },
        {
            npcID = 999999,
            encounterID = 1990, 
            bossName= "Escape from Arthas",
            notes = {
                "Run from the boss, follow Sylvanas.",
                "At each Ice Wall kill the mobs to break the wall down.",
                "Avoid standing near the boss as he will deal AOE damage every second with "..S(70063).."",
            }
        },
    }
    
    -- The Ruby Sanctum
    addonTable.data[724] = {
        name = "The Ruby Sanctum",
        {
            npcID = 39863,
            encounterID = 1150, 
            bossName= "Halion",
            notes = {
            }
        },
    }
    
end