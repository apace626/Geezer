local addonName, ns = ...

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function ns:DragonflightInitializeData()
     
    -- Uldaman: Legacy of Tyr
    ns.data[2451] = {
        name = "Uldaman: Legacy of Tyr",
        instanceType = 1,
        version = 10,
        {
            npcID = 6906,
            encounterID = 2555, 
            bossName= "The Lost Dwarves",
            notes = {
                "Face the Baelog away from the party as much as possible.",
                "Use defensives/mitigation for "..S(369563).."",
                "Dodge the arrow from "..S(369573).."",
                "Stay spread out from other party members for most of the fight.",
                "Avoid damage from "..S(369791).." (ground tremor)",
                "Interrupt Olaf when he casts "..S(369603)..", wait until the last seconds.",
                "When the Dwarves reach low HP, they will jump in a boat and fire cannons - "..S(375286).." - at the party. Stay stacked and move as one.",
                "[M] "..S(375286).." leaves fire patches on the floor.",
            }
        },
        {
            npcID = 184422,
            encounterID = 2558, 
            bossName= "Emberon",
            notes = {
                "Players targeted by "..S(369110).." should move away from you.",
                "When the boss reaches maximum energy, stop attacking the boss and start killing the adds, this phase goes faster if you split   up the group, one dps per add, and you team up with the healer to burn the fourth down.",
                "Avoid the fiery beams - "..S(368990).." - during the add phase",
                ""..S(369061).." is a frontal cone that should be faced away from the party.",
                "[M] "..S(369110).." now targets everyone, don't overlap the circles.",
            }
        },
        {
            npcID = 184125,
            encounterID = 2559, 
            bossName= "Chrono-Lord Deios",
            notes = {
                "Dodge the ground effect from "..S(376292).." and the lingering "..S(376325).." that stays afterwards.",
                "Be wary of the knockback from "..S(376049)..", don't get pushed into bad stuff on the floor.",
                ""..S(375727).." is a frontal cone that must be tanked, face the boss away from the party.",
                "During "..S(376208)..", stand in the "..S(376333).." to get a 30% haste buff.",
            }
        },
        {
            npcID = 184124,
            encounterID = 2557, 
            bossName= "Sentinel Talondras",
            notes = {
                "Be wary of the knockback from "..S(372701).."",
                "Do NOT touch any of the three "..S(372623).."s",
                "Keep an eye on the boss Energy Bar, once it reaches 100 energy she will become empowered and unstoppable for 40s - "..S(372719).." - You can prevent this by kiting the boss into an orb before she reaches 100 energy.",
                "[M] Every time the boss is stunned or casts "..S(372719).." she will gain stacks of "..S(386332)..". This gives her a stacking 10% damage done buff.",
            }
        },
        {
            npcID = 184018,
            encounterID = 2556, 
            bossName= "Bromach",
            notes = {
                "The boss will call adds with "..S(369605)..", get threat asap.",
                "Use LOS (Line-of-sight) or abilities to get the caster adds closer to you.",
                "Focus kill the totem - "..S(382303)..". the party takes heavy AOE damage when it is up. When the totem dies all adds will take 200% damage for 10 seconds.",
                "Move out of the aoe from "..S(369703).."",
                "[M] Tank the adds and boss on top of the totem, the damage taken debuff now has an 8 yard range.",
            }
        },
    }
    
    -- The Azure Vault
    ns.data[2515] = {
        name = "The Azure Vault",
        instanceType = 1,
        version = 10,
        {
            npcID = 199614,
            encounterID = 2583, 
            bossName= "Telash Greywing",
            notes = {
                "Stay spread out for "..S(387151)..", when a player is hit this cleaves off on others.",
                "Have mitigation/cooldown up for "..S(388008)..", ensure you stand in a "..S(388072).." so you will not be rooted down for 10s.",
                "When hit by "..S(386910).." try to drop the debuff close to other players, this will create a growing ice zone on the floor limiting your space, so good placement by all players is important.",
            }
        },
        {
            npcID = 186644,
            encounterID = 2582, 
            bossName= "Leymor",
            notes = {
                "The boss will spawn "..S(374364)..", you should tank the boss near these sprouts as you and the group needs to destroy these.",
                ""..S(386660).." is a frontal cone, aim this towards sprouts to destroy them.",
                ""..S(374567).." will knock everyone back, players with a circle should stand on top of sprouts to destroy them.",
                "The final boss ability "..S(374720).." does damage based on the amount of sprouts present. So the less sprouts, the less damage.",
            }
        },
        {
            npcID = 186739,
            encounterID = 2585, 
            bossName= "Azureblade",
            notes = {
                "Face the boss away from the group for "..S(372222)..".",
                "Pickup, interrupt and focus kill caster adds summoned by "..S(384223).."",
                "Dodge "..S(385578)..", a giant white beam.",
                "During "..S(384132)..", the boss will move to the middle of the arena and spawn four adds, focus kill them while dodging white beams shooting out of the orbs.",
            }
        },
        {
            npcID = 186738,
            encounterID = 2584, 
            bossName= "Umbrelskul",
            notes = {
                "Key in this fight is to move as little as possible to avoid stacks of "..S(388777)..", so choose a spot to tank and stick to it, face the boss away from the party.",
                "Tank the boss facing away from the party, you have to dodge "..S(384699).." much less, which is a frontal cone.",
                "Have mitigiation/cooldowns up for "..S(384978)..", the tank buster ability.",
                "Focus kill any DETONATING CRSYTAL adds spawned by the boss, if they finish their "..S(385331).." cast it's a wipe.",
                "When the boss reaches full energy "..S(385075).." gets cast. Vortexes will spawn in the arena and will move towards players, move away from them.",
            }
        },
    }
    
    -- The Nokhud Offensive
    ns.data[2516] = {
        name = "The Nokhud Offensive",
        instanceType = 1,
        version = 10,
        {
            npcID = 186151,
            encounterID = 2580, 
            bossName= "Balakar Khan",
            notes = {
                "Keep track of the bleed from "..S(375937)..", help the healer in any way you can with heals, mitigation an defensive cooldowns, this ability also increases damage taken from "..S(375929).." by 500%",
                "Don't get hit by the boss when he charges to get his spear - "..S(376683).."",
                "Avoid getting hit by "..S(375943)..", this knocks you back and hurts",
                "Focus kill the 4 Stormcaster adds asap during the intermission while avoiding the pools of "..S(211742)..". Interrupts and other utility abilities can group them up faster.",
                "When you're hit by "..S(376827)..", makes sure the healer dispels you, or you will take massive 500% damage from "..S(376829).."",
                "When you get pulled in by the spear, move away from it quickly.",
                "[M] "..S(375943).." will leave behind AOE pools that must be avoided.",
            }
        },
        {
            npcID = 195723,
            encounterID = 2581, 
            bossName= "Teera and Maruuk",
            notes = {
                "Tank the bosses together for cleave damage. When they reach full energy, avoid the Tornadoes from "..S(382670).." and Ground Eruptions from "..S(385339).." ",
                "Teera will periodically jump away with "..S(385412)..", drag Maruuk to her.",
                "Always have mitigation/cooldowns up for every cast of "..S(382836)..", this hits hard!",
                "Be wary of "..S(386063)..", this will fear you if you are close by, there are several ways to immune this, see class tips below.",
                "[M] If you don't tank them together, they will get a 5% damage buff every second. There's even less reason to keep them apart.",
            }
        },
        {
            npcID = 186615,
            encounterID = 2636, 
            bossName= "The Raging Tempest",
            notes = {
                "Stay in melee range at all times to avoid "..S(384761)..", but not too close or you will get hurt by "..S(386916)..".",
                "During the fight orbs of "..S(382630).." will appear, your team should distribute them roughly equally, heed the above bullet point. Every orb you collect will give you a 5% damage and healing buff.",
                "Have mitigation / cooldowns up for every "..S(384686)..", this hurts.",
                "Stay spread out to avoid multiple "..S(384316).." hits.",
                "[M] "..S(384316).." will destroy orbs of "..S(382630).."",
            }
        },
        {
            npcID = 186616,
            encounterID = 2637, 
            bossName= "Granyth",
            notes = {
                "Have mitigation/ a cooldown ready for "..S(388817)..", your healer will be grateful",
                "Avoid "..S(385916).."",
                "Assign a player to using the "..S(386530).."s.",
                "When the boss reaches full energy, one of three "..S(386530).."s will activate, the assigned player (the fastest) should run to a lance and click it. This will stun the boss and take 5% of his health. If this fails, the group will wipe.",
                "[M] An add - Nokhud Saboteur - will appear trying to stop you from using the lances by Dismantling them, focus kill it asap.",
            }
        },
    }
    
    -- Neltharus
    ns.data[2519] = {
        name = "Neltharus",
        instanceType = 1,
        version = 10,
        {
            npcID = 189478,
            encounterID = 2612, 
            bossName= "Forgemaster Gorek",
            notes = {
                "Have mitigation/cooldowns up for every cast of "..S(374535)..", this will knock you back. The boss will then try to smite you, move out of the circle AOE on the floor.",
                "Dodge the swirlies from "..S(375244).."",
                "During "..S(374594).." the boss will deal AOE damage and throw his "..S(374812).." to random players, this will form swirlies on the floor. Avoid those.",
                "[M] "..S(374535).." will create a fire zone on the floor, don't stand in it.",
            }
        },
        {
            npcID = 189340,
            encounterID = 2613, 
            bossName= "Chargath, Bane of Scales",
            notes = {
                "The boss will throw spears to players and tether them to the floor with "..S(373424)..", they need to run away from the spear and you have to kite the boss through the chain, do this 3 times to stun the boss and receive a damage buff.",
                ""..S(375056).." causes the boss to rampage and fixate you, this is a prime time to kite the boss through the chains to stop his attacks.",
                "Avoid lava pools created by all abilities.",
                "Dodge"..S(373767)..", a fire wave.",
            }
        },
        {
            npcID = 181861,
            encounterID = 2610, 
            bossName= "Magmatusk",
            notes = {
                "Avoid",
                ""..S(375068).." - will spawn fire swirlies on the floor.",
                "Avoid "..S(375251)..", a frontal cone",
                "Avoid the charge from "..S(375439).." and the fire waves it spawns when he hits the walls.",
                "The boss will spawn "..S(374410).."s when he reaches full energy, this buffs his abilities.",
                "[M] Keep the boss out of the magma zones on the floor or the boss will gain "..S(391457).."",
            }
        },
        {
            npcID = 189901,
            encounterID = 2611, 
            bossName= "Warlord Sargha",
            notes = {
                "During "..S(376780)..", you and the other party members need to dig through he piles of gold and find items, this damages the shield and when it break the boss takes increased damage, save your offensive cooldowns for this.",
                ""..S(377477).." causes an add to spawn that fixates a random player, tank the boss on top of the add for cleave damage, the add will drop fire patches on the floor, avoid these.",
                "Dodge the frontal cone "..S(377204).."",
                "[M] Do NOT pick up a weapon while finding treasure, it will curse you with "..S(391762).."",
                "[M] Do NOT tank the boss on the add as the boss will have  "..S(376780).." - a shield that pulses AOE damage.",
            }
        },
    }
    
    -- Brackenhide Hollow
    ns.data[2520] = {
        name = "Brackenhide Hollow",
        instanceType = 1,
        version = 10,
        {
            npcID = 186122,
            encounterID = 2570, 
            bossName= "Hackclaw's War-Band",
            notes = {
                "Avoid "..S(381834)..", Rira spinning animation",
                "Interrupt "..S(377950)..", if not, the boss will be healed!",
                "Try to keep their HP at the same level by cleaving them, when one drops below 15% HP they will enter "..S(377965).."",
                "Focus kill the "..S(381470)..", if not party members will be incapacitated",
                "Face Rira Hackclaw away from the party at all times, she "..S(377806).."s her damage.",
                "When Rira used "..S(381416)..", you have to soak it by standing in between the boss and the target. Some classes can immune this however."
            }
        },
        {
            npcID = 186116,
            encounterID = 2567, 
            bossName= "Gutshot",
            notes = {
                "Focus kill the Hyenas. When the boss casts "..S(384416).." you will lose aggro and there's nothing you can do about it.",
                "Kite the hyenas into the "..S(383979).." on the floor to ensnare them. Make sure not to run into the traps yourself!",
                "The hyenas will jump around with "..S(384558)..". it hurts a lot and you will get stunned if you stand where they land.",
                "Beware of "..S(384353)..", it's a knockback, you don't want to land in a trap.",
                "[M] Traps that get activated will rearm after +-5 seconds.",
            }
        },
        {
            npcID = 186120,
            encounterID = 2568, 
            bossName= "Treemouth",
            notes = {
                "Avoid the frontal cone from "..S(376231)..".",
                "Interrupt the "..S(381770).." casts of the slime adds.",
                "When adds die they will leave a nasty pool on the floor. Avoid!",
                "During the "..S(376933).." cast, make sure you stand close to the boss to be eaten - "..S(377184)..".",
                ""..S(377559).." is a frontal cone that needs to be tanked, aim it away from your party members.",
                "[M] You cannot be eaten twice in a row! so someone else needs to be eaten by "..S(377184).." (10y range), if that player neglects their assigned task, the boss will enrage with "..S(390968).."",
            }
        },
        {
            npcID = 186121,
            encounterID = 2569, 
            bossName= "Decatriarch Wratheye",
            notes = {
                "Avoid and/or move out of the cloud from "..S(376170)..".",
                "Focus kill the "..S(373942)..", tank the boss on top of it for cleave damage.",
                "use mitigation and/or defensive cooldowns on "..S(373912)..".",
                "[M] "..S(373896).." will keep ticking up and cannot be removed.",
            }
        },
    }
    
    -- Ruby Life Pools
    ns.data[2521] = {
        name = "Ruby Life Pools",
        instanceType = 1,
        version = 10,
        {
            npcID = 188252,
            encounterID = 2609, 
            bossName= "Melidrussa Chillworn",
            notes = {
                "Don't step in the center of "..S(372851).." or on icicles left over from "..S(384022),
                "Once the boss casts "..S(373046)..", be ready to deal AoE damage to quickly defeat Infused Whelps",
                "(Heal) Dispel "..S(372682).." on cooldown. 8 stacks will freeze you.",
                "[M] After "..S(373046)..", she will gain an "..S(372988)..", dealing heavy AOE damage until the ice shield is broken."
            }
        },
        {
            npcID = 189232,
            encounterID = 2606, 
            bossName= "Kokia Blazehoof",
            notes = {
                "Tank use a cooldown for every cast of "..S(372858),
                "Avoid the giant boulder from "..S(372811)..", if you fail to do so, you will be stunned for 3s.",
                "Focus kill the add spawned by "..S(372863)..", tank the boss on top of the add for cleave, interrupt "..S(373017)..", move away from it when it dies, it goes boom!",
                "[M] When the add dies it will leave behind a fire zone on the floor. Boulders will leave a fire trail behind.",
            }
        },
        {
            npcID = 199790,
            encounterID = 2623, 
            bossName= "Kyrakka and Erkhart Stormvein",
            notes = {
                "Avoid the dragon's breath - "..S(381525).." so you won't be afflicted with "..S(381862)..", a fire DoT.",
                "When "..S(381862).." expires players will drop a fire zone that needs to be avoided.",
                "Use mitigation and rotate defensive cooldowns for "..S(381514)..", it hurts, but can be dispelled by healers.",
                "Be mindful of where the flame zones are so you can avoid them when the wind from "..S(381517).." blows them to you.",
                "[M] Stepping in fire zones, will re-aply the "..S(381862).." DoT",
                "[M] Erkhart will interrupt spellcasting with "..S(381516)..", make sure you stop pressing buttons when the cast goes off.",
            }
        },
    }
    
    -- Vault of the Incarnates
    ns.data[2522] = {
        name = "Vault of the Incarnates",
        instanceType = 2,
        version = 10,
        {
            npcID = 184972,
            encounterID = 2587, 
            bossName= "Eranog",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2592, 
            bossName= "Sennarth, the Cold Breath",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2590, 
            bossName= "The Primal Council",
            notes = {
            }
        },
        {
            npcID = 181378,
            encounterID = 2605, 
            bossName= "Kurog Grimtotem",
            notes = {
            }
        },
        {
            npcID = 190245,
            encounterID = 2614, 
            bossName= "Broodkeeper Diurna",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2607, 
            bossName= "Raszageth the Storm-Eater",
            notes = {
            }
        },
        {
            npcID = 190496,
            encounterID = 2639, 
            bossName= "Terros",
            notes = {
            }
        },
        {
            npcID = 189813,
            encounterID = 2635, 
            bossName= "Dathea, Ascended",
            notes = {
            }
        },
    }
    
    -- Algeth'ar Academy
    ns.data[2526] = {
        name = "Algeth'ar Academy",
        instanceType = 1,
        version = 10,
        {
            npcID = 191736,
            encounterID = 2564, 
            bossName= "Crawth",
            notes = {
                "Use active mitigation / cooldowns for "..S(376997)..".",
                "Avoid the frontal "..S(377034)..", this will throw you off the platform.",
                "Don't press any buttons when the boss casts "..S(377004)..", this will interrupt you",
                ""..S(377004).." will also apply a damage taken debuff called "..S(397210).." on you. You can score goals during the "..S(377182).." intermission to get rid of the stacks.",
                "There are two intermissions and two goals. Score goals on one side each intermission. Inevitably, both boss powers will be active at some point.",
            }
        },
        {
            npcID = 194181,
            encounterID = 2562, 
            bossName= "Vexamus",
            notes = {
                "Face the boss away from the party during "..S(385958)..", you will have to tank the ability.",
                "There will be 5 "..S(387691).." in the arena, every party member should soak one orb. Alternatively, a player with a magic immunity can soak them all.",
                "When the boss reaches full energy he will cast "..S(388537)..", this will knock you back, avoid the swirlies when you land.",
                "Don't stand in the pools left behind from "..S(386173).."",
            }
        },
        {
            npcID = 196482,
            encounterID = 2563, 
            bossName= "Overgrown Ancient",
            notes = {
                "Have mitigation / cooldowns ready for every cast of "..S(388544)..".",
                "Save your offensive cooldowns for "..S(388923)..", all dormant adds will awaken",
                "Try to group up the dormant adds by having all players standing together close to the boss, this will make your job a lot easier.",
                "Dodge the brown swirlie from "..S(388623)..", this will knock you back.",
                "When the ANCIENT BRANCH appears, focus kill it and interrupt every "..S(396640).." cast, make sure to stand on top of it when it dies to remove your stacks of "..S(396716)..".",
            }
        },
        {
            npcID = 190609,
            encounterID = 2565, 
            bossName= "Echo of Doragosa",
            notes = {
                "Tank the boss near the edges of the arena to ensure you and your party have plenty of space to place Rifts.",
                "Every player will drop an "..S(388901).." - blue circle with a fire orb. Don't tank the boss next to those as they will explode periodically. You get a stack whenever you get hit by any ability from the boss.",
                "The group should place the "..S(388901).."s close to each other.",
                "Avoid "..S(374361)..", a frontal cone aimed at a random player.",
                "The boss will suck you towards her with "..S(388822)..", run away instantly or get hit by AOE damage.",
                "Move away from the player targeted by "..S(374352)..".",
            }
        },
    }
    
    -- Halls of Infusion
    ns.data[2527] = {
        name = "Halls of Infusion",
        instanceType = 1,
        version = 10,
        {
            npcID = 189719,
            encounterID = 2615, 
            bossName= "Watcher Irideus",
            notes = {
                "Aim the frontal cone - "..S(384524).." - away from the group.",
                "During Phase 2, pick up the golden orbs adds and tank them on the boss so you can destroy the "..S(383840)..".",
                "Don't step in to "..S(383935).." pools on the floor.",
                "Interrupt the golden orb adds "..S(389443)..".",
                "[M] During Phase 2 when you kill an add the boss will throw around pools of "..S(383952)..", avoid these.",
            }
        },
        {
            npcID = 189722,
            encounterID = 2616, 
            bossName= "Gulping Goliath",
            notes = {
                "Drag the boss to the dragonkin adds to cleave them down.",
                "Dodge "..S(375215)..".",
                "Dodge "..S(385531)..".",
                "Assign a player to be eaten by "..S(385551)..", if they don't do their assigned job the boss will become "..S(385743)..", enraged.",
                "Keep track of the "..S(374389).." debuff, 10 stacks and you're dead.",
            }
        },
        {
            npcID = 189727,
            encounterID = 2617, 
            bossName= "Khajin the Unyielding",
            notes = {
                "Tank the boss close to the "..S(386222).."s",
                "Hide behind the "..S(386222).." during "..S(386757)..".",
                "Don't hide behind the same "..S(386222).." twice as they will be destroyed and does big AOE damage with "..S(386295)..".",
                "Avoid the ice rings from "..S(386559)..".",
                "[M] The boss will shoot "..S(390006).."s to players, make sure these don't touch the "..S(386222).." or they will be damaged and potentially destroyed.",
            }
        },
        {
            npcID = 189729,
            encounterID = 2618, 
            bossName= "Primal Tsunami",
            notes = {
                "Do NOT leave melee range of the boss or the group will take heavy AOE damage.",
                "To make your life easier, the boss will often knock you back with "..S(387504)..", get back into melee range asap.",
                "Do NOT touch any "..S(387559).." or you will be damaged and slowed down",
                "In P2, dodge the "..S(383204).." and nuke down the adds.",
                "Interrupt those adds.",
                "[M] Dodge the waves from "..S(388760).."",
            }
        },
    }
    
    -- Aberrus, the Shadowed Crucible
    ns.data[2569] = {
        name = "Aberrus, the Shadowed Crucible",
        instanceType = 2,
        version = 10,
        {
            npcID = 999999,
            encounterID = 2685, 
            bossName= "Scalecommander Sarkareth",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2688, 
            bossName= "Kazzara, the Hellforged",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2684, 
            bossName= "Echo of Neltharion",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2682, 
            bossName= "Assault of the Zaqali",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2680, 
            bossName= "Rashok, the Elder",
            notes = {
            }
        },
        {
            npcID = 201579,
            encounterID = 2683, 
            bossName= "Magmorax",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2687, 
            bossName= "The Amalgamation Chamber",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2693, 
            bossName= "The Forgotten Experiments",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2689, 
            bossName= "The Vigilant Steward, Zskarn",
            notes = {
            }
        },
    }
    
    -- Dawn of the Infinite
    ns.data[2579] = {
        name = "Dawn of the Infinite",
        instanceType = 1,
        version = 10,
        {
            npcID = 198995,
            encounterID = 2666, 
            bossName= "Chronikar",
            notes = {
                "Use cooldowns/mitigation for every Chronoshear! It'll be a great help to your healer who's trying to cope with the Sheared Lifespan aftermath.",
                "Position Sand Stomp strategically at the edge of the room. Don't stand in it!",
                "At full energy Chronikar will cast Eon Shatter, dodge the circle and fragments, then quickly move back in to soak Eon Residue",
            }
        },
        {
            npcID = 198998,
            encounterID = 2670, 
            bossName= "Tyr, the Infinite Keeper",
            notes = {
                "Aim Titanic Blow away from your party and take the hit with a cooldown/mitigation. Be careful of the platform edge as the boss will knock you back.",
                "Don't stand in Consecrated Ground.",
                "Help soak Dividing Strike, this ability needs to hit at least two players or the boss will be buffed by Titanic Empowerment",
                "Dodge Infinite Annihilation , a frontal aimed at a random player.",
                "During Siphon Oathstone you want to collect Temporal Essence orbs, this will buff you. Consider leaving them all for the dps players if your damage output is rather low, you can collect any leftovers.",
            }
        },
        {
            npcID = 206238,
            encounterID = 2667, 
            bossName= "Manifested Timeways",
            notes = {
                "Try to stand in the Decaying Time zone to reduce damage taken by 20%.",
                "Unwind is a frontal you have to look out for, if you stand in the Decaying Time zone the second hit will come a lot slower giving you time to react.",
                "You should always be in melee range of the boss or your party will wipe due to Radiant",
                "Dodge the missiles during Fragments of Time, they will be slowed by the Decaying Time zone",
            }
        },
        {
            npcID = 999999,
            encounterID = 2672, 
            bossName= "Time-Lost Battlefield",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2672, 
            bossName= "Time-Lost Battlefield",
            notes = {
            }
        },
        {
            npcID = 207639,
            encounterID = 2668, 
            bossName= "Blight of Galakrond",
            notes = {
                "During P1 the boss will drop Blight Seep zones on the floor, do your best to minimize boss movement.",
                "Avoid Corrosive Expulsion pools or be stunned.",
                "Your party members should hand their Corrosion debuff stacks to you by touching you. You then need to move into the boss frontal – Blight Reclamation to remove it, this will hurt so definitely use a cooldown! Yes, you should get hit by the frontal 🙂",
                "During P2 you still need to manage the Corrosion debuff while dodging tornadoes. Make liberal use of mitigation, externals and cooldowns.",
                "During P3 try your best to keep the 2 bosses together for cleave damage.",
                "During P2 you still need to manage the Corrosion debuff while avoiding the Incinerating Blightbreath frontal and help free the player frozen by Necrofrost",
            }
        },
        {
            npcID = 202789,
            encounterID = 2671, 
            bossName= "Morchie",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2669, 
            bossName= "Iridikron the Stonescaled",
            notes = {
                "One of your main tasks will be to pick up the Pulverizing Creations  adds.",
                "During Stonecracker Barrage you should be soaking the small circle, while your party soaks the big one. Pop a cooldown for Stonecrack at the end of the soak.",
                "The player targeted by Extinction Blast should run underneath Chromie’s Timeline Protection to avoid death.",
                "Keep mitigation up during Earthsurge  and avoid spikes and ground stuff",
                "Dodge Pulverizing Exhalation, a frontal cone. Try to loosely stack with your party as this ability spawns adds you need to pick up.",
                "During Cataclysmic Obliteration, pop every cooldown you have left and stand under Chromie, this ends the boss fight",
            }
        },
        {
            npcID = 184125,
            encounterID = 2673, 
            bossName= "Chrono-Lord Deios",
            notes = {
                "Dodge the ground effect from "..S(376292).." and the lingering "..S(376325).." that stays afterwards.",
                "Be wary of the knockback from "..S(376049)..", don't get pushed into bad stuff on the floor.",
                ""..S(375727).." is a frontal cone that must be tanked, face the boss away from the party.",
                "During "..S(376208)..", stand in the "..S(376333).." to get a 30% haste buff.",
            }
        },
    }
    
end