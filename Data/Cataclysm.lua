local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:CataclysmInitializeData()
     
        -- Zul'Gurub
        addonTable.data[309] = {
            name = "Zul'Gurub",
            
            {
                npcID = 999999,
                encounterID = 788, 
                bossName= "Cache of Madness - Gri'lek",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 788, 
                bossName= "Cache of Madness - Hazza'rah",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 788, 
                bossName= "Cache of Madness - Renataki",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 788, 
                bossName= "Cache of Madness - Wushoolay",
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
     
        -- Throne of the Tides
        addonTable.data[643] = {
            name = "Throne of the Tides",
            
            {
                npcID = 40586,
                encounterID = 1045, 
                bossName= "Lady Naz'jar",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1044, 
                bossName= "Commander Ulthok, the Festering Prince",
                notes = {}
            },
            
            {
                npcID = 40788,
                encounterID = 1046, 
                bossName= "Mindbender Ghur'sha",
                notes = {}
            },
            
            {
                npcID = 44566,
                encounterID = 1047, 
                bossName= "Ozumat",
                notes = {}
            },
            
        }
     
        -- Halls of Origination
        addonTable.data[644] = {
            name = "Halls of Origination",
            
            {
                npcID = 39425,
                encounterID = 1080, 
                bossName= "Temple Guardian Anhuur",
                notes = {}
            },
            
            {
                npcID = 39428,
                encounterID = 1076, 
                bossName= "Earthrager Ptah",
                notes = {}
            },
            
            {
                npcID = 39788,
                encounterID = 1075, 
                bossName= "Anraphet",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1077, 
                bossName= "Isiset, Construct of Magic",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1074, 
                bossName= "Ammunae, Construct of Life",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1079, 
                bossName= "Setesh, Construct of Destruction",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1078, 
                bossName= "Rajh, Construct of Sun",
                notes = {}
            },
            
        }
     
        -- Blackrock Caverns
        addonTable.data[645] = {
            name = "Blackrock Caverns",
            
            {
                npcID = 39665,
                encounterID = 1040, 
                bossName= "Rom'ogg Bonecrusher",
                notes = {
                    "Clear the room of all trash or be overwhelmed – "..S(82137),
                    "Move out of the dust clouds",
                    "Tank pick up adds spawning from dust clouds. DPS kill adds",
                    "|cffff0000(!)|r When he puts the group in "..S(75539)..", focus kill the chains and then run away before he does his AOE cleave – "..S(75543)
                }
            },
            
            {
                npcID = 39679,
                encounterID = 1038, 
                bossName= "Corla, Herald of Twilight",
                notes = {
                    "|cffff0000(!)|r DPS stand in beam for 80 stacks, move out, let debuff fall off, and move back in for 80. Rinse repeat - "..S(75697),
                    "Interrupt her fear – "..S(75823),
                    "Interrupt Twilight Zealots",
                    "If Twiglight Zealots are kneeling don't attack - "..S(75608),
                    "Players w/ 100 "..S(75697).." turn into Twilight Drakonid (BAD)",
                    "Twilight Zealots w/ 100 "..S(75697).." turn into Evolved Twilight Zealots (BAD)"
                }
            },
            
            {
                npcID = 39698,
                encounterID = 1039, 
                bossName= "Karsh Steelbender",
                notes = {
                    "Drag the boss into the lava, make sure he always has a 1 stack of "..S(75846).." so he won’t spawn adds and can be damaged.",
                    "Boss cannot be damagd when "..S(75842).." is active",
                    "Attack boss from ranged to avoid "..S(63677),
                    "Avoid frontal - "..S(845),
                    "Avoid "..S(76007).." that erupt from grates"
                }
            },
            
            {
                npcID = 999999,
                encounterID = 1037, 
                bossName= "Beauty",
                notes = {
                    "Boss will charge and knockback further player - "..S(76030),
                    S(76032).." knocks back players within 12 yds.",
                    S(289471).." fear for 5 secs. (magic)",
                    "Avoid Magma blobs from "..S(76031),
                    "CC adds, focus kill the ones without CC"
                }
            },
            
            {
                npcID = 39705,
                encounterID = 1036, 
                bossName= "Ascendant Lord Obsidius",
                notes = {
                    "Keep the boss in the middle, while your dps kites the adds around",
                    "At 69% and 34% HP the boss will swap place with an add",
                    S(76185).." will stun target, use a cooldown",
                    S(76188).." inflicts shadow damage on a player for 12 sec. (magic)",
                    "[H] "..S(23931).." slams ground and slows movement of players within 25 yds",
                }
            },
            
        }
     
        -- The Vortex Pinnacle
        addonTable.data[657] = {
            name = "The Vortex Pinnacle",
            
            {
                npcID = 43878,
                encounterID = 1043, 
                bossName= "Grand Vizier Ertan",
                notes = {
                    "Careful of moving cyclones, avoid when they move to boss.",
                    "Move back within the circle of cyclones, don’t stay on outside - "..S(86309),
                    "Interrupt "..S(188196),
                    "|cffff0000(!)|r [H] "..S(413151).." will only attack players with "..S(411001).." if no one is looking at them.",
                }
            },
            
            {
                npcID = 43873,
                encounterID = 1041, 
                bossName= "Altairus",
                notes = {
                    "Wind blows in 1 of 4 directions & you will get "..S(88282).." or "..S(88286).." effects, increasing attack/spell & movement speeds of players or the boss.",
                    "Random player hit with frontal cone "..S(88308)..", others avoid.",
                    "(Heal) "..S(413331)..", ticking damage every 3s",
                    "[H] "..S(88314).." fills the platform with twisters, avoid them, they deal damage & knock you in air.",
                }
            },
            
            {
                npcID = 999999,
                encounterID = 1042, 
                bossName= "Asaad, Caliph of Zephyrs",
                notes = {
                "All players get inside the lightning triangle to avoid damage - "..S(86911),
                "|cffff0000(!)|r Lightning storm – "..S(86715).." – deals nature damage to all players on platform.",
                "Uses "..S(87622).." hitting other nearby players. ",
                "DPS focus kill "..S(413263),
                "[H] "..S(87618).." creates a static field on ground, any player touching this is stunned for 18 seconds.",
                }
            },
            
        }
     
        -- Blackwing Descent
        addonTable.data[669] = {
            name = "Blackwing Descent",
            
            {
                npcID = 999999,
                encounterID = 1027, 
                bossName= "Omnotron Defense System",
                notes = {}
            },
            
            {
                npcID = 41570,
                encounterID = 1024, 
                bossName= "Magmaw",
                notes = {}
            },
            
            {
                npcID = 41442,
                encounterID = 1022, 
                bossName= "Atramedes",
                notes = {}
            },
            
            {
                npcID = 43296,
                encounterID = 1023, 
                bossName= "Chimaeron",
                notes = {}
            },
            
            {
                npcID = 41378,
                encounterID = 1025, 
                bossName= "Maloriak",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1026, 
                bossName= "Nefarian's End",
                notes = {}
            },
            
        }
     
        -- Grim Batol
        addonTable.data[670] = {
            name = "Grim Batol",
            
            {
                npcID = 39625,
                encounterID = 1051, 
                bossName= "General Umbriss",
                notes = {}
            },
            
            {
                npcID = 40177,
                encounterID = 1050, 
                bossName= "Forgemaster Throngus",
                notes = {}
            },
            
            {
                npcID = 40319,
                encounterID = 1048, 
                bossName= "Drahga Shadowburner",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1049, 
                bossName= "Erudax, the Duke of Below",
                notes = {}
            },
            
        }
     
        -- The Bastion of Twilight
        addonTable.data[671] = {
            name = "The Bastion of Twilight",
            
            {
                npcID = 44600,
                encounterID = 1030, 
                bossName= "Halfus Wyrmbreaker",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1032, 
                bossName= "Theralion and Valiona",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1028, 
                bossName= "Ascendant Council",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1029, 
                bossName= "Cho'gall",
                notes = {}
            },
            
            {
                npcID = 45213,
                encounterID = 1082, 
                bossName= "Sinestra",
                notes = {}
            },
            
        }
     
        -- Firelands
        addonTable.data[720] = {
            name = "Firelands",
            
            {
                npcID = 52498,
                encounterID = 1197, 
                bossName= "Beth'tilac",
                notes = {}
            },
            
            {
                npcID = 52558,
                encounterID = 1204, 
                bossName= "Lord Rhyolith",
                notes = {}
            },
            
            {
                npcID = 52530,
                encounterID = 1206, 
                bossName= "Alysrazor",
                notes = {}
            },
            
            {
                npcID = 53691,
                encounterID = 1205, 
                bossName= "Shannox",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1200, 
                bossName= "Baleroc, the Gatekeeper",
                notes = {}
            },
            
            {
                npcID = 52571,
                encounterID = 1185, 
                bossName= "Majordomo Staghelm",
                notes = {}
            },
            
            {
                npcID = 11502,
                encounterID = 1203, 
                bossName= "Ragnaros",
                notes = {}
            },
            
        }
     
        -- The Stonecore
        addonTable.data[725] = {
            name = "The Stonecore",
            
            {
                npcID = 43438,
                encounterID = 1056, 
                bossName= "Corborus",
                notes = {
                    "Channels "..S(86881).." at players, move away",
                    "(Heal) "..S(82415).." inflicts shadow damage to players & adds a healing absorb for 6s",
                    "Boss "..S(309865).." underground, kill Rock Borers quickly",
                    "Avoid crumbling ground where boss will charge out of",
                    "[H] "..S(86881).." will also summon Crystal Shards mobs in the area"
                }
            },
            
            {
                npcID = 43214,
                encounterID = 1059, 
                bossName= "Slabhide",
                notes = {
                    "Move out of cracks in ground, avoid lava pools",
                    "Avoid "..S(80807).." cone in front of boss",
                    "Avoid "..S(133638).." (rocks) falling from the ceiling",
                    "[H] "..S(92265).." is cast after boss lands from creating "..S(133638)..". Hide behind a "..S(133638).." to avoid the storm",
                }
            },
            
            {
                npcID = 42188,
                encounterID = 1058, 
                bossName= "Ozruk",
                notes = {
                    "|cffff0000(!)|r Slams the ground in front of him damaging all within 4 yds - "..S(78903),
                    S(78939).." (magic)",
                    "Erupts spikes from his body for 10s, players who attack with melee or ranged will take ticking arcane damage, this stacks - "..S(78835),
                    "When "..S(78835).." expires, the spikes "..S(401825).." and are fired damaging nearby players",
                    "|cffff0000(!)|r [H] When boss slams the ground he also uses "..S(1943).." which causes 3 spikes to erupt in the direction he is facing, avoid these.",
                    "|cffff0000(!)|r [H] Just before he "..S(401825).." the spikes he uses "..S(92426).." stunning all enemies for 8s.",
                }
            },
            
            {
                npcID = 42333,
                encounterID = 1057, 
                bossName= "High Priestess Azil",
                notes = {
                    "STAGE ONE",
                    S(79345).." increases a players physical damage taken for 15s.",
                    "Interrupt "..S(79351),
                    "A Gravity Well is summoned at a players location, run away before it pulls you in -"..S(79340),
                    "STAGE TWO",
                    "Kill Devout Followers during "..S(79050),
                    "Avoid the "..S(79002).." thrown.",
                }
            },
            
        }
     
        -- Throne of the Four Winds
        addonTable.data[754] = {
            name = "Throne of the Four Winds",
            
            {
                npcID = 999999,
                encounterID = 1035, 
                bossName= "The Conclave of Wind",
                notes = {}
            },
            
            {
                npcID = 46753,
                encounterID = 1034, 
                bossName= "Al'Akir",
                notes = {}
            },
            
        }
     
        -- Lost City of the Tol'vir
        addonTable.data[755] = {
            name = "Lost City of the Tol'vir",
            
            {
                npcID = 44577,
                encounterID = 1052, 
                bossName= "General Husam",
                notes = {
                    "Avoid the "..S(151962).."(s) on the floor.",
                    "Charges random player and smacks them into the wall, stun effect - "..S(83113),
                    "Throws "..S(83171)..", avoid to not trigger them",
                    "[H] Avoid "..S(91263)..". They will detonate in 5s"
                }
            },
            
            {
                npcID = 43614,
                encounterID = 1054, 
                bossName= "Lockmaw",
                notes = {
                    "Avoid poison pools - "..S(81630),
                    "Do not stand behind the boss - "..S(81642),
                    "Will enrage at 30% HP - "..S(81706),
                    S(81690).." will send crocs to the targeted player",
                    "When Augh appears. Avoid "..S(190411).." and "..S(7964),
                    "[H] When boss dies Augh steals loot and becomes attackable"
                }
            },
            
            {
                npcID = 43612,
                encounterID = 1053, 
                bossName= "High Prophet Barim",
                notes = {
                    "STAGE ONE",
                    "Move out of "..S(88814),
                    "At 50% HP the boss will force you to kneel and rips everyone's soul - "..S(81947),
                    "[H] Phoenix add – "..S(95248).." – cannot die permanently, avoid fire patches the bird leaves behind",
                    "STAGE TWO",
                    "Focus kill Soul Fragments and Harbinger of Darkness",
                    "Return to your body to continue the fight"
                }
            },
            
            {
                npcID = 44819,
                encounterID = 1055, 
                bossName= "Siamat",
                notes = {
                    "Avoid the cloud storms",
                    "Kill all adds",
                    S(83066).." will knock everyone around.",
                    "Adds release "..S(83446).." (avoid) when they are near death, boss will absorb and attack two players",
                    "When boss absorbs storms he does AOE damage"
                }
            },
            
        }
     
        -- Baradin Hold
        addonTable.data[757] = {
            name = "Baradin Hold",
            
            {
                npcID = 47120,
                encounterID = 1033, 
                bossName= "Argaloth",
                notes = {}
            },
            
            {
                npcID = 52363,
                encounterID = 1250, 
                bossName= "Occu'thar",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1332, 
                bossName= "Alizabal, Mistress of Hate",
                notes = {}
            },
            
        }
     
        -- Zul'Gurub
        addonTable.data[859] = {
            name = "Zul'Gurub",
            
            {
                npcID = 52155,
                encounterID = 1178, 
                bossName= "High Priest Venoxis",
                notes = {}
            },
            
            {
                npcID = 52151,
                encounterID = 1179, 
                bossName= "Bloodlord Mandokir",
                notes = {}
            },
            
            {
                npcID = 52059,
                encounterID = 1180, 
                bossName= "High Priestess Kilnara",
                notes = {}
            },
            
            {
                npcID = 52053,
                encounterID = 1181, 
                bossName= "Zanzil",
                notes = {}
            },
            
            {
                npcID = 52148,
                encounterID = 1182, 
                bossName= "Jin'do the Godbreaker",
                notes = {}
            },
            
        }
     
        -- End Time
        addonTable.data[938] = {
            name = "End Time",
            
            {
                npcID = 54544,
                encounterID = 1884, 
                bossName= "Echo of Tyrande",
                notes = {
                    "Don't stand near the boss in the purple pool - "..S(102414).." . Slows casting by 50%",
                    "Interrupt "..S(102173),
                    "Avoid "..S(102149)..", this travels along the ground (magic)",
                    "Avoid the adds that circle around the boss – "..S(102606),
                    "Avoid or Dispel the arcane balls, they silence you – "..S(102183).." (magic)"
                }
            },

            {
                npcID = 54123,
                encounterID = 1882, 
                bossName= "Echo of Sylvanas",
                notes = {
                    "Stay spread out for this fight, lots of AOE",
                    "A wall of Risen Ghouls will be summoned during "..S(100686)..", focus kill one and move through",
                    "Avoid the purple shadow clouds",
                    "Move out of the purple circle – "..S(101401)
                }
            },
            
            {
                npcID = 54445,
                encounterID = 1883, 
                bossName= "Echo of Jaina",
                notes = {
                    "Boss blinks around. Keep her away from mobs",
                    "A DPS needs to run over the "..S(101927)..", that player has 10 seconds to do so or they explode",
                    "Avoid the ice frontal – "..S(101339),
                    "Interrupt "..S(101810)
                }
            },

            {
                npcID = 54431,
                encounterID = 1881, 
                bossName= "Echo of Baine",
                notes = {
                    "Boss will smash the ground and "..S(101626).." the platform you’re on, move to another one",
                    "Avoid tanking the boss in magma or he will be buffed by "..S(101836),
                    "You can buff yourself by briefly touching magma – "..S(101866),
                    "Baine will throw his Totem at players, throw it back - "..S(101614)
                }
            },
            
            {
                npcID = 54432,
                encounterID = 1271, 
                bossName= "Murozond",
                notes = {
                    "Hourglass of Time can be used 5 times during fight, rewinds everything to start of fight - "..S(101591),
                    "Don’t stand near boss for "..S(102381).." every 15s",
                    "Avoid standing in "..S(101983).." that land",
                    "Face boss away for "..S(102569)
                }
            },
            
        }
     
        -- Well of Eternity
        addonTable.data[939] = {
            name = "Well of Eternity",
            
            {
                npcID = 55085,
                encounterID = 1272, 
                bossName= "Peroth'arn",
                notes = {}
            },
            
            {
                npcID = 54853,
                encounterID = 1273, 
                bossName= "Queen Azshara",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1274, 
                bossName= "Mannoroth and Varo'then",
                notes = {}
            },
            
        }
     
        -- Hour of Twilight
        addonTable.data[940] = {
            name = "Hour of Twilight",
            
            {
                npcID = 54590,
                encounterID = 1337, 
                bossName= "Arcurion",
                notes = {}
            },
            
            {
                npcID = 54938,
                encounterID = 1339, 
                bossName= "Archbishop Benedictus",
                notes = {}
            },
            
            {
                npcID = 54968,
                encounterID = 1340, 
                bossName= "Asira Dawnslayer",
                notes = {}
            },
            
        }
     
        -- Dragon Soul
        addonTable.data[967] = {
            name = "Dragon Soul",
            
            {
                npcID = 55265,
                encounterID = 1292, 
                bossName= "Morchok",
                notes = {}
            },
            
            {
                npcID = 55689,
                encounterID = 1296, 
                bossName= "Hagara the Stormbinder",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1291, 
                bossName= "Spine of Deathwing",
                notes = {}
            },
            
            {
                npcID = 55308,
                encounterID = 1294, 
                bossName= "Warlord Zon'ozz",
                notes = {}
            },
            
            {
                npcID = 55312,
                encounterID = 1295, 
                bossName= "Yor'sahj the Unsleeping",
                notes = {}
            },
            
            {
                npcID = 55294,
                encounterID = 1297, 
                bossName= "Ultraxion",
                notes = {}
            },
            
            {
                npcID = 56427,
                encounterID = 1298, 
                bossName= "Warmaster Blackhorn",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1299, 
                bossName= "Madness of Deathwing",
                notes = {}
            },
            
        }
     
end