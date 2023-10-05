local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
     
    -- Shadowfang Keep
    addonTable.data[33] = {
        name = "Shadowfang Keep",
        {
            npcID = 46962,
            encounterID = 1069, 
            bossName= "Baron Ashbury",
            notes = {
                "(Healer) Be ready for "..S(93423)..", players health is reduced dramatically.",
                "After "..S(93423)..", "..S(93468).." will heal players to 50% of max health.",
                "Interrupt "..S(93581).."",
            }
        },
        {
            npcID = 3887,
            encounterID = 1070, 
            bossName= "Baron Silverlaine",
            notes = {
                "Curses his targets with "..S(23224).." reducing healing.",
                ""..S(93857).." - Taunt but focus dps on boss.",
            }
        },
        {
            npcID = 4278,
            encounterID = 1071, 
            bossName= "Commander Springvale",
            notes = {
                "Avoid frontal cone (purple flame).",
                "Move out of "..S(93687)..", a green circle.",
            }
        },
        {
            npcID = 46963,
            encounterID = 1073, 
            bossName= "Lord Walden",
            notes = {
                "Move around to avoid "..S(93527)..".",
                "Watch out for "..S(93697).." he throws it at a player location.",
            }
        },
        {
            npcID = 46964,
            encounterID = 1072, 
            bossName= "Lord Godfrey",
            notes = {
                "Interrupt "..S(93629).."",
                "He summons ghouls, taunt but focus dps on boss.",
            }
        },
    }
    
    -- The Stockade
    addonTable.data[34] = {
        name = "The Stockade",
        {
            npcID = 46254,
            encounterID = 1144, 
            bossName= "Hogger",
            notes = {
                "At 30% the boss will "..S(86736).."",
                "Interrupt "..S(86620)..".",
            }
        },
        {
            npcID = 46264,
            encounterID = 1145, 
            bossName= "Lord Overheat",
            notes = {
                "Move out of "..S(86636).."",
                "TANK'N'SPANK",
            }
        },
        {
            npcID = 46383,
            encounterID = 1146, 
            bossName= "Randolph Moloch",
            notes = {
                "Boss will "..S(55964).." and pop up elsewhere.",
                "Face the boss away from the party to avoid cleave from "..S(86729).."",
            }
        },
    }
    
    -- Deadmines
    addonTable.data[36] = {
        name = "Deadmines",
        {
            npcID = 47162,
            encounterID = 1064, 
            bossName= "Glubtok",
            notes = {
                "Boss will Blink teleporting to a new location.",
                "Avoid blossoms launched around room.",
                "[H] Fire & Frost Blossoms summon mobs when land.",
                "[H] Avoid rotating Fire Wall.",
            }
        },
        {
            npcID = 47296,
            encounterID = 1065, 
            bossName= "Helix Gearbreaker",
            notes = {
                "Kill the Oaf mount, then the boss.",
                "Watch out for "..S(88352)..", avoid these on ground.",
                "[H] Stay spread out for "..S(88352).."",
                "[H] Way more "..S(88352).."",
            }
        },
        {
            npcID = 43778,
            encounterID = 1063, 
            bossName= "Foe Reaper 5000",
            notes = {
                "To activate boss kill all the other foe reapers.",
                "Face the boss away from the party to avoid "..S(88521).." cleave.",
                "Simple Tank'n'Spank ",
                "[H] activating boss summons adds, DPS should adds by piloting a reaper.",
            }
        },
        {
            npcID = 47626,
            encounterID = 1062, 
            bossName= "Admiral Ripsnarl",
            notes = {
                "Face the boss away from the party to avoid "..S(88839).." cleave.",
                "Boss will charge players with "..S(88836)..", knocking them down.",
                "During Fog kill the adds.",
                "Taunt the boss when he reappears.",
                "[H] more adds.",
            }
        },
        {
            npcID = 47739,
            encounterID = 1060, 
            bossName= "Cookie",
            notes = {
                "You don't need to tank this boss.",
                "DPS should nuke the boss when he is inside the cauldron.",
                "On normal difficulty, just help nuke the boss down while the healer heals through the AOE damage from bad food.",
                "[H] As tank you should take care of the food situation, alternate eating good food (green swirlie) with bad food. Eating a good food allows you to eat a bad food, reducing AOE damage.",
            }
        },
        {
            npcID = 49541,
            encounterID = 1081, 
            bossName= "Vanessa VanCleef [H]",
            notes = {
                "You will be transported into waves of nightmares to fight your way through.",
                "When she casts Fiery Blaze to detonate explosives around ship run to a rope & swing to safety (ropes by edge of ship on floor).",
                "Calls Defias mobs to aid her.",
            }
        },
    }
    
    -- Wailing Caverns
    addonTable.data[43] = {
        name = "Wailing Caverns",
        {
            npcID = 3671,
            encounterID = 585, 
            bossName= "Lady Anacondra",
            notes = {
                ""..S(8040).." puts a party member to sleep",
                "Will spam"..S(20295).." on you.",
                "Interrupt "..S(23381)..".",
            }
        },
        {
            npcID = 3669,
            encounterID = 586, 
            bossName= "Lord Cobrahn",
            notes = {
                ""..S(8040).." puts a party member to sleep",
                "Will spam"..S(20295).." on you.",
                "Interrupt "..S(23381)..".",
                "Can turn  into a snake with "..S(7965).."",
            }
        },
        {
            npcID = 3670,
            encounterID = 588, 
            bossName= "Lord Pythas",
            notes = {
                ""..S(8040).." puts a party member to sleep",
                "Will spam"..S(20295).." on you.",
                "Interrupt "..S(23381)..".",
            }
        },
        {
            npcID = 3653,
            encounterID = 587, 
            bossName= "Kresh",
            notes = {
                ""..S(80362).."will reduce your armor.",
            }
        },
        {
            npcID = 3674,
            encounterID = 589, 
            bossName= "Skum",
            notes = {
                "Tank'N'Spank",
            }
        },
        {
            npcID = 3673,
            encounterID = 590, 
            bossName= "Lord Serpentis",
            notes = {
                ""..S(8040).." puts a party member to sleep",
                ""..S(8040).." puts a party member to sleep",
                "Will spam"..S(20295).." on you.",
                "Will spam"..S(20295).." on you.",
                "Interrupt "..S(23381)..".",
                "Interrupt "..S(23381)..".",
            }
        },
        {
            npcID = 5775,
            encounterID = 591, 
            bossName= "Verdan the Everliving",
            notes = {
                ""..S(8142).." will knock you down and immobilize you for 5 seconds.",
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
    
    -- Razorfen Kraul
    addonTable.data[47] = {
        name = "Razorfen Kraul",
        {
            npcID = 74948,
            encounterID = 438, 
            bossName= "Roogug",
            notes = {
                "Avoid standing in "..S(153525).." and "..S(153528).." (green & yellow circles on floor).",
                "Interrupt "..S(150774)..".",
            }
        },
        {
            npcID = 75001,
            encounterID = 1656, 
            bossName= "Hunter Bonetusk",
            notes = {
                ""..S(150904).." - Move out of the circle of arrows.",
                "At 50% HP the boss will call "..S(150917)..", avoid all the boars.",
            }
        },
        {
            npcID = 74462,
            encounterID = 1659, 
            bossName= "Warlord Ramtusk",
            notes = {
                "You cannot leave the circle.",
                "Pick up all adds.",
            }
        },
        {
            npcID = 75247,
            encounterID = 1660, 
            bossName= "Groyat, the Blind Hunter",
            notes = {
                "Move away from "..S(128381).." (circle on ground).",
                "Move out of the circles of "..S(153214)..".",
                ""..S(43417).." bites a target inflicting damage & leeching health.",
            }
        },
        {
            npcID = 4421,
            encounterID = 1661, 
            bossName= "Charlga Razorflank",
            notes = {
                ""..S(151534).." - This allows the boss to summon two totems, outlined below.",
                "Run away to avoid being pulled in by the blue crystal.",
                "Green crystal spawns ooze mobs, avoid standing near the green puddles.",
                "Red crystal inflicts fire damage to anyone hit by the lines.",
                ""..S(151583).." will root you in place.",
            }
        },
    }
    
    -- Blackfathom Deeps
    addonTable.data[48] = {
        name = "Blackfathom Deeps",
        {
            npcID = 4887,
            encounterID = 1667, 
            bossName= "Ghamoo-Ra",
            notes = {
                "Move out way of lightning pool on ground, spins around then charges forward.",
                "Hits random targets with static during fight.",
            }
        },
        {
            npcID = 74565,
            encounterID = 1669, 
            bossName= "Subjugator Kor'ul",
            notes = {
                "Grabs a player with "..S(150634)..".",
                ""..S(151159).." summons tentacles to hit ground (move out of the crumbling floor).",
            }
        },
        {
            npcID = 164266,
            encounterID = 1668, 
            bossName= "Domina",
            notes = {
                "Avoid standing in "..S(149893).." (purple line on floor).",
                "Run away from "..S(149886).." (green bolts).",
            }
        },
        {
            npcID = 74728,
            encounterID = 1671, 
            bossName= "Twilight Lord Bathiel",
            notes = {
                ""..S(150020).." summons adds then boss absorbs them to heal, kill what you can.",
                "Run away from "..S(151813)..", ice shards fall & follow enemies.",
            }
        },
        {
            npcID = 75408,
            encounterID = 1672, 
            bossName= "Aku'mai",
            notes = {
                "Move around to avoid damage from falling rocks.",
                ""..S(151303).." summons tentacles that hit the ground (move out of the crumbling floor).",
            }
        },
        {
            npcID = 75410,
            encounterID = 1676, 
            bossName= "Guardian of the Deep",
            notes = {
                "Does aoe damage with Shattering Song (circle echoes out).",
                "Spore Cloud summons adds.",
                "Heals himself when eats a Blue Shale Crawler.",
            }
        },
        {
            npcID = 74988,
            encounterID = 1670, 
            bossName= "Executioner Gore",
            notes = {
                "Strikes the floor, move out of purple line.",
                "Avoid standing in the purple circles left on ground.",
                "Devouring Blackness grabs a player draining their health, interrupt this.",
            }
        },
        {
            npcID = 74505,
            encounterID = 1675, 
            bossName= "Thruk",
            notes = {
                ""..S(149908).." pulls in & roots a player in a fishing net.",
                ""..S(149913).." smashes the ground around him, move away.",
            }
        },
    }
    
    -- Uldaman
    addonTable.data[70] = {
        name = "Uldaman",
        {
            npcID = 6910,
            encounterID = 547, 
            bossName= "Revelosh",
            notes = {
                "TANK'N'SPANK",
                "Interrupt "..S(16006).."",
                "Interrupt "..S(15801).."",
            }
        },
        {
            npcID = 6906,
            encounterID = 548, 
            bossName= "The Lost Dwarves",
            notes = {
                "Taunt Baelog when necessary, try to keep them grouped up",
                "Eric will charge to players with "..S(6268)..", ignore otherwise",
                "Olaf can stun you with "..S(8242).."",
            }
        },
        {
            npcID = 7228,
            encounterID = 549, 
            bossName= "Ironaya",
            notes = {
                "Face the boss away from the part to avoid cleave from "..S(8374).."",
                ""..S(11876).." will stun you",
                ""..S(110762).." will knock you away",
            }
        },
        {
            npcID = 7206,
            encounterID = 551, 
            bossName= "Ancient Stone Keeper",
            notes = {
                "Clear the room of all adds before engaging.",
                "TANK'N'SPANK",
                "Make sure to rotate cooldowns and mitigation as your healer might be struggling while they're slowed down by "..S(10092).." and "..S(10093).."",
            }
        },
        {
            npcID = 7291,
            encounterID = 552, 
            bossName= "Galgann Firehammer",
            notes = {
                "TANK'N'SPANK with lots of magic damage.",
                "The adds are interruptible.",
            }
        },
        {
            npcID = 4854,
            encounterID = 553, 
            bossName= "Grimlok",
            notes = {
                "Interrupt "..S(8292).."",
                "Interrupt "..S(12167).."",
            }
        },
        {
            npcID = 2748,
            encounterID = 554, 
            bossName= "Archaedas",
            notes = {
                "The boss will summon a lot of adds during the fight.",
                "When the boss reaches 66% HP he will "..S(10252).."s",
                "When the boss reaches 33% HP he will "..S(10258).."s, they can stun you",
                ""..S(6524).." can stun you.",
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
    
    -- Gnomeregan
    addonTable.data[90] = {
        name = "Gnomeregan",
        {
            npcID = 6229,
            encounterID = 381, 
            bossName= "Crowd Pummeler 9-60",
            notes = {
                "Avoid the frontal "..S(8374)..".",
                "Boss can interrupt any spellcasting with "..S(10887)..".",
            }
        },
        {
            npcID = 7361,
            encounterID = 379, 
            bossName= "Grubbis",
            notes = {
                "Start fight by talking to the Gnome at back of room.",
                "Defeat waves of adds before the boss appears.",
                "Grubbis is a simple tank and spank fight.",
            }
        },
        {
            npcID = 7079,
            encounterID = 378, 
            bossName= "Viscous Fallout",
            notes = {
                "He can be hard to spot in this big room, be careful when pulling the boss, lots of adds around.",
                "Tank'N'Spank",
            }
        },
        {
            npcID = 6235,
            encounterID = 380, 
            bossName= "Electrocutioner 6000",
            notes = {
                "Interrupt "..S(11082)..", if not dodge.",
                "Interrupt "..S(11085)..".",
            }
        },
        {
            npcID = 7800,
            encounterID = 382, 
            bossName= "Mekgineer Thermaplugg",
            notes = {
                "Interrupt "..S(93655)..", this knocks back.",
                "Keep moving to avoid Walking Bombs.",
            }
        },
    }
    
    -- The Temple of Atal'hakkar
    addonTable.data[109] = {
        name = "The Temple of Atal'hakkar",
        {
            npcID = 8443,
            encounterID = 492, 
            bossName= "Avatar of Hakkar",
            notes = {
                ""..S(25852).." will stun you",
                "Boss will give a player the "..S(188541).." debuff making them attack you",
            }
        },
        {
            npcID = 5710,
            encounterID = 488, 
            bossName= "Jammal'an the Prophet",
            notes = {
                "Interrupt "..S(232670).." from Ogom",
                "Avoid standing in fire patches.",
                "Move away from the "..S(8376)..", it will root you",
                ""..S(12480).." will hex a player, they will attack the party.",
            }
        },
        {
            npcID = 5709,
            encounterID = 493, 
            bossName= "Shade of Eranikus",
            notes = {
                "Face the boss away from the party.",
                ""..S(12890).." will put a player to sleep, beware if it's the healer.",
                ""..S(11876).." will stun you.",
                "Dodge the frontal "..S(12891).."",
            }
        },
    }
    
    -- Razorfen Downs
    addonTable.data[129] = {
        name = "Razorfen Downs",
        {
            npcID = 74347,
            encounterID = 1663, 
            bossName= "Mordresh Fire Eye",
            notes = {
                "Kill all adds.",
                "Interrupt "..S(150001)..".",
                "Boss will "..S(150067).."s, avoid the fire balls and never stand in between them",
            }
        },
        {
            npcID = 74434,
            encounterID = 1666, 
            bossName= "Amnennar the Coldbringer",
            notes = {
                "Tank the boss near green circular pools of "..S(150664)..", you should stand in it as it will heal you.",
                "Anyone affected by "..S(150679).." should run into the pool to stun the boss.",
                "Move away from frost balls of "..S(151810)..".",
            }
        },
        {
            npcID = 74412,
            encounterID = 1662, 
            bossName= "Aarux",
            notes = {
                "When you get pulled to the boss by "..S(150072)..", Run Away.",
                "Use a cooldown for "..S(150082).." to help the healer.",
            }
        },
        {
            npcID = 74435,
            encounterID = 1664, 
            bossName= "Mushlump",
            notes = {
                "Use mitigation/cooldown for Smack Down",
                "Avoid the green vomit frontal cone "..S(149851)..",.",
                "Don't stand in vomit zones.",
            }
        },
        {
            npcID = 74875,
            encounterID = 1665, 
            bossName= "Death Speaker Blackthorn",
            notes = {
                "Avoid the frontal cone "..S(151962)..".",
                "Boss will "..S(150601)..". They interrupt spell casting & and will knock you back",
                "Interrupt "..S(150616).." & "..S(150550)..".",
            }
        },
    }
    
    -- Zul'Farrak
    addonTable.data[209] = {
        name = "Zul'Farrak",
        {
            npcID = 7273,
            encounterID = 594, 
            bossName= "Gahz'rilla",
            notes = {
                ""..S(11131).." will slow you down",
                ""..S(11836).." is a stun ability.",
                "Move away from "..S(11902)..", this is a knockback.",
            }
        },
        {
            npcID = 8127,
            encounterID = 595, 
            bossName= "Antu'sul",
            notes = {
                "Kill the adds first.",
                "Kill the Greater Healing Ward & "..S(8376).."s.",
                "Boss uses variety of shaman spells, interrupt the heals.",
                "At 75% & 25% summons "..S(11894).." to fight, kill them quickly.",
            }
        },
        {
            npcID = 7272,
            encounterID = 596, 
            bossName= "Theka the Martyr",
            notes = {
                "The scarabs will attack when you pull the boss",
                "Interrupt "..S(8600).." ",
                "At 30% the boss transforms making him immune to physical attacks and shadow magic",
            }
        },
        {
            npcID = 7271,
            encounterID = 597, 
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
            npcID = 7796,
            encounterID = 598, 
            bossName= "Nekrum & Sezz'ziz",
            notes = {
                "The prisoners help you fight the trolls & bosses.",
                "Nekrum: Interrupt "..S(8600)..".",
                "Sezz'ziz: Interrupt "..S(12739)..", "..S(8362).." & "..S(12039)..".",
                ""..S(13704).." will fear you.",
            }
        },
        {
            npcID = 7267,
            encounterID = 600, 
            bossName= "Chief Ukorz Sandscalp",
            notes = {
                "Ruuzlu will aid the boss in this fight.",
                "Face the boss away from the party to avoid "..S(15496).." and "..S(11837).."",
                "Boss will "..S(8269).."",
            }
        },
    }
    
    -- Lower Blackrock Spire
    addonTable.data[229] = {
        name = "Lower Blackrock Spire",
        {
            npcID = 9196,
            encounterID = 267, 
            bossName= "Highlord Omokk",
            notes = {
                ""..S(110762).." will knock you back.",
                "At 50% HP the boss will "..S(8269).."",
            }
        },
        {
            npcID = 9236,
            encounterID = 268, 
            bossName= "Shadow Hunter Vosh'gajin",
            notes = {
                "Interrupt "..S(16098)..", if not, use a cooldown to help the healer.",
                "The boss will turn someone in a frog with "..S(16097)..", be ready if it's the healer.",
            }
        },
        {
            npcID = 9237,
            encounterID = 269, 
            bossName= "War Master Voone",
            notes = {
                "Face the boss away from the party to avoid "..S(15284).."",
                ""..S(15618).." and "..S(16075).." will stun you.",
                ""..S(10966).." will knock you back",
            }
        },
        {
            npcID = 10596,
            encounterID = 270, 
            bossName= "Mother Smolderweb",
            notes = {
                ""..S(16104).." will stun you",
                "stay spread out to avoid poisoning others with "..S(16468).."",
                "When the boss is dead, she will "..S(16103).."",
            }
        },
        {
            npcID = 10584,
            encounterID = 271, 
            bossName= "Urok Doomhowl",
            notes = {
                "Kill waves of ogres until boss spawns.",
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
                "Tank'N'Spank",
                "When you kill Halycon, Gizrul, the next boss, will come in to fight you.",
            }
        },
        {
            npcID = 10268,
            encounterID = 273, 
            bossName= "Gizrul the Slavener",
            notes = {
                "Tank'N'Spank, rotate cooldowns.",
                "Boss will "..S(8269).." after 30 seconds.",
            }
        },
        {
            npcID = 9568,
            encounterID = 275, 
            bossName= "Overlord Wyrmthalak",
            notes = {
                "Face the boss away from the party to avoid "..S(15284).."",
                "Dodge "..S(12887)..", a frontal cone with knockback",
            }
        },
    }
    
    -- Blackrock Depths
    addonTable.data[230] = {
        name = "Blackrock Depths",
        {
            npcID = 9502,
            encounterID = 239, 
            bossName= "Phalanx",
            notes = {
                "Will attack you when you kill Plugger Spazzring.",
                ""..S(14099).." will knock you back.",
                ""..S(15588).." will slow you down.",
            }
        },
        {
            npcID = 9018,
            encounterID = 227, 
            bossName= "High Interrogator Gerstahn",
            notes = {
                "Interrupt "..S(14033)..".",
                ""..S(13704).." will fear you.",
            }
        },
        {
            npcID = 9025,
            encounterID = 228, 
            bossName= "Lord Roccor",
            notes = {
                "Boss deals mostly magic damage.",
                ""..S(6524).." can stun you.",
            }
        },
        {
            npcID = 9319,
            encounterID = 229, 
            bossName= "Houndmaster Grebmar",
            notes = {
                ""..S(171402).." will make you weaker.",
                "Boss can use "..S(21049).." ",
                "Boss will flee at 15% health.",
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
            bossName= "Pyromancer Loregrain",
            notes = {
                "Focus kill the "..S(15038).."",
                "Interrupt "..S(15095)..".",
            }
        },
        {
            npcID = 9017,
            encounterID = 232, 
            bossName= "Lord Incendius",
            notes = {
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
            }
        },
        {
            npcID = 9056,
            encounterID = 234, 
            bossName= "Fineous Darkvire",
            notes = {
                ""..S(8258).." makes the boss less prone to physical damage.",
                "Interrupt "..S(15493)..".",
                "Do NOT hit an ",
                "enemy buffed with SEAL, or you will heal them back up.",
            }
        },
        {
            npcID = 9016,
            encounterID = 235, 
            bossName= "Bael'Gar",
            notes = {
                ""..S(23379).." is magic damage and will leave a long magic DoT.",
                "The boss will "..S(13895)..", move away from the boss to avoid AOE damage.",
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
                "Tank'N'Spank",
                "Killing him unlocks the Bar Door and everyone will attack you.",
            }
        },
        {
            npcID = 9156,
            encounterID = 242, 
            bossName= "Ambassador Flamelash",
            notes = {
                "Tank'N'Spank",
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
                "Interrupt all spels of the High Priestess of Thaurissan",
            }
        },
    }
    
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
    
    -- Zul'Gurub
    addonTable.data[309] = {
        name = "Zul'Gurub",
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Gri'lek",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Hazza'rah",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Renataki",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 788, 
            bossName= "Cache of Madness - Wushoolay",
            notes = {
            }
        },
    }
    
    -- Stratholme
    addonTable.data[329] = {
        name = "Stratholme",
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
                "Use mitigation for "..S(17470).." it heals the boss.",
                "At 50% HP the boss "..S(8599).."s.",
            }
        },
        {
            npcID = 10997,
            encounterID = 475, 
            bossName= "Willey Hopebreaker",
            notes = {
                "The boss will "..S(17279)..", pick them up and focus kill them.  ",
                "DPS can pick up Cannonballs to fire the Cannons at the adds.",
                ""..S(110762).." will knock you back",
            }
        },
        {
            npcID = 10811,
            encounterID = 477, 
            bossName= "Instructor Galford",
            notes = {
                "Use magic mitigation/cooldowns for "..S(17366).." to help the healer.",
                "Use magic mitigation/cooldowns for "..S(17293)..", this will stun you.",
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
                ""..S(4962).." can root you and make you slower.",
                "Use a cooldown for "..S(6016).."",
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
                "Have mitigation up for "..S(17687).."",
                ""..S(17307).." Will stun and knock you back.",
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
                "Use a cooldown for "..S(16172)..", it lower your stamina.",
            }
        },
    }
    
    -- Maraudon
    addonTable.data[349] = {
        name = "Maraudon",
        {
            npcID = 13282,
            encounterID = 422, 
            bossName= "Noxxion",
            notes = {
                ""..S(10966).." knocks you back.",
                ""..S(21707).." will split boss in 5 adds, focus kill them.",
            }
        },
        {
            npcID = 12258,
            encounterID = 423, 
            bossName= "Razorlash",
            notes = {
                "Face the boss away from the party to avoid "..S(40504).."",
                "Tank'N'SPank",
            }
        },
        {
            npcID = 13601,
            encounterID = 427, 
            bossName= "Tinkerer Gizlock",
            notes = {
                "Watch out for the "..S(9143).."s and "..S(29419).."s thrown at a random player, move the boss away from the blast zones.",
                "Face the boss away from the party and dodge the frontal cone "..S(21833).." .",
            }
        },
        {
            npcID = 12236,
            encounterID = 424, 
            bossName= "Lord Vyletongue",
            notes = {
                "Focus kill the Shadowstalker guards adds.",
                "Move away from the player targeted"..S(7964)..", this stuns.",
                "Spread out for "..S(21390)..", this cleaves.",
            }
        },
        {
            npcID = 12225,
            encounterID = 425, 
            bossName= "Celebras the Cursed",
            notes = {
                "Pick up the "..S(21968).." adds but focus kill the boss.",
                "Move out of "..S(21793).."",
                "Interrupt "..S(21807).." & "..S(12747).."",
            }
        },
        {
            npcID = 12203,
            encounterID = 426, 
            bossName= "Landslide",
            notes = {
                ""..S(110762).." will knocks you back.",
                ""..S(21808).." will stun you and summons adds",
            }
        },
        {
            npcID = 13596,
            encounterID = 428, 
            bossName= "Rotgrip",
            notes = {
                "Pull the boss out of the water",
                "Tank'N'Spank",
            }
        },
        {
            npcID = 12201,
            encounterID = 429, 
            bossName= "Princess Theradras",
            notes = {
                ""..S(21869).." will fear you.",
                ""..S(21832).." and "..S(22592).." will stun you.",
                "Move out of "..S(21909).." or you'll be knocked back.",
                "Don't stand near an edge that you could be knocked off.",
            }
        },
    }
    
    -- Ragefire Chasm
    addonTable.data[389] = {
        name = "Ragefire Chasm",
        {
            npcID = 61408,
            encounterID = 1443, 
            bossName= "Adarogg",
            notes = {
                "Move out of the way of "..S(119405)..".",
                "Take not of the frontal cone "..S(119420)..".",
            }
        },
        {
            npcID = 61412,
            encounterID = 1444, 
            bossName= "Dark Shaman Koranthal",
            notes = {
                "Interrupt "..S(119300)..".",
                "Avoid the purple swirls during "..S(119971)..".",
            }
        },
        {
            npcID = 61463,
            encounterID = 1445, 
            bossName= "Slagmaw",
            notes = {
                "Boss will occasionally vanish in the lava and pop up ",
                "somewhere else.",
            }
        },
        {
            npcID = 61528,
            encounterID = 1446, 
            bossName= "Lava Guard Gordoth",
            notes = {
                ""..S(119999).." and "..S(120024).." will knock back",
                "Boss "..S(50420).."s at 30%HP",
            }
        },
    }
    
    -- Molten Core
    addonTable.data[409] = {
        name = "Molten Core",
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
    
    -- Dire Maul
    addonTable.data[429] = {
        name = "Dire Maul",
        {
            npcID = 11490,
            encounterID = 343, 
            bossName= "Zevrim Thornhoof",
            notes = {
                "TANK'N'SPANK",
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
                "The boss will control a player with "..S(7645).." you can ignore this.",
                "At 50% HP the boss uses "..S(22917)..". Rotate your cooldowns, if any, during this period.",
            }
        },
        {
            npcID = 11496,
            encounterID = 349, 
            bossName= "Immol'thar",
            notes = {
                "Move away to avoid "..S(5568)..".",
                "Prepare for "..S(16128)..", this increases your damage taken.",
                "Boss will "..S(8269).."",
                "Focus kill any "..S(22899).." adds.",
            }
        },
        {
            npcID = 11486,
            encounterID = 361, 
            bossName= "Prince Tortheldrin",
            notes = {
                ""..S(22920).." will knock you back.",
                "If Healer gets nature locked (can't heal) use cooldowns to survive.",
            }
        },
        {
            npcID = 14326,
            encounterID = 362, 
            bossName= "Guard Mol'dar",
            notes = {
                "TANK'N'SPANK",
                "Be ready to pick up any adds that join the fight.",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14322,
            encounterID = 363, 
            bossName= "Stomper Kreeg",
            notes = {
                "Will Knock you back with "..S(16740)..".",
                "Avoid the frontal cone - "..S(22833)..".",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14321,
            encounterID = 364, 
            bossName= "Guard Fengus",
            notes = {
                "TANK'N'SPANK",
                "Clear an area to fight in and",
                "be ready to pick up any adds that join the fight.",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14323,
            encounterID = 365, 
            bossName= "Guard Slip'kik",
            notes = {
                "TANK'N'SPANK",
                "Be ready to pick up any adds that join the fight.",
                "Can freeze you with "..S(22856).."",
                "Goes into "..S(8269)..".",
            }
        },
        {
            npcID = 14325,
            encounterID = 366, 
            bossName= "Captain Kromcrush",
            notes = {
            }
        },
        {
            npcID = 14324,
            encounterID = 367, 
            bossName= "Cho'Rush the Observer",
            notes = {
                "He will randomly choose a class, he will either be a priest, shaman, or mage.",
                "If he is a priest: "..S(22884).." will fear you, interrupt "..S(38209).."",
                "If he's a shaman: drag him away from the "..S(8376).." and interrupt "..S(15982).."",
                "If he's a mage: "..S(15531).." can freeze you.",
            }
        },
        {
            npcID = 11501,
            encounterID = 368, 
            bossName= "King Gordok",
            notes = {
                "Make sure to save your cooldowns for "..S(16856).." and high stacks of "..S(15572).." as you will be difficult to heal",
                ""..S(16727).." will stun you.",
                ""..S(22886).." will knock players back, position the boss so your DPS have maximum uptime.",
            }
        },
    }
    
    -- Blackwing Lair
    addonTable.data[469] = {
        name = "Blackwing Lair",
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
    addonTable.data[509] = {
        name = "Ruins of Ahn'Qiraj",
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
    addonTable.data[531] = {
        name = "Temple of Ahn'Qiraj",
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
            }
        },
    }
    
    -- Scarlet Monastery
    addonTable.data[1004] = {
        name = "Scarlet Monastery",
        {
            npcID = 59223,
            encounterID = 1424, 
            bossName= "Brother Korloff",
            notes = {
                "Move away from "..S(113764)..".",
                "Face the boss away from the party for "..S(114807).."",
                "Below 50% HP the boss will cast "..S(114460)..", avoid the fire on the floor.",
            }
        },
        {
            npcID = 3977,
            encounterID = 1425, 
            bossName= "High Inquisitor Whitemane",
            notes = {
                "First you will fight Durand, dodge "..S(115739)..".",
                "When he is defeated Whitemane will join fight.",
                "Interrupt "..S(114848).." & "..S(9232)..".",
                "During the fight she will resurrect Commander Durand.",
            }
        },
        {
            npcID = 59789,
            encounterID = 1423, 
            bossName= "Thalnos the Soulrender",
            notes = {
                "Interrupt "..S(115289)..".",
                "Ignore adds, Nuke the boss.",
                ""..S(115147).." creates Empowered Zombies, keep your defenses up.",
            }
        },
    }
    
    -- Scholomance
    addonTable.data[1007] = {
        name = "Scholomance",
        {
            npcID = 58633,
            encounterID = 1426, 
            bossName= "Instructor Chillheart",
            notes = {
                "Move away from "..S(111854).." ",
                "When boss dies, kill the phylactery in the middle of the room.",
                "Avoid standing under the floating books.",
                "[TW] "..S(111631).." is a heavy DoT, pop a cooldown if necessary.",
            }
        },
        {
            npcID = 59184,
            encounterID = 1427, 
            bossName= "Jandice Barov",
            notes = {
                "Face boss away from the party and avoid the frontal cone, "..S(114062)..".",
                "At 33% & 66% boss will hide behind an illusion, you should avoid killing the wrong illusion, but just kill them all for fast results.",
            }
        },
        {
            npcID = 59153,
            encounterID = 1428, 
            bossName= "Rattlegore",
            notes = {
                "Pick up "..S(113996).." (click the piles of bones on floor), these absorb one "..S(113999)..", helps the healer out.",
                "Avoid blue flame patches.",
                "You will be hit with "..S(113765)..", this makes you slower with each stack, you can kite the boss to drop these stacks.",
            }
        },
        {
            npcID = 59200,
            encounterID = 1429, 
            bossName= "Lilian Voss",
            notes = {
                "Place the purple zones that drop underneath you during "..S(111585).." on the edges of the room.",
                "She can pull you towards her with "..S(111570).." which is a nice shortcut for you.",
            }
        },
        {
            npcID = 59080,
            encounterID = 1430, 
            bossName= "Darkmaster Gandling",
            notes = {
                "He summons adds, ignore these, nuke the boss.",
                ""..S(113395).." will teleport a player to a study room. If it happens to be you as tank, this might cause a wipe. Hurry back to the boss room.",
            }
        },
    }
    
    -- Upper Blackrock Spire
    addonTable.data[1358] = {
        name = "Upper Blackrock Spire",
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