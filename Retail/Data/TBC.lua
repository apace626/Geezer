local addonName, ns = ...

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function ns:TBCInitializeData()
     
    -- The Black Morass
    ns.data[269] = {
        name = "The Black Morass",
        instanceType = 1,
        version = 2,
        {
            npcID = 17881,
            encounterID = 1919, 
            bossName= "Aeonus",
            notes = {
                "Face the boss away from the rest of the party, due to its frontal cone "..S(39049).." and "..S(40504).."",
                "Use cooldowns just before the big stun - "..S(31422).." - to survive melee damage",
                "Be sure to keep Active Mitigation up during the boss' "..S(37605).."",
            }
        },
        {
            npcID = 17879,
            encounterID = 1920, 
            bossName= "Chrono Lord Deja",
            notes = {
                "Save cooldowns for when you are slowed during "..S(31467)..", particularly if your Active Mitigation depends upon hitting the boss",
                "When knocked back by "..S(38538)..", reposition the boss if necessary",
                "Pick up the small adds that stream out of the Time Rift, the assassin adds will stun you with "..S(30832).."",
            }
        },
        {
            npcID = 17880,
            encounterID = 1921, 
            bossName= "Temporus",
            notes = {
                "Use cooldowns for "..S(31458)..", especially at high stacks of "..S(31464).."",
                "Reposition the boss after being knocked back by "..S(38593).."",
                "Pick up the small adds that stream out of the Time Rift",
            }
        },
    }
    
    -- Karazhan
    ns.data[532] = {
        name = "Karazhan",
        version = 2,
        {
            npcID = 16152,
            encounterID = 652, 
            bossName= "Attumen the Huntsman",
            notes = {
            }
        },
        {
            npcID = 114312,
            encounterID = 653, 
            bossName= "Moroes",
            notes = {
            }
        },
        {
            npcID = 16457,
            encounterID = 654, 
            bossName= "Maiden of Virtue",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 655, 
            bossName= "Opera Hall",
            notes = {
            }
        },
        {
            npcID = 15691,
            encounterID = 656, 
            bossName= "The Curator",
            notes = {
            }
        },
        {
            npcID = 16524,
            encounterID = 658, 
            bossName= "Shade of Aran",
            notes = {
            }
        },
        {
            npcID = 15688,
            encounterID = 657, 
            bossName= "Terestian Illhoof",
            notes = {
            }
        },
        {
            npcID = 15689,
            encounterID = 659, 
            bossName= "Netherspite",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 660, 
            bossName= "Chess Event",
            notes = {
            }
        },
        {
            npcID = 15690,
            encounterID = 661, 
            bossName= "Prince Malchezaar",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 660, 
            bossName= "Chess Event",
            notes = {
            }
        },
    }
    
    -- Hyjal Summit
    ns.data[534] = {
        name = "Hyjal Summit",
        version = 2,
        {
            npcID = 17767,
            encounterID = 618, 
            bossName= "Rage Winterchill",
            notes = {
            }
        },
        {
            npcID = 17808,
            encounterID = 619, 
            bossName= "Anetheron",
            notes = {
            }
        },
        {
            npcID = 17888,
            encounterID = 620, 
            bossName= "Kaz'rogal",
            notes = {
            }
        },
        {
            npcID = 17842,
            encounterID = 621, 
            bossName= "Azgalor",
            notes = {
            }
        },
        {
            npcID = 17968,
            encounterID = 622, 
            bossName= "Archimonde",
            notes = {
            }
        },
    }
    
    -- The Shattered Halls
    ns.data[540] = {
        name = "The Shattered Halls",
        instanceType = 1,
        version = 2,
        {
            npcID = 16807,
            encounterID = 1936, 
            bossName= "Grand Warlock Nethekurse",
            notes = {
                "Drag the boss away from nearby red stuff+purple beam - "..S(30496).." - as they spawn",
                "Keep the boss facing away from the party to prevent cleave - "..S(35953).."",
                "Chain cooldowns to survive the "..S(30508).." damage in the final 25% of the fight",
            }
        },
        {
            npcID = 16809,
            encounterID = 1937, 
            bossName= "Warbringer O'mrogg",
            notes = {
                "The boss cannot be taunted, so do some big damage",
                ""..S(30618)..", makes you lose all threat, so someone else will have all aggro, make sure you have an offensive cooldown ready for this.",
                "The boss will periodically "..S(30584).." you"
            }
        },
        {
            npcID = 16808,
            encounterID = 1938, 
            bossName= "Warchief Kargath Bladefist",
            notes = {
                "Tank the boss near where you entered the arena as this is where the adds spawn.",
                "Quickly pick up these adds.",
            }
        },
        {
            npcID = 20923,
            encounterID = 1935, 
            bossName= "Blood Guard Porung [H]",
            notes = {
                "Focus kill the two archers, always be in melee range",
                "Face the boss away from the party to avoid Cleave",
            }
        },
    }
    
    -- The Blood Furnace
    ns.data[542] = {
        name = "The Blood Furnace",
        instanceType = 1,
        version = 2,
        {
            npcID = 17381,
            encounterID = 1922, 
            bossName= "The Maker",
            notes = {
                ""..S(30923).." Takes control of a player for 10 sec.",
                "Throws an "..S(30925).." at a player damaging all nearby & knocking them in the air.",
            }
        },
        {
            npcID = 17380,
            encounterID = 1924, 
            bossName= "Broggok",
            notes = {
                "Open cells with the lever & kill the waves of orcs.",
                "Broggok damages all in front of him with "..S(38458)..", avoid this.",
                ""..S(30916).." leaves a green circle under boss & grows in size, keep away.",
                ""..S(38459).." shoots ticking poison at a player.",
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
                "[H] Shadow Wrath inflicts shadow damage to a player.",
            }
        },
    }
    
    -- Hellfire Ramparts
    ns.data[543] = {
        name = "Hellfire Ramparts",
        instanceType = 1,
        version = 2,
        {
            npcID = 17306,
            encounterID = 1893, 
            bossName= "Watchkeeper Gargolmar",
            notes = {
                "Deals physical damage to current target.",
                "Charges a player knocking all nearby back.",
                "The Hellfire Watchers inflict shadow damage & heal allies.",
                "Interrupt their "..S(283628)..".",
            }
        },
        {
            npcID = 17308,
            encounterID = 1891, 
            bossName= "Omor the Unscarred",
            notes = {
                "Deals a lot of shadow damage to players with "..S(30695).." and "..S(30686)..".",
                ""..S(30707).." - Pet Fiendish Hound steals health from a player",
            }
        },
        {
            npcID = 17307,
            encounterID = 1892, 
            bossName= "Vazruden the Herald",
            notes = {
                "Deals physical damage & marks a player for Nazan to attack.",
                "Nazan deals fire damage & leaves patch of fire on floor.",
                "Uses Cone of Fire in front, avoid this.",
            }
        },
    }
    
    -- Magtheridon's Lair
    ns.data[544] = {
        name = "Magtheridon's Lair",
        version = 2,
        {
            npcID = 17257,
            encounterID = 651, 
            bossName= "Magtheridon",
            notes = {
            }
        },
    }
    
    -- The Steamvault
    ns.data[545] = {
        name = "The Steamvault",
        instanceType = 1,
        version = 2,
        {
            npcID = 17797,
            encounterID = 1942, 
            bossName= "Hydromancer Thespia",
            notes = {
                "Stuns a player with "..S(31718)..".",
                ""..S(25033).." appears on a player inflicting nature damage, move out.",
                "Coilfang Water Elementals assist in battle, interrupt their Water Bolt Volley.",
            }
        },
        {
            npcID = 17796,
            encounterID = 1943, 
            bossName= "Mekgineer Steamrigger",
            notes = {
                "Catches a player in "..S(35107)..".",
                "Avoid frontal cone "..S(31485)..".",
                "Steamrigger Mechanics will heal boss with Repair.",
            }
        },
        {
            npcID = 17798,
            encounterID = 1944, 
            bossName= "Warlord Kalithresh",
            notes = {
            }
        },
    }
    
    -- The Underbog
    ns.data[546] = {
        name = "The Underbog",
        instanceType = 1,
        version = 2,
        {
            npcID = 17770,
            encounterID = 1946, 
            bossName= "Hungarfen",
            notes = {
                "Mushrooms spawn in random locations & explode after 20 sec.",
                "Spore Cloud covers an area dealing nauture damage.",
                "When boss at 20% "..S(31673).." steals health from all nearby players.",
            }
        },
        {
            npcID = 18105,
            encounterID = 1945, 
            bossName= "Ghaz'an",
            notes = {
                ""..S(34268).." breathes acid on all players in front of him dealing nature damage.",
                ""..S(38737).." hits any players standing behind him & knocks back.",
                ""..S(34290).." spits acid at a player, does nature damage.",
            }
        },
        {
            npcID = 17826,
            encounterID = 1947, 
            bossName= "Swamplord Musel'ek",
            notes = {
                ""..S(18813).." knocks players back.",
                ""..S(34974).." fires arrows at players & can hit up to 3 allies.",
                "His pet Claw will inflict physical damage & Echoing Roar will reduce nearby players armor by 50%.",
            }
        },
        {
            npcID = 17882,
            encounterID = 1948, 
            bossName= "The Black Stalker",
            notes = {
                "Boss will "..S(31704).." a player in the air.",
                ""..S(31715).." inflicts ticking nature damage.",
                "Uses "..S(31717)..".",
                "[H] Summons adds to attack you.",
            }
        },
    }
    
    -- The Slave Pens
    ns.data[547] = {
        name = "The Slave Pens",
        instanceType = 1,
        version = 2,
        {
            npcID = 17941,
            encounterID = 1939, 
            bossName= "Mennu the Betrayer",
            notes = {
                "When Mennu casts "..S(31991)..", kite Mennu 15 yards away",
                "This is best done by kiting Mennu towards the corridor to the previous room, to avoid pulling additional trash",
            }
        },
        {
            npcID = 17991,
            encounterID = 1941, 
            bossName= "Rokmar the Crackler",
            notes = {
                "Use a cooldown for "..S(38801)..", especially during "..S(34970)..""
            }
        },
        {
            npcID = 17942,
            encounterID = 1940, 
            bossName= "Quagmirran",
            notes = {
                "Use a ranged attack to pull Quagmirran onto land",
                "Taunt Quagmirran when he switches targets for "..S(38163)..", and use a cooldown to mitigate its damage",
                "Face Quagmirran away from the party, and reposition after each "..S(32055).."",
            }
        },
    }
    
    -- Serpentshrine Cavern
    ns.data[548] = {
        name = "Serpentshrine Cavern",
        version = 2,
        {
            npcID = 21216,
            encounterID = 623, 
            bossName= "Hydross the Unstable",
            notes = {
            }
        },
        {
            npcID = 21217,
            encounterID = 624, 
            bossName= "The Lurker Below",
            notes = {
            }
        },
        {
            npcID = 21215,
            encounterID = 625, 
            bossName= "Leotheras the Blind",
            notes = {
            }
        },
        {
            npcID = 21214,
            encounterID = 626, 
            bossName= "Fathom-Lord Karathress",
            notes = {
            }
        },
        {
            npcID = 21213,
            encounterID = 627, 
            bossName= "Morogrim Tidewalker",
            notes = {
            }
        },
        {
            npcID = 21212,
            encounterID = 628, 
            bossName= "Lady Vashj",
            notes = {
            }
        },
    }
    
    -- The Eye
    ns.data[550] = {
        name = "The Eye",
        instanceType = 1,
        version = 2,
        {
            npcID = 999999,
            encounterID = 730, 
            bossName= "Al'ar",
            notes = {
            }
        },
        {
            npcID = 19516,
            encounterID = 731, 
            bossName= "Void Reaver",
            notes = {
            }
        },
        {
            npcID = 18805,
            encounterID = 732, 
            bossName= "High Astromancer Solarian",
            notes = {
            }
        },
        {
            npcID = 165759,
            encounterID = 733, 
            bossName= "Kael'thas Sunstrider",
            notes = {
                "Interrupt "..S(46164)..".",
                "Kill Phoenix Eggs fast, do not let them hatch.",
                "At 50% casts "..S(44224).." allowing you to fly.",
                "Move from Arcane Sphere they damage anyone they touch.",
                "[TW] Boss is protected with "..S(46165)..", absorbing damage & immune to interrupts. After "..S(46165).." interrupt "..S(36819)..".",
            }
        },
    }
    
    -- The Arcatraz
    ns.data[552] = {
        name = "The Arcatraz",
        instanceType = 1,
        version = 2,
        {
            npcID = 20870,
            encounterID = 1916, 
            bossName= "Zereketh the Unbound",
            notes = {
                "Tank Zereketh with your back against a wall for "..S(39005).." s knockback",
                "Move away from black "..S(36119).."s after the boss casts "..S(36119).."",
            }
        },
        {
            npcID = 20885,
            encounterID = 1913, 
            bossName= "Dalliah the Doomsayer",
            notes = {
                "Interrupt "..S(39009).." ",
                "Run away from the boss when she spins during "..S(36175).."",
                "Interrupt "..S(39013).." when possible"
            }
        },
        {
            npcID = 20886,
            encounterID = 1915, 
            bossName= "Wrath-Scryer Soccothrates",
            notes = {
                "Move away from any party members after "..S(36512)..", to make sure they don't get hit by "..S(36058).."",
                "Move the boss away from the green wall of fire - "..S(35767).." once it has spawned"
            }
        },
        {
            npcID = 20912,
            encounterID = 1914, 
            bossName= "Harbinger Skyriss",
            notes = {
                "Stand near each prison cell as it opens, and pick up the released adds quickly",
                "face those adds away from the party",
                "Put a skull mark on the original boss to see the difference between the clone and the original at 66% and 33% HP",
                "Use cooldowns when targeted by "..S(39017).."",
                "Taunt the players affected by "..S(39019)..", so they attack you and not your party",
            }
        },
    }
    
    -- The Botanica
    ns.data[553] = {
        name = "The Botanica",
        instanceType = 1,
        version = 2,
        {
            npcID = 17976,
            encounterID = 1925, 
            bossName= "Commander Sarannis",
            notes = {
                "Deals arcane damage to players.",
                "Summons Bloodwarder adds at 55%. Kill the Mender first.",
                "interrupt Mind Blast & Greater Heal.",
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
                ""..S(34661).." teleports a player to him that stuns, steals health & damages.",
                " Hellfire sets floor under him on fire damaging himself & players nearby.",
                "Uses "..S(34670)..".",
            }
        },
        {
            npcID = 17980,
            encounterID = 1927, 
            bossName= "Laj",
            notes = {
                ""..S(34697).." deals high damage & has chance to spread to nearest player.",
                "Elemental Shift increases & decreases his resistance to elements.",
                "Teleports to platform & summons thorn adds.",
            }
        },
        {
            npcID = 17977,
            encounterID = 1929, 
            bossName= "Warp Splinter",
            notes = {
                ""..S(34716).." deals damage & increases physical damage taken by 550.",
                ""..S(36705).." deals arcane damage to all players.",
                "Summons 6 saplings that will heal boss if they reach him, kill quickly.",
            }
        },
    }
    
    -- The Mechanar
    ns.data[554] = {
        name = "The Mechanar",
        instanceType = 1,
        version = 2,
        {
            npcID = 19219,
            encounterID = 1932, 
            bossName= "Mechano-Lord Capacitus",
            notes = {
                "Nether Charges explode damaging all nearby.",
                "Protects himself with shields reflecting harmful spells & dealing damage to melee attackers.",
                "[H] "..S(39096).." changes players energy. Split into 2 groups one negative & one positive charged.",
            }
        },
        {
            npcID = 19221,
            encounterID = 1930, 
            bossName= "Nethermancer Sepethrea",
            notes = {
                "Avoid standing in front boss for Dragon Breath.",
                "Her weapon is enchanted with "..S(45195)..", has chance to slow players movement.",
                ""..S(35314).." damages & knocks back player.",
                "Raging Flame mobs cast Inferno, move away as damage all nearby.",
            }
        },
        {
            npcID = 19220,
            encounterID = 1931, 
            bossName= "Pathaleon the Calculator",
            notes = {
                ""..S(35280).." controls a player making them attack allies.",
                "Mana Tap drains mana from a player charging his arcane energy, this stacks.",
                "Summons 3 Nether Wraiths, interrupt their Arcane Bolt.",
                "[H] "..S(15453).." inflicts arcane damage to players in 30 yards.",
            }
        },
    }
    
    -- Shadow Labyrinth
    ns.data[555] = {
        name = "Shadow Labyrinth",
        instanceType = 1,
        version = 2,
        {
            npcID = 18731,
            encounterID = 1908, 
            bossName= "Ambassador Hellmaw",
            notes = {
                "Causes players to flee in "..S(33547)..".",
                ""..S(33551).." hits all players in front inflicting nature damage & reducing armor.",
            }
        },
        {
            npcID = 18667,
            encounterID = 1909, 
            bossName= "Blackheart the Inciter",
            notes = {
                ""..S(33676).." forces players to attack each other for 30 sec.",
                ""..S(33707).." causes players to take damage & be knocked back.",
                "Charges at a player inflicting damage & stunning.",
            }
        },
        {
            npcID = 18732,
            encounterID = 1911, 
            bossName= "Grandmaster Vorpil",
            notes = {
                "Teleports players to his platform & casts "..S(33617)..", run away.",
                "Kill Void Travelers, if reach boss they explode causing wide damage & heal boss.",
                "[H] "..S(38791).." stops a player from doing anything for 8 sec.",
            }
        },
        {
            npcID = 18708,
            encounterID = 1910, 
            bossName= "Murmur",
            notes = {
                ""..S(38795).." hits players & reduces movement speed.",
                "Pulls all forward with Magnetic Pull.",
                "Stay away from player with "..S(38794)..".",
                "You, as tank, must stay within melee range of boss otherwise "..S(33657).." deals heavy damage to all.",
                "[H] No Magnetic Pull in heroic."..S(38797).." deals arcane damage to current target."..S(39365).." throws bolts at any players further than 25 yards dealing nature damage.",
            }
        },
    }
    
    -- Sethekk Halls
    ns.data[556] = {
        name = "Sethekk Halls",
        instanceType = 1,
        version = 2,
        {
            npcID = 18472,
            encounterID = 1903, 
            bossName= "Darkweaver Syth",
            notes = {
                "Uses "..S(15305)..".",
                ""..S(15616).." & "..S(38136).." both deal ticking damage.",
                ""..S(21401).." reduces movement.",
                "Summons 4 Elementals during fight, they each hit players increasing damage taken from fire, Frost, Arcane or Shadow.",
            }
        },
        {
            npcID = 23035,
            encounterID = 1904, 
            bossName= "Anzu",
            notes = {
                ""..S(40184).." stuns players.",
                "Charges a ranged player, damages & knocks back.",
                ""..S(40303).." drains a players mana when they cast.",
                "At 75% & 35% boss is protected for 1 min.",
                "Kill the Brood of Anzu birds quickly.",
            }
        },
        {
            npcID = 18473,
            encounterID = 1902, 
            bossName= "Talon King Ikiss",
            notes = {
                "During fight boss blinks to a players location & cast "..S(40425)..", hide behind pillars to avoid.",
                "Boss casts "..S(9438).." absorbing damage.",
                "[H] Casts "..S(35032).." reducing players movement & attack speed, lasts 8 sec."
            }
        },
    }
    
    -- Mana-Tombs
    ns.data[557] = {
        name = "Mana-Tombs",
        instanceType = 1,
        version = 2,
        {
            npcID = 18341,
            encounterID = 1900, 
            bossName= "Pandemonius",
            notes = {
                "Put your back against a wall while tanking Pandemonius, to avoid "..S(38760).." s knockback",
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
                ""..S(12612).." damages & knocks back all nearby players.",
                "Damages all in front with "..S(41437)..", avoid this."
            }
        },
        {
            npcID = 18344,
            encounterID = 1899, 
            bossName= "Nexus-Prince Shaffar",
            notes = {
                "Taunt and tank any Ethereal Apprentice adds that spawn",
                "Taunt Nexus-Prince Shaffar after he "..S(34605).."s away",
            }
        },
    }
    
    -- Auchenai Crypts
    ns.data[558] = {
        name = "Auchenai Crypts",
        instanceType = 1,
        version = 2,
        {
            npcID = 18371,
            encounterID = 1890, 
            bossName= "Shirrak the Dead Watcher",
            notes = {
                ""..S(32264).." reduces cast speed, it increases as move closer.",
                ""..S(32265).." pulls players towards boss.",
                ""..S(36383).." causing physical ticking damage.",
                "Focus Fire hits a players location damaging all nearby.",
            }
        },
        {
            npcID = 18373,
            encounterID = 1889, 
            bossName= "Exarch Maladaar",
            notes = {
                ""..S(32346).." reduces a players damage & healing by 50% & summons a ghost to attack.",
                ""..S(32424).." - Boss summons Avatars at 25% health, focus kill.",
            }
        },
    }
    
    -- Old Hillsbrad Foothills
    ns.data[560] = {
        name = "Old Hillsbrad Foothills",
        instanceType = 1,
        version = 2,
        {
            npcID = 17848,
            encounterID = 1905, 
            bossName= "Lieutenant Drake",
            notes = {
                "Deals physical damage.",
                "Run away from "..S(31909)..".",
                "Attacks can reduce targets healing received & movement speed.",
                "Exploding Shot hits player stunning them & deals fire damage.",
            }
        },
        {
            npcID = 17862,
            encounterID = 1907, 
            bossName= "Captain Skarloc",
            notes = {
                ""..S(31904).." increases his block chance.",
                "Cleanses his allies & grants them armor.",
                "Interrupt "..S(29427)..".",
                "Kill Durnholde adds quickly.",
                "[H] Move from boss when uses Consecration, lands under him",
            }
        },
        {
            npcID = 18096,
            encounterID = 1906, 
            bossName= "Epoch Hunter",
            notes = {
                "Avoid frontal cone "..S(31914)..".",
                "Inflicts ticking shadow damage to a player.",
                ""..S(31475).." damages & knocks back all nearby.",
            }
        },
    }
    
    -- Black Temple
    ns.data[564] = {
        name = "Black Temple",
        version = 2,
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
            npcID = 23418,
            encounterID = 606, 
            bossName= "Reliquary of Souls",
            notes = {
                "INTERMISSIONS",
                "Between every two phases there will be a downtime when a bunch of Enslaved Soul will spawn. When they die they cause "..S(41542).." which restores mana.",
                "STAGE ONE: Essence of Suffering",
                "There is no healing on this phase due to "..S(41292).." make sure to use defensive cooldown when tanking the boss via "..S(41294),
                "Dispel "..S(41303),
                "Avoid frontal - "..S(40457),
                "STAGE TWO: Essence of Desire",
                "All damage done will damage you back, avoid doing high bursts of damage.",
                "The phase is a race on the healers mana, which decreases over time due to "..S(41350),
                "Interrupt "..S(41410),
                "Tank swap on "..S(41426),
                "Instantly dispell "..S(41431).." from the boss.",
                "STATE THREE: Essence of Suffering",
                "The longer you stay on phase three, more damage you will take and deal due to "..S(41337),
                S(41520).." will increase your threat generation, take care to not pull from the tanks!",
                "Mana users can't stand in from of the boss otherwise they'll have their mana drain to "..S(41545),
                "Use personal and external defensive cooldowns on "..S(41376).." targets."
            }
        },
        
        {
            npcID = 22947,
            encounterID = 607, 
            bossName= "Mother Shahraz",
            notes = {
                "If affected by "..S(41001)..", make sure to run a different direction from other players affected.",
                "The fight requires either three tanks for "..S(40810).." or some melee DPS that can take those hits.",
                "Ranged DPS and Healers should stay at least 18 yards away from the boss to avoid getting hit by "..S(40823),
                "Ranged DPS and Healers should stay spread out to minimize the amount of targets that "..S(207544).." will jump to.",
            }
        },
        
        {
            npcID = 23426,
            encounterID = 608, 
            bossName= "The Illidari Council",
            notes = {
                "DPS must switch targets if their current one is immune to their damage type via "..S(41450).." or "..S(41451),
                "Gathios the Shatterer must be tanked apart from the rest of the Council due to "..S(41452),
                "Move Gathios the Shatterer from "..S(41541),
                "Dispell "..S(41468).." from Gathios the Shatterer's tank.",
                "Dedicate heals to targets of "..S(41485).." and "..S(41487),
                "Stay away from High Nethermancer Zerevor due to "..S(41524),
                "Uncertain if it will be needed for the Timewalk version, but groups might need a Mage in the group to Spellsteal High Nethermancer Zerevor's "..S(41478)..". Which will be used so the mage can tank High Nethermancer Zerevor.",
                "Move away from "..S(41482).." and "..S(41481),
                "Interrupt "..S(41455)..". Be aware that she might be immune to Magic and Physical interrupts at a time due to "..S(41450).." or "..S(41451),
                "Switch to Lady Malande to break "..S(41475).." as fast as possible. Don't do it if you are affected by "..S(41487)..", "..S(41481).." or "..S(41482).." during it, or it might kill you.",
            }
        },
        
        {
            npcID = 22917,
            encounterID = 609, 
            bossName= "Illidan Stormrage",
            notes = {
                "STAGE ONE: You Are Not Prepared",
                "Tanks must have an active mitigation up for Shear.",
                "Only tanks can stand in front of the boss due to Draw Soul.",
                "Move out of Flame Crash.",
                "Heal targets from Parasitic Shadowfiend.",
                "STAGE TWO: Flames of Azzinoth",
                "Stay spread out to minimize damage from Fireball.",
                "Move out of Dark Barrage.",
                "Melee must stand at maximum melee range to avoid being damage by Flame of Azzinoth's Blaze.",
                "Only tanks can stand in front of Flame of Azzinoth, due to Flame Blast.",
                "Make sure Flame of Azzinoth never get away from their Original Warglaive, or Uncaged Wrath might wipe you",
                "STAGE THREE: The Demon Within",
                "Tanks must have an active mitigation up for Shear.",
                "Only tanks can stand in front of the boss due to Draw Soul.",
                "Move out of Flame Crash.",
                "Heal targets from Parasitic Shadowfiend.",
                "Stay spread for Agonizing Flames.",
                "Swap to and quickly kill Summon Shadow Demons.",
                "Stay away from Shadow Blast's target.",
                "Melee should prefer to attack other targets during Demon Form, due to Aura of Dread and Flame Burst.",
                "STAGE FOUR: The Long Hunt",
                "Tanks must have an active mitigation up for Shear.",
                "Only tanks can stand in front of the boss due to Draw Soul.",
                "Move out of Flame Crash.",
                "Heal targets from Parasitic Shadowfiend.",
                "Stay spread for Agonizing Flames.",
                "Swap to and quickly kill Summon Shadow Demons.",
                "Stay away from Shadow Blast's target.",
                "Melee should prefer to attack other targets during Demon Form, due to Aura of Dread and Flame Burst.",
                "Move Illidan into Cage Trap during Frenzy.",
            }
        },
    }
    
    -- Gruul's Lair
    ns.data[565] = {
        name = "Gruul's Lair",
        version = 2,
        {
            npcID = 18831,
            encounterID = 649, 
            bossName= "High King Maulgar",
            notes = {
            }
        },
        {
            npcID = 19044,
            encounterID = 650, 
            bossName= "Gruul the Dragonkiller",
            notes = {
            }
        },
    }
    
    -- Zul'Aman
    ns.data[568] = {
        name = "Zul'Aman",
        version = 2,
        {
            npcID = 23574,
            encounterID = 1189, 
            bossName= "Akil'zon",
            notes = {
            }
        },
        {
            npcID = 23576,
            encounterID = 1190, 
            bossName= "Nalorakk",
            notes = {
            }
        },
        {
            npcID = 23578,
            encounterID = 1191, 
            bossName= "Jan'alai",
            notes = {
            }
        },
        {
            npcID = 23577,
            encounterID = 1192, 
            bossName= "Halazzi",
            notes = {
            }
        },
        {
            npcID = 24239,
            encounterID = 1193, 
            bossName= "Hex Lord Malacrass",
            notes = {
            }
        },
        {
            npcID = 23863,
            encounterID = 1194, 
            bossName= "Daakara",
            notes = {
            }
        },
    }
    
    -- Sunwell Plateau
    ns.data[580] = {
        name = "Sunwell Plateau",
        version = 2,
        {
            npcID = 24850,
            encounterID = 724, 
            bossName= "Kalecgos",
            notes = {
            }
        },
        {
            npcID = 24882,
            encounterID = 725, 
            bossName= "Brutallus",
            notes = {
            }
        },
        {
            npcID = 25038,
            encounterID = 726, 
            bossName= "Felmyst",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 727, 
            bossName= "The Eredar Twins",
            notes = {
            }
        },
        {
            npcID = 25741,
            encounterID = 728, 
            bossName= "M'uru",
            notes = {
            }
        },
        {
            npcID = 25315,
            encounterID = 729, 
            bossName= "Kil'jaeden",
            notes = {
            }
        },
    }
    
    -- Magisters' Terrace
    ns.data[585] = {
        name = "Magisters' Terrace",
        instanceType = 1,
        version = 2,
        {
            npcID = 24723,
            encounterID = 1897, 
            bossName= "Selin Fireheart",
            notes = {
                "Drag the boss to one of the large green crystals and tank him there.",
                "Interrupt "..S(46155).."",
                "When he starts to channel the crystal, focus kill the crystal, then drag him to the next one.",
            }
        },
        {
            npcID = 24744,
            encounterID = 1898, 
            bossName= "Vexallus",
            notes = {
                "Uses "..S(44318)..".",
                ""..S(44319).." deals ticking damage.",
                "At 20% "..S(44353).." deals arcane damage & increases your damage taken.",
                "Boss summons adds, when they die do more arcane damage.",
                "[TW] Summons two adds at a time."
            }
        },
        {
            npcID = 24560,
            encounterID = 1895, 
            bossName= "Priestess Delrissa",
            notes = {
                "Inflicts ticking shadow damage with "..S(15654)..".",
                "Heals allies with "..S(41456)..".",
                "Protects herself with "..S(46193).." absorbing damage.",
                "Interrupt "..S(344425)..".",
                "Different adds will join fight, kill them quickly."
            }
        },
        {
            npcID = 165759,
            encounterID = 1894, 
            bossName= "Kael'thas Sunstrider",
            notes = {
                "Interrupt "..S(46164)..".",
                "Kill Phoenix Eggs fast, do not let them hatch.",
                "At 50% casts "..S(44224).." allowing you to fly.",
                "Move from Arcane Sphere they damage anyone they touch.",
                "[TW] Boss is protected with "..S(46165)..", absorbing damage & immune to interrupts. After "..S(46165).." interrupt "..S(36819)..".",
            }
        },
    }
    
end