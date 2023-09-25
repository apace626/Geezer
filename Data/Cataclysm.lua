local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
    addonTable.data = {}
     
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
                notes = {}
            },
            
            {
                npcID = 39679,
                encounterID = 1038, 
                bossName= "Corla, Herald of Twilight",
                notes = {}
            },
            
            {
                npcID = 39698,
                encounterID = 1039, 
                bossName= "Karsh Steelbender",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1037, 
                bossName= "Beauty",
                notes = {}
            },
            
            {
                npcID = 39705,
                encounterID = 1036, 
                bossName= "Ascendant Lord Obsidius",
                notes = {}
            },
            
        }
     
        -- The Vortex Pinnacle
        addonTable.data[657] = {
            name = "The Vortex Pinnacle",
            
            {
                npcID = 43878,
                encounterID = 1043, 
                bossName= "Grand Vizier Ertan",
                notes = {}
            },
            
            {
                npcID = 43873,
                encounterID = 1041, 
                bossName= "Altairus",
                notes = {}
            },
            
            {
                npcID = 999999,
                encounterID = 1042, 
                bossName= "Asaad, Caliph of Zephyrs",
                notes = {}
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
                notes = {}
            },
            
            {
                npcID = 43214,
                encounterID = 1059, 
                bossName= "Slabhide",
                notes = {}
            },
            
            {
                npcID = 42188,
                encounterID = 1058, 
                bossName= "Ozruk",
                notes = {}
            },
            
            {
                npcID = 42333,
                encounterID = 1057, 
                bossName= "High Priestess Azil",
                notes = {}
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
                notes = {}
            },
            
            {
                npcID = 43614,
                encounterID = 1054, 
                bossName= "Lockmaw",
                notes = {}
            },
            
            {
                npcID = 43612,
                encounterID = 1053, 
                bossName= "High Prophet Barim",
                notes = {}
            },
            
            {
                npcID = 44819,
                encounterID = 1055, 
                bossName= "Siamat",
                notes = {}
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
                    "Don’t stand near the boss in the purple pool - "..S(102414)..",
                    "Interrupt "..S(102173)",
                    "Avoid Moonlance, this travels along the ground (magic)",
                    "Avoid the adds that circle around the boss – Eyes of the Goddess",
                    "Avoid or Dispel the arcane balls, they silence you – Piercing Gaze of Elune (magic)"
                }
            },

            {
                npcID = 54123,
                encounterID = 1882, 
                bossName= "Echo of Sylvanas",
                notes = {
                    "Stay spread out for this fight, lots of AOE",
                    "A wall of Risen Ghouls will be summoned during Calling of the Highborne, focus kill one and move through",
                    "Avoid the purple shadow clouds",
                    "Move out of the purple circle – Blighted Arrows"
                }
            },
            
            {
                npcID = 54445,
                encounterID = 1883, 
                bossName= "Echo of Jaina",
                notes = {
                    "Boss blinks around. Keep her away from mobs.",
                    "A DPS needs to run over the Flarecore, that player has 10 seconds to do so or they explode.",
                    "Avoid the ice frontal – Frost Blades",
                    "Interrupt Frostbolt Volley"
                }
            },

            {
                npcID = 54431,
                encounterID = 1881, 
                bossName= "Echo of Baine",
                notes = {
                    "Boss will smash the ground and Pulverize the platform you’re on, move to another one.",
                    "Avoid tanking the boss in magma or he will be buffed by Molten Axe",
                    "Use mitigation/cooldowns for Molten Blast",
                    "You can buff yourself by briefly touching magma – Molten Fists",
                    "Baine will throw his Baine's Totem at players, throw it back."
                }
            },
            
            {
                npcID = 54432,
                encounterID = 1271, 
                bossName= "Murozond",
                notes = {
                    "Hourglass of Time can be used 5 times during fight, restores party to full health/mana & removes bombs."
                    "Don’t stand near boss for Temporal Blast every 15 sec",
                    "Avoid standing in Distortion Bombs that land",
                    "Face boss away for Infinite Breath"
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