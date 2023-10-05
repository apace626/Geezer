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
            npcID = 52258,
            encounterID = 788, 
            bossName= "Gri'lek",
            notes = {}
        },
        {
            npcID = 52271,
            encounterID = 788, 
            bossName= "Hazza'rah",
            notes = {}
        },
        {
            npcID = 52269,
            encounterID = 788, 
            bossName= "Renataki",
            notes = {}
        },
        {
            npcID = 52286,
            encounterID = 788, 
            bossName= "Wushoolay",
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
    
    -- Throne of the Tides
    addonTable.data[643] = {
        name = "Throne of the Tides",
        {
            npcID = 40586,
            encounterID = 1045, 
            bossName= "Lady Naz'jar",
            notes = {
                ""..S(75722).." will summon a geyser under a player that erupts after 5 secs, move away.",
                "Throws "..S(76001).." at a player dealing ticking nature damage, other players move away.�",
                "Interrupt "..S(76008)..".",
                "When the boss casts "..S(75683).." avoid the swirling water & focus kill adds.",
            }
        },
        {
            npcID = 40765,
            encounterID = 1044, 
            bossName= "Commander Ulthok, the Festering Prince",
            notes = {
                "Squeezes a player dealing shadow damage & stuns.",
                "Stay away from boss when smashes & avoid "..S(76047).." that pop out ground (purple circles).",
                "Curses a player reducing movement & attack speeds by 50%. ",
                "Boss "..S(76100).."s.",
            }
        },
        {
            npcID = 40788,
            encounterID = 1046, 
            bossName= "Mindbender Ghur'sha",
            notes = {
                "Avoid "..S(76170).." cone.",
                "Interrupt "..S(76171)..".",
                ""..S(84931).." move towards a location, avoid this.",
                "During "..S(76307).." don't use spell damage.",
                "Move out of "..S(76234)..".",
                "Boss leaps on a players head - "..S(76207).." - bring their health to 50% to free them.",
            }
        },
        {
            npcID = 44566,
            encounterID = 1047, 
            bossName= "Ozumat",
            notes = {
                "P1 - Defend Neptulon by killing adds.",
                "Interrupt Mindlashers "..S(83914).." & "..S(83915)..".",
                "P2 - Kill all 3 Faceless Sappers.",
                "P3 - Nuke Ozumat to less than 10% health until he retreats.",
            }
        },
    }
    
    -- Halls of Origination
    addonTable.data[644] = {
        name = "Halls of Origination",
        {
            npcID = 39425,
            encounterID = 1080, 
            bossName= "Temple Guardian Anhuur",
            notes = {
                "Avoid areas with Burning Light",
                "Interrupt "..S(75322).."",
                "At 66% & 33% HP the boss will channel energy from beacons to become immune to damage - "..S(74938).."",
                "The party needs to activate 2 Beacons of Light in the pit below, careful of the Pit Vipers.",
            }
        },
        {
            npcID = 39428,
            encounterID = 1076, 
            bossName= "Earthrager Ptah",
            notes = {
                "Ride a camel into battle, pure awesomeness (optional)",
                "Face the boss away from the party for "..S(83650).."",
                "Move away from erupting floor to avoid Earth Spike and to not kill your camel",
                "At 50% casts Earthstorm, this summons adds. Focus kill the adds and avoid the tornado.",
            }
        },
        {
            npcID = 39788,
            encounterID = 1075, 
            bossName= "Anraphet",
            notes = {
                "Don't stand in shadow patches players with "..S(76184).." leave behind.",
                "Use a cooldown on "..S(75623).." to help out your healer. ",
                ""..S(75609).." decreases max health of players by 10%, this stacks. Kill the boss fast.",
                ""..S(75604).." should be dispelled by your healer.",
            }
        },
        {
            npcID = 39587,
            encounterID = 1077, 
            bossName= "Isiset, Construct of Magic",
            notes = {
                "Face away from boss for "..S(74137).."",
                "Move out of the "..S(74134).." shower",
                "Pick up and focus kill adds",
                "At 66% HP she will split into three images, Focus kill the one casting "..S(74134)..". (stops the rain)",
                "At 33% HP, she does it again, kill the one Casting Celestial Call (stops adds)",
            }
        },
        {
            npcID = 39731,
            encounterID = 1074, 
            bossName= "Ammunae, Construct of Life",
            notes = {
                "Interrupt "..S(76043).."",
                "Kill the seedling adds asap or they will evolve into elite mobs",
                "Move the boss into the orange zones upon add death, it damages him.",
                "When the boss reaches full energy, have a strong cooldown ready "..S(75790).."",
            }
        },
        {
            npcID = 39732,
            encounterID = 1079, 
            bossName= "Setesh, Construct of Destruction",
            notes = {
                "Avoid bubbles of void energy around room",
                "Move away from players targeted by "..S(77069).."",
                "Keep away from Seeds on floor as they will explode",
                "Pick up and focus kill void adds spawning from portals.",
                "Move into glowing crystals on the floor to get a damage buff.",
            }
        },
        {
            npcID = 39378,
            encounterID = 1078, 
            bossName= "Rajh, Construct of Sun",
            notes = {
                "Interrupt "..S(80352).."",
                "Interrupt "..S(87653).."",
                "Summons a vortex that grows & moves around room, keep away.",
                "When boss has less than 10 Sun Energy goes to middle of room to recharge, this inflicts fire damage to all players but also increases players damage by 100%."
            }
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
                "Clear the room of all trash or be overwhelmed - "..S(82137).."",
                "Move out of the dust clouds.",
                "Pick up adds spawning from dust clouds",
                "When he puts the group in "..S(75539)..",�focus kill the chains and then run away�before he does his AOE cleave - "..S(75543)..".",
            }
        },
        {
            npcID = 39679,
            encounterID = 1038, 
            bossName= "Corla, Herald of Twilight",
            notes = {
                "Avoid standing in the beam, have a dps do it.",
                "Interrupt her fear - "..S(75823).."",
                "Interrupt adds",
                "If they are Kneeling in Supplication don't attack.",
                "Evolved adds deal lots of damage",
            }
        },
        {
            npcID = 39698,
            encounterID = 1039, 
            bossName= "Karsh Steelbender",
            notes = {
                "Drag the boss into the lava, make sure he always has a 1 stack of "..S(75846).." so he won't spawn adds and can be damaged.",
                "Save cooldowns for dealing with your own high stacks lava debuff.",
                "Face the boss away from the party to avoid "..S(15284).."",
            }
        },
        {
            npcID = 39700,
            encounterID = 1037, 
            bossName= "Beauty",
            notes = {
                "Boss will charge - "..S(76030).." - at the furthest player",
                "Take heed of the knockback of "..S(76032).."",
                "Boss will fear - "..S(76028).." - regularly.",
                "Avoid Magma blobs from "..S(76031).."",
                "CC adds, focus kill the ones without CC",
            }
        },
        {
            npcID = 39705,
            encounterID = 1036, 
            bossName= "Ascendant Lord Obsidius",
            notes = {
                "Keep the boss in the middle, while your dps kites the adds around.",
                "At 70% and 35% HP the boss will swap place with an add.",
                ""..S(76185).." will stun you, use a cooldown",
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
                "Careful of moving cyclones, avoid when they move to boss.�",
                "Move back within the circle of cyclones, don't stay on outside.�",
                "Uses "..S(86331).." on current target.",
                "[TW] "..S(86340)..", they will only attack players if no one is looking at them.",
            }
        },
        {
            npcID = 43873,
            encounterID = 1041, 
            bossName= "Altairus",
            notes = {
                "Wind blows in 1 of 4 directions & you will get upwind or downwind effects, increasing attack/spell & movement speeds of players or the boss.",
                "Random player hit with frontal cone "..S(88308)..", others avoid.",
                "[TW] Twisting Winds fills the platform with twisters, avoid them as deal damage & knock you in air.",
            }
        },
        {
            npcID = 43875,
            encounterID = 1042, 
            bossName= "Asaad, Caliph of Zephyrs",
            notes = {
                "All players get inside the lightning triangle to avoid damage.",
                "Lightning storm - "..S(86930).." - deals nature damage to all players on platform.",
                "Uses "..S(87622).." hitting other nearby players.�",
                "Skyfall Star joins fight, random player hit with ball of arcane energy.",
                "[TW] "..S(87618).." creates a static field on ground, any player touching this is stunned for 18 seconds.",
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
            notes = {
            }
        },
        {
            npcID = 41570,
            encounterID = 1024, 
            bossName= "Magmaw",
            notes = {
            }
        },
        {
            npcID = 41442,
            encounterID = 1022, 
            bossName= "Atramedes",
            notes = {
            }
        },
        {
            npcID = 43296,
            encounterID = 1023, 
            bossName= "Chimaeron",
            notes = {
            }
        },
        {
            npcID = 41378,
            encounterID = 1025, 
            bossName= "Maloriak",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1026, 
            bossName= "Nefarian's End",
            notes = {
            }
        },
    }
    
    -- Grim Batol
    addonTable.data[670] = {
        name = "Grim Batol",
        {
            npcID = 39625,
            encounterID = 1051, 
            bossName= "General Umbriss",
            notes = {
            }
        },
        {
            npcID = 40177,
            encounterID = 1050, 
            bossName= "Forgemaster Throngus",
            notes = {
                "Boss will do "..S(74984).." which will cause a cave in, avoid the falling boulders.",
                "He will swap weapons (Shield, Sword, Mace) each weapon gives the boss other abilities.",
                "SHIELD - Almost immune when attacked from the front",
                "MACE - slower but double damage",
                "SWORD - Dual wield",
                "[TW] SHIELD - frontal fire cone, dodge",
                "[TW] MACE - drops fire zones on floor, avoid",
                "[TW] SWORD - fire DoT on hit",
            }
        },
        {
            npcID = 40319,
            encounterID = 1048, 
            bossName= "Drahga Shadowburner",
            notes = {
                "Boss will send a Flaming Spirit chasing a random player, focus kill it.",
                "At 30% HP a dragon joins the fight.",
                "Avoid the dragon's frontal cone - "..S(75321).."",
                "Move out of the pools on the floor",
                "[TW] Avoid the dragon's huge frontal cone - "..S(90950).." - the further away you are, the less damage you take",
            }
        },
        {
            npcID = 40484,
            encounterID = 1049, 
            bossName= "Erudax, the Duke of Below",
            notes = {
                "Keep the boss in the middle of the room.",
                ""..S(75789).." will knock you back and apply a "..S(75792)..", kite the boss for 5s until "..S(75792).." fades and reposition in the center.",
                "The boss will fire "..S(75861).." at players, avoid these or the boss will be healed.",
                "When he starts casting "..S(75664)..", a purple vortex will be summoned, move into the vortex asap and drag the boss along so melee dps can hit, boss takes increased damage.",
                "Adds will spawn after vortex fades, kill asap while slowing them down so they don't reach the eggs.",
                "[TW] "..S(75809).." will be cast on adds, don't attack them (melee) to avoid shadow DoTs on the party.",
            }
        },
    }
    
    -- The Bastion of Twilight
    addonTable.data[671] = {
        name = "The Bastion of Twilight",
        {
            npcID = 44600,
            encounterID = 1030, 
            bossName= "Halfus Wyrmbreaker",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1032, 
            bossName= "Theralion and Valiona",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1028, 
            bossName= "Ascendant Council",
            notes = {
            }
        },
        {
            npcID = 43324,
            encounterID = 1029, 
            bossName= "Cho'gall",
            notes = {
            }
        },
        {
            npcID = 45213,
            encounterID = 1082, 
            bossName= "Sinestra",
            notes = {
            }
        },
    }
    
    -- Firelands
    addonTable.data[720] = {
        name = "Firelands",
        {
            npcID = 52498,
            encounterID = 1197, 
            bossName= "Beth'tilac",
            notes = {
                "PHASE ONE",
                "Boss will be stationary on top of her web. A few raid members will need to climb up and deal damage to her. Tank/Healer first then DPS.",
                "To reach boss, you will need to make use of the web filaments left behind after Cinderweb Spinners are killed. Mount like any vehicle, and be transported boss's level.",
                "10 Man - 1 Tank, 2 Healers, 3 Ranged DPS (if possible). 25 man - double it, maybe more.",
                "Rest of raid will need to defeat adds. Cinderweb Drones, Cinderweb Spiders, and Cinderweb Spiderlings.",
                "If there is no one at her level, she will damage the entire raid with "..S(99333)..". She will cast this ability when pulled until at least one player has climbed up to her level.",
                "|cffff0000(!)|r When boss reaches 0 fire energy, she will cast "..S(99052).." on her level, jump down through center hole in web to avoid.",
                "Avoid "..S(99076).." patches on ground",
                "Phase complete after "..S(99052).." is cast 3 times.",
                "PHASE TWO",
                "Boss will descend from web, make sure all adds are dead. The goal is to have boss at low HP to avoid enrage effect.",
                "Heals/DPS stack up behind boss",
                "Tanks swap when other gets "..(99506),
                S(99859).." will cuase a lot of damage at end, use cooldowns"
            }
        },
        {
            npcID = 52558,
            encounterID = 1204, 
            bossName= "Lord Rhyolith",
            notes = {
            }
        },
        {
            npcID = 52530,
            encounterID = 1206, 
            bossName= "Alysrazor",
            notes = {
            }
        },
        {
            npcID = 53691,
            encounterID = 1205, 
            bossName= "Shannox",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1200, 
            bossName= "Baleroc, the Gatekeeper",
            notes = {
            }
        },
        {
            npcID = 52571,
            encounterID = 1185, 
            bossName= "Majordomo Staghelm",
            notes = {
            }
        },
        {
            npcID = 11502,
            encounterID = 1203, 
            bossName= "Ragnaros",
            notes = {
            }
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
            notes = {
            }
        },
        {
            npcID = 46753,
            encounterID = 1034, 
            bossName= "Al'Akir",
            notes = {
            }
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
                "[H] Phoenix add - "..S(95248).." - cannot die permanently, avoid fire patches the bird leaves behind",
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
            notes = {
            }
        },
        {
            npcID = 52363,
            encounterID = 1250, 
            bossName= "Occu'thar",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1332, 
            bossName= "Alizabal, Mistress of Hate",
            notes = {
            }
        },
    }
    
    -- Zul'Gurub
    addonTable.data[859] = {
        name = "Zul'Gurub",
        {
            npcID = 52155,
            encounterID = 1178, 
            bossName= "High Priest Venoxis",
            notes = {
            }
        },
        {
            npcID = 52151,
            encounterID = 1179, 
            bossName= "Bloodlord Mandokir",
            notes = {
                
            }
        },
        {
            npcID = 52059,
            encounterID = 1180, 
            bossName= "High Priestess Kilnara",
            notes = {
                
            }
        },
        {
            npcID = 52053,
            encounterID = 1181, 
            bossName= "Zanzil",
            notes = {
                
            }
        },
        {
            npcID = 52148,
            encounterID = 1182, 
            bossName= "Jin'do the Godbreaker",
            notes = {
                "When the boss HP reaches 0 you will enter the spirit realm.",
                "Run back to where you killed the giants, you only need one, the others are back up in case you kill one. ",
                "Run over a giant spirit, DO NOT ATTACK IT! You are too strong and will one shot it. Run to the chains and have the giant smash it. you can now kill the chain. Repeat x3.",
                "If you did not kill the giants you will be unable to defeat the boss and will need to reset it.",
            }
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
                "Map - Emerald Dragonshrine - Pick up adds and drag them into the pool of Moonlight",
                "",
                "Don't stand near the boss in the purple pool - "..S(102414).." . Slows casting by 50%",
                "Interrupt "..S(102173),
                "Avoid "..S(102149)..", this travels along the ground (magic)",
                "Avoid the adds that circle around the boss - "..S(102606),
                "Avoid or Dispel the arcane balls, they silence you - "..S(102183).." (magic)"
            }
        },

        {
            npcID = 54123,
            encounterID = 1882, 
            bossName= "Echo of Sylvanas",
            notes = {
                "Map - Azure Dragonshine",
                "",
                "Stay spread out for this fight, lots of AOE",
                "A wall of Risen Ghouls will be summoned during "..S(100686)..", focus kill one and move through",
                "Avoid the purple shadow clouds",
                "Move out of the purple circle - "..S(101401)
            }
        },
        
        {
            npcID = 54445,
            encounterID = 1883, 
            bossName= "Echo of Jaina",
            notes = {
                "Map - Ruby Dragonshine - Collect 16 fragments to acivate boss",
                "",
                "Boss blinks around. Keep her away from mobs",
                "A DPS needs to run over the "..S(101927)..", that player has 10 seconds to do so or they explode",
                "Avoid the ice frontal - "..S(101339),
                "Interrupt "..S(101810)
            }
        },

        {
            npcID = 54431,
            encounterID = 1881, 
            bossName= "Echo of Baine",
            notes = {
                "Map - Obsidian Dragonshine",
                "",
                "Boss will smash the ground and "..S(101626).." the platform you're on, move to another one",
                "Avoid tanking the boss in magma or he will be buffed by "..S(101836),
                "You can buff yourself by briefly touching magma - "..S(101866),
                "Baine will throw his Totem at players, throw it back - "..S(101614)
            }
        },
        
        {
            npcID = 54432,
            encounterID = 1271, 
            bossName= "Murozond",
            notes = {
                "Map - Bronze Dragonshine - Kill all adds to activate boss",
                "",
                "Hourglass of Time can be used 5 times during fight, rewinds everything to start of fight - "..S(101591),
                "Don't stand near boss for "..S(102381).." every 15s",
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
            notes = {
                
            }
        },
        {
            npcID = 54853,
            encounterID = 1273, 
            bossName= "Queen Azshara",
            notes = {
                
            }
        },
        {
            npcID = 999999,
            encounterID = 1274, 
            bossName= "Mannoroth and Varo'then",
            notes = {
                
            }
        },
    }
    
    -- Hour of Twilight
    addonTable.data[940] = {
        name = "Hour of Twilight",
        {
            npcID = 54590,
            encounterID = 1337, 
            bossName= "Arcurion",
            notes = {
                
            }
        },
        {
            npcID = 54938,
            encounterID = 1339, 
            bossName= "Archbishop Benedictus",
            notes = {
                
            }
        },
        {
            npcID = 54968,
            encounterID = 1340, 
            bossName= "Asira Dawnslayer",
            notes = {
                
            }
        },
    }
    
    -- Dragon Soul
    addonTable.data[967] = {
        name = "Dragon Soul",
        {
            npcID = 55265,
            encounterID = 1292, 
            bossName= "Morchok",
            notes = {
            }
        },
        {
            npcID = 55689,
            encounterID = 1296, 
            bossName= "Hagara the Stormbinder",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1291, 
            bossName= "Spine of Deathwing",
            notes = {
            }
        },
        {
            npcID = 55308,
            encounterID = 1294, 
            bossName= "Warlord Zon'ozz",
            notes = {
            }
        },
        {
            npcID = 55312,
            encounterID = 1295, 
            bossName= "Yor'sahj the Unsleeping",
            notes = {
            }
        },
        {
            npcID = 55294,
            encounterID = 1297, 
            bossName= "Ultraxion",
            notes = {
            }
        },
        {
            npcID = 56427,
            encounterID = 1298, 
            bossName= "Warmaster Blackhorn",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1299, 
            bossName= "Madness of Deathwing",
            notes = {
            }
        },
    }
    
end