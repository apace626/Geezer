local addonName, ns = ...

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    --print(name, _, icon)
    if not name then
        --print('Missing Spell: ', id)
        return "[Spell]"
    else
        return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
    end
end

function ns:ClassicInitializeData()

    -- Shadowfang Keep *
    ns.data[33] = {
        name = "Shadowfang Keep",
        instanceType = 1,
        version = 1,
        {
            npcID = 3914,
            encounterID = 0, 
            bossName= "Rethilgore",
            notes = {
                "Kill adds first",
                "Tank and Spank"
            }
        },
        {
            npcID = 3864,
            encounterID = 0, 
            bossName= "Fel Steeds/Shadow Charger",
            notes = {
                "CC at least one horse if you can",
                "Tank and Spank",
                "Big damage fight, healer be ready."
            }
        },
        {
            npcID = 3886,
            encounterID = 0, 
            bossName= "Razorclaw the Butcher",
            notes = {
                "Clear room before pulling boss.",
                "Tank and Spank"
            }
        },
        {
            npcID = 3887,
            encounterID = 0, 
            bossName= "Baron Silverlaine",
            notes = {
                S(7068).." reduces healing effects on a target by 75%.",
                "Hybrid classes assist healer.",
                "Tank and Spank"
            }
        },
        {
            npcID = 4278,
            encounterID = 0, 
            bossName= "Commander Springvale",
            notes = {
                "Commander Springvale is flanked by two mobs that will pull with him.",
                "Tank Wailing Guardsman off to side with pet. He has an AOE silence",
                "Kill Haunted Servitor first, then Springvale, and then Guardsman",
                "Interrupt "..S(1026).."",
            }
        },
        {
            npcID = 4279,
            encounterID = 0, 
            bossName= "Odo the Blindwatcher",
            notes = {
                "Odo is flanked by 2 Vile Bat which will pull with him once engaged",
                "Face boss and adds away from group. Kill adds first."
            }
        },
        {
            npcID = 4274,
            encounterID = 0, 
            bossName= "Fenrus the Devourer",
            notes = {
                "Tank and Spank"
            }
        },
        {
            npcID = 3927,
            encounterID = 0, 
            bossName= "Wolf Master Nandos",
            notes = {
                "Four Worgs circle Nandos in a barn-like room, make sure to kill all Worgs before engaging him.",
                "He will summon more Worgs during fight. Focus kill them."
            }
        },
        {
            npcID = 4275,
            encounterID = 0, 
            bossName= "Archmage Arugal",
            notes = {
                "DPS stand on platform and wait for Arugal to teleport to them."
            }
        }
    }
    
    -- The Stockade *
    ns.data[34] = {
        name = "The Stockade",
        instanceType = 1,
        version = 1,
        {
            npcID = 1696,
            encounterID = 0, 
            bossName= "Targorr the Dread",
            notes = {
                "If you can CC at least one Defias add before engaging boss.",
                "Allow your tank to pick up the remaining add face boss away from the CC'ed add. Kill add first.",
                "Make sure to kill the CC'ed add once the boss and the first add are dead"
            }
        },
        {
            npcID = 1666,
            encounterID = 0, 
            bossName= "Kam Deepfury",
            notes = {
                "If you can CC at least one Defias add before engaging boss.",
                "Allow your tank to pick up the remaining add face boss away from the CC'ed add. Kill add first.",
                "Make sure to kill the CC'ed add once the boss and the first add are dead",
                S(8242).." stuns target for 2 sec."
            }
        },
        {
            npcID = 1717,
            encounterID = 0, 
            bossName= "Hamhock",
            notes = {
                "If you can CC at least one Defias add before engaging boss.",
                "Allow your tank to pick up the remaining add face boss away from the CC'ed add. Kill add first.",
                "Make sure to kill the CC'ed add once the boss and the first add are dead",
                "Interrupt "..S(421)..".",
            }
        },
        {
            npcID = 1716,
            encounterID = 0, 
            bossName= "Bazil Thredd",
            notes = {
                S(7964).." stuns nearby enemies for 4 sec.",
                "Keep tank topped off before "..S(7964),
                "Tank and Spank"
            }
        },
        {
            npcID = 1663,
            encounterID = 0, 
            bossName= "Dextren Ward",
            notes = {
                S(5246).." fears nearby players for 8 sec.",
                "Make sure to clear all of the adds in the surrounding corridors, so no one in your group mistakenly pulls additional adds during the fear duration.",
                "CC any missed adds."
            }
        },
        {
            npcID = 1720,
            encounterID = 0, 
            bossName= "Bruegal Ironknuckle (Rare)",
            notes = {
                "Tank and Spank"
            }
        }
    }
    
    -- Deadmines *
    ns.data[36] = {
        name = "Deadmines",
        instanceType = 1,
        version = 1,
        {
            npcID = 644,
            encounterID = 0, 
            bossName= "Rhahk'zor",
            notes = {
                "Both adds can be pulled without pulling Rhahk'Zor himself. Kill adds first.",
                S(6304).." stuns player for 3 sec.",
                "Tank and Spank"
            }
        },
        {
            npcID = 3586,
            encounterID = 0, 
            bossName= "Miner Johnson (Rare)",
            notes = {
                "Kill nearby adds first.",
                S(12097).." reduces target's armor by 75% for 20 sec.",
                "Tank and Spank"
            }
        },
        {
            npcID = 642,
            encounterID = 0, 
            bossName= "Sneed's Shredder",
            notes = {
                "Kill nearby adds first.",
                S(7399).." causes a player to flee for 4 sec.",
                "Tank and Spank"
            }
        },
        {
            npcID = 1763,
            encounterID = 0, 
            bossName= "Gilnid",
            notes = {
                "Boss is flanked by a Goblin Engineer that will pull once Gilnid has been engaged. Make sure to CC the engineer as he may cast "..S(3605)..", which summons a mechanical robot that is immune to most abilities",
                "If the robot does get summoned, focus the engineer that summoned it as the robot will despawn once its summoner is dead.",
                "You can avoid this headache by simply CCing the add before the pull.",
                "Tank and Spank"
            }
        },
        {
            npcID = 646,
            encounterID = 0, 
            bossName= "Mr. Smite",
            notes = {
                "Kill both adds first. You can pull left add without pulling boss.",
                S(6432).." will stun everyone for nearly 10 seconds. Cast at 66% and 33% HP.",
                "Tank and Spank"
            }
        },
        {
            npcID = 647,
            encounterID = 0, 
            bossName= "Captain Greenskin",
            notes = {
                "CC Defias Squallshaper next to Greenskin before the pull.",
                "Once you've engaged the boss, begin by killing the Defias Companion first as it is non-elite and will die quickly.",
                "Kill the remaining Defias Pirates and then boss.",
                S(15496).." face boss away from group."
            }
        },
        {
            npcID = 639,
            encounterID = 0, 
            bossName= "Edwin Van Cleef",
            notes = {
                "Kills adds first. CC one and kill other.",
                "Once he hits 50% health, he will summon 2 more adds for you to deal with.",
                "Tank and Spank"
            }
        },
        {
            npcID = 645,
            encounterID = 0, 
            bossName= "Cookie (Bonus Boss)",
            notes = {
                "Pull Cookie off the ship towards the exit of the dungeon. Try to avoid other mobs.",
                "Interrupt " ..S(15496),
                "Tank and Spank"
            }
        }
    }
    
    -- Wailing Caverns *
    ns.data[43] = {
        name = "Wailing Caverns",
        instanceType = 1,
        version = 1,
        {
            npcID = 3653,
            encounterID = 587, 
            bossName= "Kresh",
            notes = {
                "Tank and Spank"
            }
        },
        {
            npcID = 3671,
            encounterID = 585, 
            bossName= "Lady Anacondra",
            notes = {
                "Interrupt "..S(700)..", puts a party member to sleep",
                "If you happen to pull another Druid of the Fang during the encounter, make sure to CC it right away."
            }
        },
        {
            npcID = 3669,
            encounterID = 586, 
            bossName= "Lord Cobrahn",
            notes = {
                "Kill Python adds first",
                "Interrupt "..S(700)..", puts a party member to sleep",
                "Can turn into a snake with "..S(7965).."",
            }
        },
        {
            npcID = 3670,
            encounterID = 588, 
            bossName= "Lord Pythas",
            notes = {
                "Kill adds first",
                "Interrupt "..S(700)..", puts a party member to sleep",
            }
        },
        
        {
            npcID = 3674,
            encounterID = 589, 
            bossName= "Skum",
            notes = {
                "Melee spread out around boss to avoid "..S(6254),
                "Tank and Spank",
            }
        },
        {
            npcID = 3673,
            encounterID = 590, 
            bossName= "Lord Serpentis",
            notes = {
                "Interrupt "..S(700)..", puts a party member to sleep"
            }
        },
        {
            npcID = 5775,
            encounterID = 591, 
            bossName= "Verdan the Everliving",
            notes = {
                ""..S(8142).." roots all targets within 10 yds for 10 sec and knocks them down for 2 seconds",
                "Ranged DPS stay at max range.",
                "Tank and Spank"
            }
        },
        {
            npcID = 3654,
            encounterID = 592, 
            bossName= "Mutanus the Devourer",
            notes = {
                "Kill the waves of adds, then boss will appear.",
                "The boss can put players to sleep, stun them and fear them.",
            }
        },
    }
    
    -- Razorfen Kraul *
    ns.data[47] = {
        name = "Razorfen Kraul",
        instanceType = 1,
        version = 1,
        {
            npcID = 6168,
            encounterID = 438, 
            bossName= "Roogug (Optional)",
            notes = {
                "Before engaging Roogug, make sure to clear the area and CC whatever mobs you can.",
            }
        },
        {
            npcID = 4428,
            encounterID = 1656, 
            bossName= "Aggem Thorncurse",
            notes = {
                "Tank and Spank",
            }
        },
        {
            npcID = 4420,
            encounterID = 1659, 
            bossName= "Overlord Ramtusk",
            notes = {
                "Make sure to CC both of the spearhides if you can. From there, focus down Ramtusk for an easy kill."
            }
        },
        {
            npcID = 4422,
            encounterID = 1659, 
            bossName= "Agathelos the Raging",
            notes = {
                "Tank and Spank"
            }
        },
        {
            npcID = 4842,
            encounterID = 1659, 
            bossName= "Earthcaller Halmgar",
            notes = {
                "Clear the platform, prioritize his totems, and burst the elemental down quickly before switching to Halmgar."
            }
        },
        {
            npcID = 4421,
            encounterID = 1659, 
            bossName= "Charlga Razorflank",
            notes = {
                "Pull boss from hut to platform below.",
                "Group spread out",
                "Interrupt "..S(8292),
                "Every so often, Charlga will go immune to all abilities and also has a healing spell, extending the duration of the fight."
            }
        },
    }
    
    -- Blackfathom Deeps *
    ns.data[48] = {
        name = "Blackfathom Deeps",
        instanceType = 1,
        version = 1,
        {
            npcID = 4887,
            encounterID = 1667, 
            bossName= "Ghamoo-Ra",
            notes = {
                "Tank and Spank"
            }
        },
        {
            npcID = 4831,
            encounterID = 1667, 
            bossName= "Lady Sarevess",
            notes = {
                "Clear out cave before pulling her.",
                "Kill her 2 bodyguards (CC one if you can), before focusing her down.",
                "Tank and Spank"
            }
        },
        {
            npcID = 6243,
            encounterID = 1667, 
            bossName= "Gelihast",
            notes = {
                "Clear out room before killing boss.",
                "Tank and Spank",
                "Once dead click on latar behind boss to receive buff."
            }
        },
        {
            npcID = 4832,
            encounterID = 1667, 
            bossName= "Twilight Lord Kelris",
            notes = {
                S(8399).." puts alls target within 30 yd to sleep for 10 sec.",
                "Help heal if healer is put to sleep.",
                "Tank and Spank",
                "After boss is dead click on ONE brazier at a time. Kill wave of mobs. Door behind will open when done."
            }
        },
        {
            npcID = 4830,
            encounterID = 1667, 
            bossName= "Old Serra'Kis (Optional)",
            notes = {
                "Tank and Spank"
            }
        },
        {
            npcID = 4829,
            encounterID = 1667, 
            bossName= "Aku'Mai",
            notes = {
                "Stay away from "..S(3815),
                S(3490).." causes a lot of damage. Healer be ready.",
            }
        }
    }
    
    -- Uldaman *
    ns.data[70] = {
        name = "Uldaman",
        instanceType = 1,
        version = 1,
        {
            npcID = 6910,
            encounterID = 547, 
            bossName= "Revelosh",
            notes = {
                "Tank and Spank",
                "Interrupt "..S(16006).."",
                "Interrupt "..S(15801).."",
            }
        },
        {
            npcID = 6906,
            encounterID = 548, 
            bossName= "The Lost Dwarves",
            notes = {
                "Try to keep them grouped up.",
                "Eric will charge to players with "..S(6268)..", ignore otherwise",
                "Olaf can stun you with "..S(8242).."",
            }
        },
        {
            npcID = 7228,
            encounterID = 549, 
            bossName= "Ironaya",
            notes = {
                "Face boss away for frontal cone - "..S(8374),
                S(11876).." will stun you",
                S(18670).." will knock you away"
            }
        },
        {
            npcID = 7206,
            encounterID = 551, 
            bossName= "Ancient Stone Keeper",
            notes = {
                "Clear the room of all adds before engaging.",
                "Tank and Spank"
            }
        },
        {
            npcID = 7291,
            encounterID = 552, 
            bossName= "Galgann Firehammer",
            notes = {
                "Tank and Spank with lots of magic damage.",
                "The adds are interruptible.",
            }
        },
        {
            npcID = 4854,
            encounterID = 553, 
            bossName= "Grimlok",
            notes = {
                "Kill boss first to avoid him casting "..S(7289) ..". Kill remaining adds.",
                "Interrupt "..S(8292).."",
                "Interrupt "..S(12167).."",
            }
        },
        {
            npcID = 2748,
            encounterID = 554, 
            bossName= "Archaedas",
            notes = {
                "Boss summons a lot of adds, focus kill.",
                "When the boss reaches 66% HP he will "..S(10252),
                "When the boss reaches 33% HP he will "..S(10258).."s, they can stun you",
                ""..S(6524).." can stun you.",
                "At 20% boss summons 4 adds that will die with him. Focus kill boss."
            }
        },
        {
            npcID = 7023,
            encounterID = 1887, 
            bossName= "Obsidian Sentinel",
            notes = {
                ""..S(10072).." will make you weaker.",
                "Try to stack the boss and adds together so the party can cleave them.",
            }
        },
    }
    
    -- Gnomeregan *
    ns.data[90] = {
        name = "Gnomeregan",
        instanceType = 1,
        version = 1,
        {
            npcID = 7361,
            encounterID = 0, 
            bossName= "Grubbis",
            notes = {
                "Start fight by talking to the Gnome at back of room.",
                "Defeat waves of adds before the boss appears.",
                "Tank and Spank",
            }
        },
        {
            npcID = 7079,
            encounterID = 0, 
            bossName= "Viscous Fallout",
            notes = {
                "Careful of mobs nearby before pulling boss. Group gets poison ticks on them.",
                "Tank and Spank",
            }
        },
        {
            npcID = 6235,
            encounterID = 0, 
            bossName= "Electrocutioner 6000",
            notes = {
                "Interrupt "..S(11082)..", if not dodge.",
                "Interrupt "..S(11085)..".",
            }
        },
        {
            npcID = 6229,
            encounterID = 0, 
            bossName= "Crowd Pummeler 9-60",
            notes = {
                "Avoid the frontal "..S(8374)..".",
                "Boss can interrupt any spellcasting with "..S(10887)..".",
            }
        },
        {
            npcID = 7800,
            encounterID = 382, 
            bossName= "Mekgineer Thermaplugg",
            notes = {
                "Interrupt "..S(11130)..", this knocks back.",
                "Keep moving to avoid Walking Bombs.",
            }
        },
    }
    
    -- -- The Temple of Atal'hakkar
    -- ns.data[109] = {
    --     name = "The Temple of Atal'hakkar",
    --     instanceType = 1,
    --     {
    --         npcID = 8443,
    --         encounterID = 492, 
    --         bossName= "Avatar of Hakkar",
    --         notes = {
    --             ""..S(25852).." will stun you",
    --             "Boss will give a player the "..S(188541).." debuff making them attack you",
    --         }
    --     },
    --     {
    --         npcID = 5710,
    --         encounterID = 488, 
    --         bossName= "Jammal'an the Prophet",
    --         notes = {
    --             "Interrupt "..S(232670).." from Ogom",
    --             "Avoid standing in fire patches.",
    --             "Move away from the "..S(8376)..", it will root you",
    --             ""..S(12480).." will hex a player, they will attack the party.",
    --         }
    --     },
    --     {
    --         npcID = 5709,
    --         encounterID = 493, 
    --         bossName= "Shade of Eranikus",
    --         notes = {
    --             "Face the dragons away from the party",
    --             "Dodge the frontal "..S(163338).." damaging all in front.",
    --             S(11019).." will knock you back."
    --         }
    --     },
    -- }
    
    -- Razorfen Downs *
    ns.data[129] = {
        name = "Razorfen Downs",
        version = 1,
        instanceType = 1,
        {
            npcID = 7355,
            encounterID = 1663, 
            bossName= "Tuten'kash",
            notes = {
                "Ring the gong to start the event. Kill waves of mobs.",
                "Tank and Spank"
            }
        },
        {
            npcID = 7357,
            encounterID = 1663, 
            bossName= "Mordresh Fire Eye",
            notes = {
                "Clear all of the skeletons dancing beside the bone pile.",
                "The last pack of skeletons will pull the boss.",
                "Tank and Spank"
            }
        },
        {
            npcID = 8567,
            encounterID = 1663, 
            bossName= "Glutton",
            notes = {
                "Stay out of "..S(12627),
                "Tank will take heavy damage during "..S(12795)
            }
        },
        {
            npcID = 7354,
            encounterID = 1663, 
            bossName= "Ragglesnout (Rare)",
            notes = {
                "Be careful if tank or healer get mind controlled - "..S(7645),
                "Interrupt "..S(12039)..".",
                "Interrupt "..S(11659).."."
            }
        },
        {
            npcID = 7358,
            encounterID = 1663, 
            bossName= "Amnennar the Coldbringer",
            notes = {
                "Face boss away from group for "..S(13009),
                "Group stack on boss for "..S(15531),
                "KIll add from "..S(12642)..".",
                "Interrupt "..S(15530).."."
            }
        },
        {
            npcID = 7356,
            encounterID = 1663, 
            bossName= "Plaguemaw the Rotting (Optional Event)",
            notes = {
                "Final boss of the Belnistrasz escort event.",
                "Kill adds",
                "Tank and Spank"
            }
        },

    }
    
    -- Zul'Farrak *
    ns.data[209] = {
        name = "Zul'Farrak",
        instanceType = 1,
        version = 1,
        {
            npcID = 7273,
            encounterID = 0, 
            bossName= "Gahz'rilla",
            notes = {
                "Clear adds from room.",
                "Tank boss with tank's back against wall.",
                ""..S(11131).." will slow you down",
                ""..S(11836).." is a stun ability.",
                "Move away from "..S(11902)..", this is a knockback.",
            }
        },
        {
            npcID = 8127,
            encounterID = 0, 
            bossName= "Antu'sul",
            notes = {
                "Boss uses variety of shaman spells, interrupt the heals.",
                "Summons "..S(11894).." to fight, kill them quickly.",
            }
        },
        {
            npcID = 7272,
            encounterID = 0, 
            bossName= "Theka the Martyr",
            notes = {
                "The scarabs will attack when you pull the boss. Focus on boss.",
                "Interrupt "..S(8600).." ",
                "At 30% the boss transforms making him immune to physical attacks and shadow magic.",
            }
        },
        {
            npcID = 7271,
            encounterID = 0, 
            bossName= "Witch Doctor Zum'rah",
            notes = {
                "Raises zombies from nearby graves.",
                "Kill the "..S(11086).." totem before it summons adds.",
                "Interrupt "..S(12491).."",
                "Interrupt "..S(12739).."",
                "Interrupt "..S(15245).."",
            }
        },
        {
            npcID = 10082,
            encounterID = 0, 
            bossName= "Zerillis",
            notes = {
                "Pull into melee range (you might need to LOS)",
                "Tank and Spank"
            }
        },
        {
            npcID = 7796,
            encounterID = 0, 
            bossName= "Nekrum & Sezz'ziz",
            notes = {
                "The prisoners help you fight the trolls & bosses.",
                "Kill Nekrum first.",
                "Nekrum: Interrupt "..S(8600)..".",
                "Sezz'ziz: Interrupt "..S(12739)..", "..S(8362).." & "..S(12039)..".",
                ""..S(13704).." will fear you.",
            }
        },
        {
            npcID = 7267,
            encounterID = 0, 
            bossName= "Chief Ukorz Sandscalp",
            notes = {
                "Ruuzlu will aid the boss in this fight. Kill first.",
                "Face the boss away from the party to avoid "..S(15496).." and "..S(11837).."",
                "Boss will "..S(8269).." with "..S(7366),
            }
        },
        {
            npcID = 7795,
            encounterID = 0, 
            bossName= "Hydromancer Velratha",
            notes = {
                "Pull boss ALONE, otherwise a wipe is likely.",
                "Tank and Spank"
            }
        },
        {
            npcID = 7604,
            encounterID = 0, 
            bossName= "Sergeant Bly",
            notes = {
                "Boss is accompanied by 2 adds. Prioritize Oro and Murta before boss."
            }
        },
    }
    
    -- Lower Blackrock Spire *
    ns.data[229] = {
        name = "Lower Blackrock Spire",
        instanceType = 1,
        version = 1,
        {
            npcID = 9196,
            encounterID = 267, 
            bossName= "Highlord Omokk",
            notes = {
                "Kill adds. You can CC both and kill boss. Or CC 1 and kill other before boss.",
                ""..S(18945).." will knock you back. Tank against wall.",
                "At 50% HP the boss will "..S(8269).."",
            }
        },
        {
            npcID = 9236,
            encounterID = 268, 
            bossName= "Shadow Hunter Vosh'gajin",
            notes = {
                "Kill adds first.",
                "Interrupt or cleanse "..S(16098)..", if not, use a cooldown to help the healer.",
                "The boss will turn someone in a frog with "..S(16097).."",
            }
        },
        {
            npcID = 9237,
            encounterID = 269, 
            bossName= "War Master Voone",
            notes = {
                "Give tank time to aggro.",
                "Face the boss away from the party to avoid "..S(15284).."",
            }
        },
        {
            npcID = 10596,
            encounterID = 270, 
            bossName= "Mother Smolderweb",
            notes = {
                "Face boss away from group",
                ""..S(16104).." is a AOE front cone stun.",
                "Stay spread out to avoid poisoning others with "..S(16468).."",
                "When the boss is dead, she will "..S(16103).."",
            }
        },
        {
            npcID = 10584,
            encounterID = 271, 
            bossName= "Urok Doomhowl",
            notes = {
                "Kill waves of ogres until boss spawns.",
                "Combine your Omokk's Head with Roughshod Pike and place it on the Tribute Pile to summon the boss.",
                "Every 30 seconds, you can click on the pike while targeting an ogre to insta-kill single ogre from a wave.",
                ""..S(16508).." will fear you.",
            }
        },
        {
            npcID = 9736,
            encounterID = 272, 
            bossName= "Quartermaster Zigris",
            notes = {
                ""..S(15609).." will immobilize you",
                ""..S(16497).." will stun you",
            }
        },
        {
            npcID = 10220,
            encounterID = 274, 
            bossName= "Halycon",
            notes = {
                "Tanks, pick up Halycon while the group kills the pup adds.",
                "Tank and Spank",
                "When you kill Halycon, Gizrul, the next boss, will come in to fight you.",
            }
        },
        {
            npcID = 10268,
            encounterID = 273, 
            bossName= "Gizrul the Slavener",
            notes = {
                "Tank and Spank",
                "Boss will "..S(8269).." after 30 seconds.",
            }
        },
        {
            npcID = 9568,
            encounterID = 275, 
            bossName= "Overlord Wyrmthalak",
            notes = {
                "Face the boss away from the party with back against wall",
                "He will summon adds during the fight when he reaches 50% health."
            }
        },
    }
    
    -- Blackrock Depths *
    ns.data[230] = {
        name = "Blackrock Depths",
        instanceType = 1,
        version = 1,
        {
            npcID = 9018,
            encounterID = 227, 
            bossName= "High Interrogator Gerstahn",
            notes = {
                "Dispel "..S(14032).." and Interrupt "..S(14033)..".",
                ""..S(13704).." will fear you. Avoid if possible.",
                "She drops Prison Cell Key, which is used to complete quests in the Detention Block"
            }
        },
        {
            npcID = 9502,
            encounterID = 239, 
            bossName= "Phalanx",
            notes = {
                "Turns unfriendly when you kill Plugger Spazzring. ",
                ""..S(14099).." will knock you back.",
                ""..S(15588).." will slow you down.",
            }
        },
        {
            npcID = 9025,
            encounterID = 228, 
            bossName= "Lord Roccor",
            notes = {
                "Tank and Spank",
            }
        },
        {
            npcID = 9319,
            encounterID = 229, 
            bossName= "Houndmaster Grebmar",
            notes = {
                "Kill pack of hounds when boss is furthest away.",
                "Tank and Spank"
            }
        },
        {
            npcID = 10096,
            encounterID = 230, 
            bossName= "Ring of Law",
            notes = {
                "You will face waves of trash and one boss. This boss is random and can be any of 6 different bosses.",
                "Make sure to face them away from the party as many have a cleave ability.",
            }
        },
        {
            npcID = 9024,
            encounterID = 231, 
            bossName= "Pyromancer Loregrain (Optional)",
            notes = {
                "Destroy totem",
                "Tank and Spank"
            }
        },
        {
            npcID = 9016,
            encounterID = 235, 
            bossName= "Bael'Gar (Optional)",
            notes = {
                "Kill adds",
                "Face boss away from group."
            }
        },
        {
            npcID = 9017,
            encounterID = 232, 
            bossName= "Lord Incendius",
            notes = {
                "Do not get knocked off of platform.",
                "Move out of fire zones from "..S(13900).." and "..S(13899)..".",
                ""..S(14099).." will knock you back.",
                ""..S(26977).." will make you weaker to fire damage, so save cooldowns for this.",
            }
        },
        {
            npcID = 9041,
            encounterID = 233, 
            bossName= "Warder Stilgiss",
            notes = {
                "Kill the dog first.", 
                "Uses frost spells.", 
                "Interrupt Frostbolt."
            }
        },
        {
            npcID = 9056,
            encounterID = 234, 
            bossName= "Fineous Darkvire",
            notes = {
                ""..S(8258).." makes the boss less prone to physical damage.",
                "Interrupt "..S(15493)..".",
                "Do NOT hit an enemy buffed with SEAL, or you will heal them back up.",
            }
        },
       
        {
            npcID = 9033,
            encounterID = 236, 
            bossName= "General Angerforge",
            notes = {
                ""..S(15572).." will cause you to take more damage with every stack, stacks up to 5.",
                "At 40% HP the boss will summon adds, kill them quick",
                "The boss will "..S(15061).."",
            }
        },
        {
            npcID = 8983,
            encounterID = 237, 
            bossName= "Golem Lord Argelmach",
            notes = {
                "The boss deals a lot of magic damage with "..S(15305)..", "..S(15507).." and "..S(15605)..".",
            }
        },
        {
            npcID = 9537,
            encounterID = 238, 
            bossName= "Hurley Blackbreath",
            notes = {
                "Smash the 3 Thunderbrew Lager Kegs in the empty left room to summon the boss .",
                "Face the boss away from the party and avoid the frontal cone "..S(9573)..".",
                "The boss will enter a "..S(14872).."",
            }
        },
        {
            npcID = 9499,
            encounterID = 241, 
            bossName= "Plugger Spazzring",
            notes = {
                "Steal food and drinks from the table 3 times to fight him.",
                "Tank and Spank",
                "Killing him unlocks the Bar Door and everyone will attack you.",
            }
        },
        {
            npcID = 9156,
            encounterID = 242, 
            bossName= "Ambassador Flamelash",
            notes = {
                "Kill adds before they reach him.",
                "Tank and Spank",
            }
        },
        {
            npcID = 9035,
            encounterID = 243, 
            bossName= "The Seven",
            notes = {
                "Speak with Doom'rel to start the fight",
                "Kill all 6 ghosts and the boss will join the fight",
                ""..S(12493).." will make you weaker.",
                "The boss will "..S(15092).." ",
                "Interrupt "..S(8994).." & "..S(15245).."",
            }
        },
        {
            npcID = 9938,
            encounterID = 244, 
            bossName= "Magmus",
            notes = {
                "Dodge the fire statues.",
                ""..S(15593).." will knock you back and stun you ",
            }
        },
        {
            npcID = 9019,
            encounterID = 245, 
            bossName= "Emperor Dagran Thaurissan",
            notes = {
                ""..S(17492).." will stun you",
                ""..S(15636).." will make the boss immune to magic damage and will hurt you every time you hit him for 10s, pop a cooldown before you attack",
                "Interrupt all spells of the High Priestess of Thaurissan",
            }
        },
    }
    
    -- Onyxia's Lair
    ns.data[249] = {
        name = "Onyxia's Lair",
        version = 1,
        instanceType = 2,
        {
            npcID = 41270,
            encounterID = 1084, 
            bossName= "Onyxia",
            notes = {
            }
        },
    }
    
    -- Stratholme
    ns.data[329] = {
        name = "Stratholme",
        instanceType = 1,
        version = 1,
        {
            npcID = 10558,
            encounterID = 473, 
            bossName= "Hearthsinger Forresten",
            notes = {
                "Interrupt "..S(16798)..", or someone will fall asleep.",
                "Spread out for "..S(14443).."",
            }
        },
        {
            npcID = 10808,
            encounterID = 474, 
            bossName= "Timmy the Cruel",
            notes = {
                ""..S(17470).." hits current target and heals the boss.",
                "At 50% HP the boss "..S(8599).."s.",
            }
        },
        {
            npcID = 10997,
            encounterID = 475, 
            bossName= "Willey Hopebreaker",
            notes = {
                "The boss will "..S(17279)..", focus kill them.",
                "DPS can pick up Cannonballs to fire the Cannons at the adds.",
                ""..S(110762).." will knock you back",
            }
        },
        {
            npcID = 10811,
            encounterID = 477, 
            bossName= "Instructor Galford",
            notes = {
                ""..S(17366).." inflicts fire damage to all nearby players. Inflicts a fire damage dot on current target.",
                ""..S(17293).."  inflicts fire damage to current target & stuns.",
            }
        },
        {
            npcID = 10813,
            encounterID = 478, 
            bossName= "Balnazzar",
            notes = {
                "The boss will take control of a player with "..S(17405).." .",
                ""..S(13704).." will fear you.",
                ""..S(66290).." will put you asleep.",
            }
        },
        {
            npcID = 10516,
            encounterID = 472, 
            bossName= "The Unforgiven",
            notes = {
                "Pick up the adds and TANK'N'SPANK",
                "Interrupt "..S(122832)..".",
            }
        },
        {
            npcID = 10436,
            encounterID = 479, 
            bossName= "Baroness Anastari",
            notes = {
                ""..S(16867).." will make you miss hits more often.",
                ""..S(17244).." will control a player, focus kill them.",
            }
        },
        {
            npcID = 10437,
            encounterID = 480, 
            bossName= "Nerub'enkan",
            notes = {
                ""..S(4962).." can root a player and make them slower.",
                "The boss will summon "..S(31602).." and when they die "..S(17235).."",
            }
        },
        {
            npcID = 10438,
            encounterID = 481, 
            bossName= "Maleki the Pallid",
            notes = {
                ""..S(54791).." will slow you down.",
                ""..S(16869).." will freeze and stun for 6 seconds.",
                "During "..S(31256).." you will be slowed.",
            }
        },
        {
            npcID = 10435,
            encounterID = 482, 
            bossName= "Magistrate Barthilas",
            notes = {
                "The boss will stack "..S(16791)..".",
                ""..S(14099).." will knock you back.",
            }
        },
        {
            npcID = 10439,
            encounterID = 483, 
            bossName= "Ramstein the Gorger",
            notes = {
                "All players take damage for "..S(17687).."",
                ""..S(17307).." will stun and knock you back.",
            }
        },
        {
            npcID = 45412,
            encounterID = 484, 
            bossName= "Lord Aurius Rivendare",
            notes = {
                "Face the boss away from the party to avoid "..S(15496).."",
                "Focus kill the skeletons as they will heal the boss.",
            }
        },
        {
            npcID = 11032,
            encounterID = 476, 
            bossName= "Commander Malor",
            notes = {
                ""..S(12734).." will stun you.",
                "Interrupt "..S(15245)..".",
                ""..S(16172).." reduces a playters stamina.",
            }
        },
    }
    
    -- Maraudon *
    ns.data[349] = {
        name = "Maraudon",
        instanceType = 1,
        version = 1,
        {
            npcID = 12236,
            encounterID = 0, 
            bossName= "Lord Vyletongue",
            notes = {
                "Group stack on boss.",
                "Focus kill the Shadowstalker guards adds after boss is dead."
            }
        },
        {
            npcID = 13282,
            encounterID = 0, 
            bossName= "Noxxion",
            notes = {
                ""..S(18072).." knocks you back.",
                "Boss will split into 5 adds, focus kill them.",
            }
        },
        {
            npcID = 12258,
            encounterID = 0, 
            bossName= "Razorlash",
            notes = {
                "Beware of AOE cleave - "..S(15284),
                "Ranged DPS at max distance",
                "Tank and Spank",
            }
        },
        {
            npcID = 12225,
            encounterID = 0, 
            bossName= "Celebras the Cursed",
            notes = {
                "Pick up the "..S(6913).." adds but focus kill the boss.",
                "Interrupt "..S(9739)
            }
        },
        {
            npcID = 12203,
            encounterID = 0, 
            bossName= "Landslide",
            notes = {
                "Tank with back against a wall to avoid "..S(10101),
                "Ranged DPS at max distance",
                "Summons add once boss dies. Avoid knockback"
            }
        },
        {
            npcID = 12201,
            encounterID = 0, 
            bossName= "Princess Theradras",
            notes = {
                ""..S(21869).." will fear you.",
                "Move out of "..S(21868).." or you'll be knocked back.",
                "If non-aggressive turtles are hit with a spell they will attack."
            }
        },
        {
            npcID = 13596,
            encounterID = 0, 
            bossName= "Rotgrip",
            notes = {
                "Tank and Spank",
            }
        },
        {
            npcID = 13601,
            encounterID = 0, 
            bossName= "Tinkerer Gizlock",
            notes = {
                "Tanks, face him away from the group to prevent group damage from his "..S(13183)
            }
        },
    }

    -- Sunken Temple
    ns.data[109] = {
        name = "Sunken Temple",
        instanceType = 1,
        version = 1,
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Dreamscythe",
            notes = {               
            }
        },
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Weaver",
            notes = {                
            }
        },
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Jammal'an the Prophet",
            notes = {                
            }
        },
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Morphaz",
            notes = {                
            }
        },
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Hazzas",
            notes = {                
            }
        },
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Avatar of Hakkar",
            notes = {                
            }
        },
        {
            npcID = 0,
            encounterID = 0, 
            bossName= "Shade of Eranikus",
            notes = {                
            }
        },
    }
    
    -- Ragefire Chasm *
    ns.data[389] = {
        name = "Ragefire Chasm",
        instanceType = 1,
        version = 1,
        {
            npcID = 11517,
            encounterID = 0, 
            bossName= "Oggleflint",
            notes = {
                "Oggleflint is flanked by 2 troggs. Try to to CC at least one before engaging him.",
                "Face boss and adds away from group.",
                "Kill adds first then boss. Kill CC'd add last if possible."
            }
        },
        {
            npcID = 11520,
            encounterID = 0, 
            bossName= "Taragaman the Hungerer",
            notes = {
                "Pull boss away from the edges of the platform so that "..S(18072).." does not knock tank off the platform.",
                "Ranged DPS stay at max range to avoid "..S(11970),
            }
        },
        {
            npcID = 11518,
            encounterID = 1445, 
            bossName= "Jergosh the Invoker",
            notes = {
                "Jergosh is flanked by 2 mobs. Try to to CC at least one before engaging him.",
                "Kill adds first then boss. Kill CC'd add last if possible."
            }
        },
        {
            npcID = 11519,
            encounterID = 1446, 
            bossName= "Bazzalan",
            notes = {
                "Jergosh is flanked by 2 mobs. Left one can be pulled without engaging boss, do this first.",
                "CC other mob and focus on boss.",
                "Tank and Spank"
            }
        },
    }
    
    -- Molten Core
    ns.data[409] = {
        name = "Molten Core",
        instanceType = 2,
        version = 1,
        {
            npcID = 11988,
            encounterID = 670, 
            bossName= "Golemagg the Incinerator",
            notes = {
            }
        },
        {
            npcID = 12018,
            encounterID = 671, 
            bossName= "Majordomo Executus",
            notes = {
            }
        },
        {
            npcID = 11502,
            encounterID = 672, 
            bossName= "Ragnaros",
            notes = {
            }
        },
        {
            npcID = 71865,
            encounterID = 666, 
            bossName= "Garr",
            notes = {
            }
        },
        {
            npcID = 12264,
            encounterID = 667, 
            bossName= "Shazzrah",
            notes = {
            }
        },
        {
            npcID = 12056,
            encounterID = 668, 
            bossName= "Baron Geddon",
            notes = {
            }
        },
        {
            npcID = 12098,
            encounterID = 669, 
            bossName= "Sulfuron Harbinger",
            notes = {
            }
        },
        {
            npcID = 12118,
            encounterID = 663, 
            bossName= "Lucifron",
            notes = {
            }
        },
        {
            npcID = 11982,
            encounterID = 664, 
            bossName= "Magmadar",
            notes = {
            }
        },
        {
            npcID = 12259,
            encounterID = 665, 
            bossName= "Gehennas",
            notes = {
            }
        },
    }
    
    -- Dire Maul *
    ns.data[429] = {
        name = "Dire Maul",
        instanceType = 1,
        version = 1,
        {
            npcID = 11490,
            encounterID = 343, 
            bossName= "Zevrim Thornhoof",
            notes = {
                "Tank and Spank",
                ""..S(22651).." teleports a player to the altar taking them out of the fight & leeching their health.",
            }
        },
        {
            npcID = 13280,
            encounterID = 344, 
            bossName= "Hydrospawn",
            notes = {
                ""..S(22419).." & "..S(22421).." will knock you back ",
                ""..S(22714).." will spawn 2 adds, pick them up for easy cleave",
            }
        },
        {
            npcID = 14327,
            encounterID = 345, 
            bossName= "Lethtendris",
            notes = {
                "Focus kill the imp so she doesn't buff it.",
                "Interrupt as many spells as you can.",
            }
        },
        {
            npcID = 11492,
            encounterID = 346, 
            bossName= "Alzzin the Wildshaper",
            notes = {
                "Kill all Lashers before engaging the boss.",
                "When the boss is in "..S(22688).." he will "..S(22691).." & knock you back with "..S(10101)..".",
                "During "..S(22660).." he will slow you.",
                "Below 50% HP the boss summons Imps.",
            }
        },
        {
            npcID = 11489,
            encounterID = 350, 
            bossName= "Tendris Warpwood",
            notes = {
                "Summons all Ironbark Protector tree minions when attacked (unless you killed them beforehand).",
                ""..S(22994).." will root you.",
                ""..S(22924).." will knock you back.  ",
                "Move away to avoid "..S(5568)..".",
            }
        },
        {
            npcID = 11488,
            encounterID = 347, 
            bossName= "Illyanna Ravenoak",
            notes = {
                "Her pet can be CC'ed during the fight, otherwise try to cleave them, by tanking the pet on Illyanna.",
                ""..S(22915).." will stun you.",
                "Avoid "..S(78578).."",
                "Stay spread out for "..S(20735).."",
            }
        },
        {
            npcID = 11487,
            encounterID = 348, 
            bossName= "Magister Kalendris",
            notes = {
                "The boss will control a player with "..S(7645).."",
                "At 50% HP the boss uses "..S(22917)..". Rotate your cooldowns, if any, during this period.",
            }
        },
        {
            npcID = 11496,
            encounterID = 349, 
            bossName= "Immol'thar",
            notes = {
                "Move away to avoid "..S(5568)..".",
                ""..S(16128).." increases target's damage taken.",
                "Boss will "..S(8269).."",
                "Focus kill any "..S(22899).." adds.",
            }
        },
        {
            npcID = 11486,
            encounterID = 361, 
            bossName= "Prince Tortheldrin",
            notes = {
                ""..S(22920).." will knock you back."
            }
        },
        {
            npcID = 14326,
            encounterID = 362, 
            bossName= "Guard Mol'dar",
            notes = {
                "Tank and Spank",
                "Be ready to pick up any adds that join the fight.",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14322,
            encounterID = 363, 
            bossName= "Stomper Kreeg",
            notes = {
                "Will Knock back with "..S(16740)..".",
                "Avoid the frontal cone - "..S(22833)..".",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14321,
            encounterID = 364, 
            bossName= "Guard Fengus",
            notes = {
                "Tank and Spank",
                "Clear an area to fight in and focus kill any adds that join the fight.",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14323,
            encounterID = 365, 
            bossName= "Guard Slip'kik",
            notes = {
                "Tank and Spank",
                "Focus kill any adds that join the fight",
                "Can freeze target with "..S(22856).."",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14325,
            encounterID = 366, 
            bossName= "Captain Kromcrush",
            notes = {
                "Stop attacking the boss during "..S(22857).."",
                "Make sure to save your cooldowns for "..S(22859).." as you will be difficult to heal.",
                ""..S(29544).." will fear target.",
                "At 50% HP health the boss will "..S(22860).." to help him fight.",
            }
        },
        {
            npcID = 14324,
            encounterID = 367, 
            bossName= "Cho'Rush the Observer",
            notes = {
                "He will randomly choose a class, he will either be a priest, shaman, or mage.",
                "If he is a priest: "..S(22884).." will fear target, interrupt "..S(38209).."",
                "If he's a shaman: drag him away from the "..S(8376).." and interrupt "..S(15982).."",
                "If he's a mage: "..S(15531).." can freeze target.",
            }
        },
        {
            npcID = 11501,
            encounterID = 368, 
            bossName= "King Gordok",
            notes = {
                "Make sure to save your cooldowns for "..S(16856).." and high stacks of "..S(15572).." as tank will be difficult to heal",
                ""..S(16727).." will stun target.",
                ""..S(22886).." will knock players back",
            }
        },
    }
    
    -- Blackwing Lair
    ns.data[469] = {
        name = "Blackwing Lair",
        version = 1,
        instanceType = 2,
        {
            npcID = 12435,
            encounterID = 610, 
            bossName= "Razorgore the Untamed",
            notes = {
            }
        },
        {
            npcID = 13020,
            encounterID = 611, 
            bossName= "Vaelastrasz the Corrupt",
            notes = {
            }
        },
        {
            npcID = 12017,
            encounterID = 612, 
            bossName= "Broodlord Lashlayer",
            notes = {
            }
        },
        {
            npcID = 11983,
            encounterID = 613, 
            bossName= "Firemaw",
            notes = {
            }
        },
        {
            npcID = 14601,
            encounterID = 614, 
            bossName= "Ebonroc",
            notes = {
            }
        },
        {
            npcID = 11981,
            encounterID = 615, 
            bossName= "Flamegor",
            notes = {
            }
        },
        {
            npcID = 14020,
            encounterID = 616, 
            bossName= "Chromaggus",
            notes = {
            }
        },
        {
            npcID = 41376,
            encounterID = 617, 
            bossName= "Nefarian",
            notes = {
            }
        },
    }
    
    -- Ruins of Ahn'Qiraj
    ns.data[509] = {
        name = "Ruins of Ahn'Qiraj",
        version = 1,
        instanceType = 2,
        {
            npcID = 15348,
            encounterID = 718, 
            bossName= "Kurinnaxx",
            notes = {
            }
        },
        {
            npcID = 15341,
            encounterID = 719, 
            bossName= "General Rajaxx",
            notes = {
            }
        },
        {
            npcID = 15340,
            encounterID = 720, 
            bossName= "Moam",
            notes = {
            }
        },
        {
            npcID = 15370,
            encounterID = 721, 
            bossName= "Buru the Gorger",
            notes = {
            }
        },
        {
            npcID = 15369,
            encounterID = 722, 
            bossName= "Ayamiss the Hunter",
            notes = {
            }
        },
        {
            npcID = 15339,
            encounterID = 723, 
            bossName= "Ossirian the Unscarred",
            notes = {
            }
        },
    }
    
    -- Temple of Ahn'Qiraj
    ns.data[531] = {
        name = "Temple of Ahn'Qiraj",
        version = 1,
        instanceType = 2,
        {
            npcID = 15263,
            encounterID = 709, 
            bossName= "The Prophet Skeram",
            notes = {
            }
        },
        {
            npcID = 15516,
            encounterID = 711, 
            bossName= "Battleguard Sartura",
            notes = {
            }
        },
        {
            npcID = 15510,
            encounterID = 712, 
            bossName= "Fankriss the Unyielding",
            notes = {
            }
        },
        {
            npcID = 15509,
            encounterID = 714, 
            bossName= "Princess Huhuran",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 710, 
            bossName= "Silithid Royalty",
            notes = {
            }
        },
        {
            npcID = 15299,
            encounterID = 713, 
            bossName= "Viscidus",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 715, 
            bossName= "The Twin Emperors",
            notes = {
            }
        },
        {
            npcID = 15517,
            encounterID = 716, 
            bossName= "Ouro",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 717, 
            bossName= "C'Thun",
            notes = {
            }
        },
    }
    
    -- Naxxramas
    ns.data[533] = {
        name = "Naxxramas",
        version = 1,
        instanceType = 2,
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
    
    -- Zul'Gurub
    ns.data[1977] = {
        name = "Zul'Gurub",
        version = 1,
        instanceType = 2,
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
            }
        },
    }
    
    -- Scarlet Monastery *
    ns.data[1004] = {
        name = "Scarlet Monastery",
        instanceType = 1,
        version = 1,
        {
            npcID = 3983,
            encounterID = 1424, 
            bossName= "Interrogator Vishas (Graveyard)",
            notes = {
                "Tank and Spank"
            }
        },
        {
            npcID = 3974,
            encounterID = 1424, 
            bossName= "Bloodmage Thalnos (Graveyard)",
            notes = {
                "If you are a ranged player, stand back from Thalnos to avoid taking damage from his "..S(11970).." and avoid overcrowding the melee space for "..S(8814)..".",
            }
        },
        {
            npcID = 4543,
            encounterID = 1424, 
            bossName= "Houndmaster Loksey (Library)",
            notes = {
                "You should CC or kill the adds before engaging Loksey and then kill him, as Loksey will buff them with "..S(6742)..".",
            }
        },
        {
            npcID = 6487,
            encounterID = 1424, 
            bossName= "Arcanist Doan (Library)",
            notes = {
                "Tank in the middle with the ranged spread to the edges of the room",
                "When he casts "..S(9435)..", everyone must run as close to the edges as possible.",
                "Healer be ready for "..S(1449)
            }
        },
        {
            npcID = 3975,
            encounterID = 1424, 
            bossName= "Herod (Armory)",
            notes = {
                "Tank in the middle of the room. Range spread out, up the stairs",
                "When he casts "..S(1680).." run away 8 yds.",
                "When Herod dies group up and kill adds that run into room."
            }
        },
        {
            npcID = 3977,
            encounterID = 1424, 
            bossName= "High Inquisitor Whitemane (Cathedral)",
            notes = {
                "She will cast unavoidable "..S(700).." on party and resurrect Scarlet Commander Mograine.",
                "Tank pick up Mograine and group continue to burn down boss."
            }
        },
        {
            npcID = 4542,
            encounterID = 1424, 
            bossName= "High Inquisitor Fairbanks (Cathedral)",
            notes = {
                S(16098).." can be dispelled by Mage or Druid",
                "Interrupt "..S(6064),
                "Will cast"..S(6213).." and "..S(700).." on party members.",
                "Will cast "..S(17).." on himself"
            }
        },
    }
    
    -- Upper Blackrock Spire
    ns.data[1358] = {
        name = "Upper Blackrock Spire",
        version = 1,
        instanceType = 1,
        {
            npcID = 76413,
            encounterID = 1761, 
            bossName= "Orebender Gor'ashan",
            notes = {
            }
        },
        {
            npcID = 199790,
            encounterID = 1758, 
            bossName= "Kyrak",
            notes = {
            }
        },
        {
            npcID = 79912,
            encounterID = 1759, 
            bossName= "Commander Tharbek",
            notes = {
            }
        },
        {
            npcID = 76585,
            encounterID = 1760, 
            bossName= "Ragewing the Untamed",
            notes = {
            }
        },
        {
            npcID = 77120,
            encounterID = 1762, 
            bossName= "Warlord Zaela",
            notes = {
            }
        },
    }
    
end