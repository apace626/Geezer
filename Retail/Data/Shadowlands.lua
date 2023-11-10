local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ShadowlandsInitializeData()
     
    -- Sanguine Depths
    addonTable.data[2284] = {
        name = "Sanguine Depths",
        {
            npcID = 162100,
            encounterID = 2360, 
            bossName= "Kryxis the Voracious",
            notes = {
                "When he charges a player ("..S(319713)..") the group needs to soak it by standing in its path.",
                "Interrupt "..S(319654).." asap",
                ""..S(319685).." - the group needs to move away from the boss and soak the orbs they drop before they hit hit the boss",
                ""..S(319650).." - Tank hit with knockback, mitigate it.",
            }
        },
        {
            npcID = 165318,
            encounterID = 2363, 
            bossName= "General Kaal",
            notes = {
                "First you need to pass the gauntlet, there will be a lot of trash mobs to kill, at 70% remaining health the boss will flee to his room.",
                ""..S(322895).." - use the shield on top of the boss and have the group stack in it.",
                ""..S(323845).." - spread out, the bleed it leaves can be removed during "..S(322895)..".",
                ""..S(323810).." - dodge all the red stuff.",
            }
        },
        {
            npcID = 162103,
            encounterID = 2361, 
            bossName= "Executor Tarvold",
            notes = {
                "Pull the boss a little bit into the corridor and dodge the circling orbs.",
                ""..S(322554).."- Move away from the group if you have a giant red circle on you.",
                "When an add spawns it needs to die asap, hard switch to the add."
            }
        },
        {
            npcID = 162102,
            encounterID = 2362, 
            bossName= "Grand Proctor Beryllia",
            notes = {
                "IRON SPIKES - Tank hit, mitigate.",
                ""..S(325360).." - pick up at least 3 glowing orbs to protect yourself from damage. On difficulties below Mythic, you and the group needs to stand in a yellow circle to avoid damage.",
                ""..S(326039).." - Avoid yellow swirlies on the floor.",
            }
        },
    }
    
    -- Spires of Ascension
    addonTable.data[2285] = {
        name = "Spires of Ascension",
        {
            npcID = 162059,
            encounterID = 2357, 
            bossName= "Kin-Tara",
            notes = {
                "They share HP, don't get hit by the beam connecting them.",
                "Physical tank damage (frontal) called "..S(320966).."",
                "Spread out when you get targeted by spear and drop the zone on the side.",
                "Dodge the black orbs from Azules.",
            }
        },
        {
            npcID = 167410,
            encounterID = 2359, 
            bossName= "Devos, Paragon of Doubt",
            notes = {
                ""..S(323943).." - Dodge the charge.",
                ""..S(334625).." - move inside the giant dome or die.",
                ""..S(322818).." - players getting hit will drop their damaging confidence.",
                "In P2 gather all blue orbs (5) and throw a spear (centrally located) in the face of the boss. Make sure you don't miss, wait until the boss moves sideways, when she stops, throw."
            }
        },
        {
            npcID = 162060,
            encounterID = 2358, 
            bossName= "Oryphrion",
            notes = {
                ""..S(323195).." - When targeted, move away from group.",
                ""..S(324444).." - Stack together (when you see a blue arrow on your head) and move out of the zone when it drops.",
                ""..S(324046).." - While he recharges, tank soaks the orbs.",
                ""..S(324608).." - Physical tank hit",
            }
        },
        {
            npcID = 162058,
            encounterID = 2356, 
            bossName= "Ventunax",
            notes = {
                ""..S(323927).." - Dodge the black orbs, they fire counterclockwise.",
                "Dodge the frontal aoe, aim it away from the group ("..S(324205)..")",
                "in P2 she becomes inactive, just dodge all projectiles and ignore boss.",
                ""..S(324148).." - charges to a player, gives them a bleed debuff and leaves a "..S(323927).." behind.",
            }
        },
    }
    
    -- The Necrotic Wake
    addonTable.data[2286] = {
        name = "The Necrotic Wake",
        {
            npcID = 163157,
            encounterID = 2388, 
            bossName= "Amarth, The Harvester",
            notes = {
                "Group and kill adds and move away from the corpses.",
                "Dodge the frontal cone "..S(333493)..".",
                "Soothe the "..S(320012).." Cast (Enrage).",
            }
        },
        {
            npcID = 166882,
            encounterID = 2389, 
            bossName= "Surgeon Stitchflesh",
            notes = {
                "When you're targeted by "..S(322681).." (red skull over your head and red circle around your feet) aim it towards Stitchflesh to pull him down of the ledge.",
                "Mutilate and Sever Flesh are large tank hits.",
                "When fixated, kite him or stop it with "..S(322681).."",
            }
        },
        {
            npcID = 162691,
            encounterID = 2387, 
            bossName= "Blightbone",
            notes = {
                "Stay out of green stuff.",
                "Kill adds. If you're fixated by one, try not to let it touch you.",
                "Crunch, Tank hit.",
            }
        },
        {
            npcID = 166945,
            encounterID = 2390, 
            bossName= "Nalthor the Rimebinder",
            notes = {
                "Dispel "..S(320788).." (big circle) when everyone is out of the circle.",
                "Dodge the void zones during "..S(320784)..".",
                "One DPS player is sent down to kill an add downstairs, when they return they spawn a large void zone, dodge it.",
                "Mitigate Icy Shard, tank hit.",
            }
        },
    }
    
    -- Halls of Atonement
    addonTable.data[2287] = {
        name = "Halls of Atonement",
        {
            npcID = 156827,
            encounterID = 2380, 
            bossName= "Echelon",
            notes = {
                "The boss will summon 6 small adds, group them and burn them until they turn to stone.",
                "Afterwards the boss will cast "..S(319592)..", one player will get a circle on them and need to position themselves over the stone adds to kill them.",
                ""..S(319603).." - slow + 3 second stun.",
            }
        },
        {
            npcID = 165408,
            encounterID = 2401, 
            bossName= "Halkias, the Sin-Stained Goliath",
            notes = {
                "(MYTHIC) - Only pull when all players are within boss melee range . Stay in the giant red circle or you will get permanently feared.",
                ""..S(322936).." (tank) and "..S(322943).." (ranged) creates red zones you need to avoid. Zone placement is very important during the fight. If the arena is filled move the boss to a clearer zone.",
                "Dodge the rotating beams from "..S(322913)..", make sure there is enough free space on the floor to avoid the beams."
            }
        },
        {
            npcID = 165410,
            encounterID = 2403, 
            bossName= "High Adjudicator Aleez",
            notes = {
                "Interrupt "..S(323552).."",
                "Avoid the giant swirlies on the floor.",
                "When the boss spawns ghosts, they fixate someone; kite them to the vessels and they will vanish.",
            }
        },
        {
            npcID = 164218,
            encounterID = 2381, 
            bossName= "Lord Chamberlain",
            notes = {
                ""..S(323437).." - Tank DoT that increases over time.",
                "Avoid the statues that he will throw around. They move in the direction they are facing.",
                "The boss will move all 4 statues to him and throw them out again, AVOID.",
                ""..S(328791).." - group needs to soak all red beams",
            }
        },
    }
    
    -- Plaguefall
    addonTable.data[2289] = {
        name = "Plaguefall",
        {
            npcID = 164967,
            encounterID = 2384, 
            bossName= "Doctor Ickus",
            notes = {
                ""..S(329110).." - Make sure the healer dispels this from the tank.",
                "When the PLAGUE BOMB add spawns it needs to die first.",
                "The boss will summon a small add too, it reduces the damage taken by other enemies by 75%, keep it away from the PLAGUE BOMB",
                "Dodge all stuff on the floor from abilities.",
            }
        },
        {
            npcID = 164267,
            encounterID = 2386, 
            bossName= "Margrave Stradama",
            notes = {
                "She will summon a MALIGNENT SPAWN (add), this needs to be soaked by the tank.",
                "She will summon small adds, kill when able.",
                "The most dangerous part of the fight is when she summons tentacles, find the gap or watch the spawn pattern and avoid getting hit.",
            }
        },
        {
            npcID = 164255,
            encounterID = 2382, 
            bossName= "Globgrog",
            notes = {
                "The boss summons adds, kill the small ones before they reach the boss, Hard CC the Big add and nuke the boss.",
                ""..S(324527).." - unavoidable knockback with a DoT and slow.",
                ""..S(324667).." - avoid the frontal cone.",
            }
        },
        {
            npcID = 164266,
            encounterID = 2385, 
            bossName= "Domina Venomblade",
            notes = {
                ""..S(325552).." - Dispel it off the tank if possible.",
                "The group needs to stay stacked within 6 yards, when targeted by "..S(325245)..", move out of the group.",
                "Use AOE abilities to reveal hidden ASSASSINS in the "..S(332397).." cast by the boss.",
                "Kill any Stealthlings spawned by adds.",
            }
        },
    }
    
    -- Mists of Tirna Scithe
    addonTable.data[2290] = {
        name = "Mists of Tirna Scithe",
        {
            npcID = 164567,
            encounterID = 2397, 
            bossName= "Ingra Maloch",
            notes = {
                "DPS Droman (big boss) until he goes friendly (20%), pop your cooldowns and swap to Ingra Maloch (small boss) while Droman is stunned.",
                "Position Droman's "..S(323137).." (Frontal cone) away from your group.",
                "Interrupt "..S(323057).."",
                "Stay out of blue stuff on the ground.",
                "The boss casts an "..S(328756).." (Fear), make sure dps can do their job.",
            }
        },
        {
            npcID = 170217,
            encounterID = 2392, 
            bossName= "Mistcaller",
            notes = {
                "Dodge the arrows on the ground ("..S(321834)..").",
                "when she summons a fox, don't touch it; you can CC it.",
                "You need to interrupt "..S(321828)..", or you will wipe the party.",
                "During the intermissions, at 70%, 40% and 10% health (Guessing Game), kill the one everyone else is killing.",
            }
        },
        {
            npcID = 164517,
            encounterID = 2393, 
            bossName= "Tred'ova",
            notes = {
                "Kick as many of the boss' casts as you can and kill adds (fixated player should bring them over to you, after 20 seconds you can tank them).",
                "If you get "..S(322614).." (blue line between you and another player), run away to break it.",
                "Avoid stuff on the ground.",
                "At 70% and 40%, DPS through his shield and interrupt him.",
            }
        },
    }
    
    -- De Other Side
    addonTable.data[2291] = {
        name = "De Other Side",
        {
            npcID = 164450,
            encounterID = 2400, 
            bossName= "Dealer Xy'exa",
            notes = {
                "Tank the boss near the white circles on the ground. "..S(319619).."",
                "If you get a bomb, step into one of the circles 1-2 seconds before it goes off.",
                "When the boss casts "..S(320232)..", step into a white circle 1-2 seconds before the cast goes off.",
                "Avoid beams.",
                "Avoid the Frontal Cone (Displaced Blastwave).",
                "Arcane Lightning gives the tank an arcane debuff."
            }
        },
        {
            npcID = 166473,
            encounterID = 2395, 
            bossName= "Hakkar the Soulflayer",
            notes = {
                "Spread out and avoid dark red pools on the ground.",
                "Use Damage reduction cooldowns to reduce the size of his shield during "..S(322759).."",
                ""..S(322736)..", two tank hits, first is physical, next is magic.",
                "When he summons ads, have dps burn them, they drop red pools on the floor.",
            }
        },
        {
            npcID = 999999,
            encounterID = 2394, 
            bossName= "The Manastorms",
            notes = {
                "Absorb purple beams.",
                "If someone gets "..S(324047).." (red marker over your head), they should position themselves so that Milhouse is between the two targeted player.",
            }
        },
        {
            npcID = 169769,
            encounterID = 2396, 
            bossName= "Mueh'zala",
            notes = {
                "Avoid where the boss' arms are charging up attacks (left, right, front).",
                "You'll get hit by Soul Crusher, physical hit with DoT. Mitigate/use a cooldown.",
                "If you get a purple circle over your head, drop it on the edge of the room (only happens when a party member dies.",
                "On phase two, click a portal during "..S(326171)..", kill the add you find on that platform, and then click the totem there.",
            }
        },
    }
    
    -- Theater of Pain
    addonTable.data[2293] = {
        name = "Theater of Pain",
        {
            npcID = 162309,
            encounterID = 2364, 
            bossName= "Kul'tharok",
            notes = {
                "Tank just needs to stand in the middle, looking pretty.",
                "When the boss casts "..S(319521).." the group needs to stand behind the "..S(319589).." so that their stolen soul gets grabbed by these hands. If not the player needs to chase their soul to get it back.",
                ""..S(319626).." - This is a DoT, dispel from one player, heal the other.",
            }
        },
        {
            npcID = 162329,
            encounterID = 2366, 
            bossName= "Xav the Unfallen",
            notes = {
                ""..S(320644).." - Tank hit",
                "When he summons his BANNER, kill it quickly.",
                "When you see a big circle on the floor GET OUT.",
                "When you see a small circle on the floor, GET OUT.",
                "When you see his frontal cone, GET OUT.",
                "2 DPS will be sent down the arena to duel, may the best win.",
            }
        },
        {
            npcID = 999999,
            encounterID = 2391, 
            bossName= "An Affront of Challengers",
            notes = {
                "Interrupt SATHEL, and kill this one first.",
                "PACERAN - kill this one second. Makes everyone drop puddles around them, move out. Cure Disease.",
                "DESSIA - kill this one third. Hits tank with MORTAL STRIKE and SLAM, chases group around, they need to kite. Dispel Enrage.",
                "XIRA - When she stuns a player, use CC to cancel the stun channel.",
            }
        },
        {
            npcID = 162317,
            encounterID = 2365, 
            bossName= "Gorechop",
            notes = {
                "Group needs to stay near the boss to avoid "..S(318406).."",
                ""..S(322795)..", find the gap twice and move through it, don't get hit.",
                ""..S(323515).." - Tank hit.",
                "When the ads die they leave behind a pool of ooze, kill them near the edges.",
            }
        },
        {
            npcID = 165946,
            encounterID = 2404, 
            bossName= "Mordretha, the Endless Empress",
            notes = {
                ""..S(324079).." - Tank hit.",
                "When she spews out her rotating frontal attack, "..S(323681)..", dodge it.",
                ""..S(323685).." - Spread out a bit and fight the pull. Adds will spawn, focus kill them.",
                "At 50% She goes to P2 move away from the fighting ghosts.",
                "Look out for the charging ghosts, dodge them.",
            }
        },
    }
    
    -- Castle Nathria
    addonTable.data[2296] = {
        name = "Castle Nathria",
        {
            npcID = 172145,
            encounterID = 2398, 
            bossName= "Shriekwing",
            notes = {
            }
        },
        {
            npcID = 174733,
            encounterID = 2399, 
            bossName= "Sludgefist",
            notes = {
            }
        },
        {
            npcID = 183501,
            encounterID = 2405, 
            bossName= "Artificer Xy'mox",
            notes = {
            }
        },
        {
            npcID = 167517,
            encounterID = 2406, 
            bossName= "Lady Inerva Darkvein",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2402, 
            bossName= "Sun King's Salvation",
            notes = {
            }
        },
        {
            npcID = 168938,
            encounterID = 2407, 
            bossName= "Sire Denathrius",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2417, 
            bossName= "Stone Legion Generals",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2412, 
            bossName= "The Council of Blood",
            notes = {
            }
        },
        {
            npcID = 164261,
            encounterID = 2383, 
            bossName= "Hungering Destroyer",
            notes = {
            }
        },
        {
            npcID = 165066,
            encounterID = 2418, 
            bossName= "Huntsman Altimor",
            notes = {
            }
        },
    }
    
    -- Sanctum of Domination
    addonTable.data[2450] = {
        name = "Sanctum of Domination",
        {
            npcID = 152253,
            encounterID = 2423, 
            bossName= "The Tarragrue",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2429, 
            bossName= "The Nine",
            notes = {
            }
        },
        {
            npcID = 175559,
            encounterID = 2422, 
            bossName= "Kel'Thuzad",
            notes = {
            }
        },
        {
            npcID = 175732,
            encounterID = 2435, 
            bossName= "Sylvanas Windrunner",
            notes = {
            }
        },
        {
            npcID = 180018,
            encounterID = 2433, 
            bossName= "The Eye of the Jailer",
            notes = {
            }
        },
        {
            npcID = 176523,
            encounterID = 2430, 
            bossName= "Painsmith Raznal",
            notes = {
            }
        },
        {
            npcID = 175729,
            encounterID = 2432, 
            bossName= "Remnant of Ner'zhul",
            notes = {
            }
        },
        {
            npcID = 175727,
            encounterID = 2434, 
            bossName= "Soulrender Dormazain",
            notes = {
            }
        },
        {
            npcID = 175731,
            encounterID = 2436, 
            bossName= "Guardian of the First Ones",
            notes = {
            }
        },
        {
            npcID = 179390,
            encounterID = 2431, 
            bossName= "Fatescribe Roh-Kalo",
            notes = {
            }
        },
    }
    
    -- Sepulcher of the First Ones
    addonTable.data[2481] = {
        name = "Sepulcher of the First Ones",
        {
            npcID = 999999,
            encounterID = 2543, 
            bossName= "Lords of Dread",
            notes = {
            }
        },
        {
            npcID = 180773,
            encounterID = 2512, 
            bossName= "Vigilant Guardian",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2540, 
            bossName= "Dausegne, the Fallen Oracle",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2544, 
            bossName= "Prototype Pantheon",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2539, 
            bossName= "Lihuvim, Principal Architect",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2529, 
            bossName= "Halondrus the Reclaimer",
            notes = {
            }
        },
        {
            npcID = 180990,
            encounterID = 2537, 
            bossName= "The Jailer",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2542, 
            bossName= "Skolex, the Insatiable Ravener",
            notes = {
            }
        },
        {
            npcID = 182777,
            encounterID = 2549, 
            bossName= "Rygelon",
            notes = {
            }
        },
        {
            npcID = 181954,
            encounterID = 2546, 
            bossName= "Anduin Wrynn",
            notes = {
            }
        },
        {
            npcID = 183501,
            encounterID = 2553, 
            bossName= "Artificer Xy'mox",
            notes = {
            }
        },
    }
    
end