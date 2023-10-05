local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:LegionInitializeData()
     
    -- Eye of Azshara
    addonTable.data[1456] = {
        name = "Eye of Azshara",
        {
            npcID = 91808,
            encounterID = 1813, 
            bossName= "Serpentrix",
            notes = {
                "After the boss "..S(191873).."s , quickly locate the main boss head and stay in melee range to prevent "..S(191848).."",
                "Interrupt the initial "..S(191848).." cast",
                "If targeted by "..S(192050)..", move out of its area of effect",
                "Move away from any "..S(191858).." spawned by players affected with "..S(191855).."",
                "Stay alert for additional trash mobs that may be pulled as players move to the Hydra Spawn!",
            }
        },
        {
            npcID = 91784,
            encounterID = 1810, 
            bossName= "Warlord Parjesh",
            notes = {
                "Following "..S(192073).." , quickly taunt the summoned add; the add may need to be interrupted or silenced so it will move",
                "Stay out of the way of "..S(192094).."",
                "Avoid "..S(191900).." damage by side-stepping the boss as he casts it",
                "Interrupt the add's "..S(197502).." or "..S(192135).." when able",
                "Use cooldowns and Active Mitigation more frequently when the boss enters "..S(197064).." below 30% health",
                "[M] "..S(196563).." always summons two adds, focus down the Crestrider (=healer)",
                "[M] Avoid standing in "..S(192053).." left behind by "..S(191900).."",
            }
        },
        {
            npcID = 91789,
            encounterID = 1811, 
            bossName= "Lady Hatecoil",
            notes = {
                "Be sure to stand on a Sand Dune while the boss casts "..S(193597)..", to avoid being stunned",
                "Move away from the Sand Dunes and other players while the boss casts "..S(193611).."",
                "Taunt or gain threat on the adds following the "..S(193682).." cast",
                "Aim your "..S(193716).." at any remaining adds as it expires",
                "Do not leave the boss shallow pool to stand on the shore, as this will cause heavy "..S(197326).." damage",
                "[M] Avoid being hit by the small tornadoes formed during "..S(196610)..", don't kite them into Sand Dunes or they will be destroyed.",
            }
        },
        {
            npcID = 91797,
            encounterID = 1812, 
            bossName= "King Deepbeard",
            notes = {
                "Aim the boss away from the party and avoid it's frontal "..S(193093).."",
                "Move away from the "..S(193171).." area after the boss casts "..S(193152).."",
                "Save powerful cooldowns for the final 30%, when the boss enters a "..S(197550).."",
                "[M] "..S(193171).." void zones remain during the fight.",
            }
        },
        {
            npcID = 96028,
            encounterID = 1814, 
            bossName= "Wrath of Azshara",
            notes = {
                "Dodge "..S(192617).." (giant blue swirlie), and keep the boss facing about 90 degrees away from the party so no other players are threatened by it",
                "Do not step into the pool in the center of the island",
                "Avoid the "..S(192801).."s and "..S(192675).." spawns near you",
                "Step out of any "..S(192794).." areas near you",
                "Use stronger cooldowns during the "..S(192985).." phase",
            }
        },
    }
    
    -- Neltharion's Lair
    addonTable.data[1458] = {
        name = "Neltharion's Lair",
        {
            npcID = 91003,
            encounterID = 1790, 
            bossName= "Rokmora",
            notes = {
                "Face the boss away from the party so players won't have to move for "..S(188169).."",
                "When possible, avoid of "..S(188169)..", or use a cooldown to mitigate its damage",
                "Tank with your back against the wall so "..S(188114).." won't knock you back",
                "Taunt adds to get them away from ranged players",
                "Move out of "..S(192799).." clouds",
                "[M] At the start and after every "..S(188114).." the boss will cast "..S(198028)..", move as little as possible.",
            }
        },
        {
            npcID = 91004,
            encounterID = 1791, 
            bossName= "Ularogg Cragshaper",
            notes = {
                "Move the boss near the Bellowing Idols after each "..S(193375).." cast, so players can cleave",
                "Use active mitigation or a cooldown for each "..S(198496).." attack",
                "During "..S(198565)..", there is nothing to tank, so focus on tracking and damaging the correct Bellowing Idol",
            }
        },
        {
            npcID = 91005,
            encounterID = 1792, 
            bossName= "Naraxas",
            notes = {
                "Be sure that you are within the healer's LOS while tanking",
                "As the boss is casting "..S(199176)..", run toward the back of the room",
                "Use Rancid Maw pools to slow your movement as "..S(199176).." pulls you towards the boss",
                "Use a damage-reduction cooldown to survive the "..S(199705).." damage",
                "As "..S(199705).." is fading, taunt the boss so she does not attack the melee DPS while you get back into position",
                "Save your strongest cooldowns for the "..S(199775).." phase",
            }
        },
        {
            npcID = 999999,
            encounterID = 1793, 
            bossName= "Dargrul the Underking",
            notes = {
                "Aim "..S(200700).." away from the party and any existing "..S(200551).."",
                "Use Active Mitigation abilities to avoid the extra damage and knockback from "..S(200732).."",
                "Stun or slow the Molten Charskin when it spawns",
                "Hide behind "..S(200551).." during "..S(200404)..", or use a strong damage-reduction CD to survive its damage",
                "[M] The boss gains "..S(216368)..", minimize boss movement to avoid heavy partywide damage."
            }
        },
    }
    
    -- Darkheart Thicket
    addonTable.data[1466] = {
        name = "Darkheart Thicket",
        {
            npcID = 96512,
            encounterID = 1836, 
            bossName= "Archdruid Glaidalis",
            notes = {
            }
        },
        {
            npcID = 103344,
            encounterID = 1837, 
            bossName= "Oakheart",
            notes = {
            }
        },
        {
            npcID = 99200,
            encounterID = 1838, 
            bossName= "Dresaron",
            notes = {
            }
        },
        {
            npcID = 99192,
            encounterID = 1839, 
            bossName= "Shade of Xavius",
            notes = {
            }
        },
    }
    
    -- Halls of Valor
    addonTable.data[1477] = {
        name = "Halls of Valor",
        {
            npcID = 94960,
            encounterID = 1805, 
            bossName= "Hymdall",
            notes = {
                "Move the boss out of the spinning sword - "..S(193235).." - so your DPS can do their job.",
                "Use a cooldown/mitigation for the frontal cone - "..S(193092).."",
                "Keep an eye on the Storm Drakes in the sky, when the boss uses "..S(191284)..", one if the drakes will fill a part of the arena with a big lightning zone, drag the boss out of it.",
            }
        },
        {
            npcID = 95833,
            encounterID = 1806, 
            bossName= "Hyrja",
            notes = {
                "Face the boss away from the party due to her frontal - "..S(192018).."",
                "Tank the boss on top of the East add (Thunder), when the bubble appears - "..S(192305).." - stand in it.",
                "Alternate tanking the boss on the Thunder and Holy (West) side  to avoid too high stacks of either empowerment.",
                "You can use the knockback from "..S(192018).." to get there quick.",
                "Dodge the holy orbs of "..S(192307)..".",
            }
        },
        {
            npcID = 99868,
            encounterID = 1807, 
            bossName= "Fenryr",
            notes = {
                "Use a cooldown/mitigation for "..S(196512)..", this damage should ideally be soaked by the entire party, but you will likely take the hit alone.",
                ""..S(196543).." will interrupt you (and all others).",
                "3 wolves will spawn, pick them up and cleave them on top of the boss.",
                "The boss will sometimes chase a party member for 6s - "..S(196838)..", they must run away",
                ", nothing you can do about it.",
            }
        },
        {
            npcID = 95675,
            encounterID = 1808, 
            bossName= "God-King Skovald",
            notes = {
                "Pick up the shield - "..S(202711).." - and use it to protect the party during every "..S(193826).." cast, your party should stand behind the shield.",
                "When the above is over, the boss will steal the shield from you and an add - yellow/green elemental - will be summoned, tank the boss on top of the add for cleave.",
                "Pick up the shield again before the next "..S(193826).." cast",
                "Use active mitigation/cooldowns for "..S(193668).." to avoid a debuff - "..S(193686).."",
                "Move out of green stuff on the floor - "..S(193702).."",
            }
        },
        {
            npcID = 95676,
            encounterID = 1809, 
            bossName= "Odyn",
            notes = {
                "Try to group the Storm add and the boss for cleave damage, interrupt "..S(198750)..", this stacks!",
                "When marked with a "..S(197961)..", match the icon on your head to the rune on the floor.",
                "Move the boss away from "..S(198072).." spawns ",
                "Boss will shatter the Spear, orbs will spawn, dodge them.",
                "Use a powerful cooldown to survive the giant circle - "..S(198263).." - or run out of it",
            }
        },
    }
    
    -- Maw of Souls
    addonTable.data[1492] = {
        name = "Maw of Souls",
        {
            npcID = 96756,
            encounterID = 1822, 
            bossName= "Ymiron, the Fallen King",
            notes = {
                "Move out of the purple circle - "..S(193364).." - to avoid being feared",
                "Use a cooldown or Active Mitigation abilities for each "..S(193211).."",
                "During and after the knockback ability - "..S(193977).." - avoid touching purple orbs - "..S(193460).." - as you move around.",
            }
        },
        {
            npcID = 96754,
            encounterID = 1823, 
            bossName= "Harbaron",
            notes = {
                "Move the boss on top of any adds so your group can cleave.",
                "Avoid the line of giant weapons - "..S(194216).." - when it is aimed near you.",
                "Interrupt "..S(194266).."",
            }
        },
        {
            npcID = 96759,
            encounterID = 1824, 
            bossName= "Helya",
            notes = {
                "Place a skull marker on and focus kill the Destructor Tentacles, then kill the GRASPING TENTACLES.",
                "Stay away from holes in the floor and avoid blue swirlies.",
                "While fighting Helya, point her towards one side of the boat so melee DPS can attack from the other side",
                "Interrupt "..S(198495).." when possible",
                "Avoid her frontal - "..S(227233).." by watching for Helya's facing and moving to a safe space",
                "Always stay in melee range",
            }
        },
    }
    
    -- Vault of the Wardens
    addonTable.data[1493] = {
        name = "Vault of the Wardens",
        {
            npcID = 95885,
            encounterID = 1815, 
            bossName= "Tirathon Saltheril",
            notes = {
                "When possible, apply Active Mitigation for the entire 10-second duration of the "..S(191941).." buff",
                "If Active Mitigation is not available, consider using a cooldown to mitigate "..S(191941).." damage, as it can be very dangerous",
                "Interrupt "..S(191823).." when possible",
                "Move the boss away from nearby patches of "..S(202919).."",
                "If the boss assumes Havoc form, keep him faced away from the party so players do not take "..S(190836).." damage",
                "Side-step out of the "..S(190836).." beam to avoid taking heavy damage from it",
                "If the boss assumes Vengeance form, kite the boss around the room when Fel Glaives approach the party, to avoid taking "..S(214625).."damage",
                "[M] additional adds will spawn throughout the fight, make sure to pick them up",
            }
        },
        {
            npcID = 95886,
            encounterID = 1816, 
            bossName= "Ash'golm",
            notes = {
                "The Embers cannot be tanked",
                "Use a cooldown to soak "..S(192519).." if  "..S(192522).." or "..S(192519).." WREATH patches are going to reach an Ember",
                "Move out of "..S(192522).." to avoid soaking too many "..S(192519).." patches",
            }
        },
        {
            npcID = 95887,
            encounterID = 1817, 
            bossName= "Glazer",
            notes = {
                "When possible, move the boss into the path of incoming "..S(214893).." orbs so he consumes the orb and takes its damage",
                "Move the boss away from nearby pools of "..S(194945)..", so melee DPS does not stand in it",
                "During the "..S(194323).." phase, there is nothing to tank or DPS; assist the party in adjusting the Lenses",
                "Use defensive cooldowns during the "..S(194323).." phase to take less damage from "..S(195032)..", and avoid standing in the "..S(194463).."",
                "When the boss has been "..S(194333)..", quickly taunt him",
                "Use any offensive cooldowns you may have to deal additional damage during his "..S(194333).." vulnerability window",
                "[M] additional orbs will spawn and more lenses to adjust, you will likely be the one doing all the lenses as DPS need to kill a shield.",
            }
        },
        {
            npcID = 95888,
            encounterID = 1818, 
            bossName= "Cordana Felsong",
            notes = {
                "The boss "..S(214989).." / "..S(189469).." combo will knock you back; be sure to be centrally positioned to avoid being thrown over the edge",
                "Try to avoid moving the boss excessively while a "..S(197513).." is travelling back to her",
                "If you are affected by "..S(197541)..", use a powerful cooldown for the debuff's duration",
                "When the boss gains "..S(205004)..", quickly find the corner the add is hiding in by using Elune's Light and taunt it",
                "While fighting the add, be sure to face the boss towards the center of the platform so her "..S(214989).." / "..S(189469).." will knock you away from the edge",
                "Move the boss away from nearby pools of "..S(213583).."",
                "[M] the boss will now use "..S(197422)..", summoning walls of ghosts moving from one side to the other, find the gap in the wall with Elune's Light",
            }
        },
        {
            npcID = 96015,
            encounterID = 1850, 
            bossName= "Inquisitor Tormentorum",
            notes = {
                "Pull the boss down the ramp into the main area of the room to avoid pulling additional trash packs",
                "Interrupt "..S(200905).." as often as possible",
                "If affected by "..S(200905)..", use a utility ability to clear the debuff",
                "Follow the boss when he casts "..S(200898)..", and depending upon which cell he opens, be prepared to tank the high-damage target:",
                "NW cell - Enormous Quilen - use Active Mitigation/CDs for  "..S(125096).."",
                "NE cell - Void-Touched Juggernaut - face him away from the party, use stronger cooldowns for "..S(212561).."",
                "SE cell - gain threat on the swarm of  adds",
                "SW cell - taunt the Felguard Annihilator and use Active Mitigation for "..S(225419).."",
                "NW cell - Enormous Quilen - use Active Mitigation/CDs for  "..S(125096).."",
                "NE cell - Void-Touched Juggernaut - face him away from the party, use stronger cooldowns for "..S(212561).."",
                "SE cell - gain threat on the swarm of  adds",
                "SW cell - taunt the Felguard Annihilator and use Active Mitigation for "..S(225419).."",
                "Try to keep aggro on as many smaller targets as possible, and keep the high-damage target facing away from the party",
                "[M] "..S(200905).." cannot be interrupted, make sure to use a filler ability as first spell to be used after receiving the debuff and not an important "
            }
        },
    }
    
    -- Black Rook Hold
    addonTable.data[1501] = {
        name = "Black Rook Hold",
        {
            npcID = 98542,
            encounterID = 1832, 
            bossName= "The Amalgam of Souls",
            notes = {
                "Keep the boss facing away from the party in a corner.",
                "Dodge the frontal "..S(194956).."",
                "Use a cooldown when you can't dodge "..S(194956)..".",
                "Move away from "..S(195254).." on the floor.",
                "Move out of purple "..S(194966).." dropped by the party, have them drop it at the sides of the arena.",
                "Help kill adds when the boss teleports to the middle.",
            }
        },
        {
            npcID = 98696,
            encounterID = 1833, 
            bossName= "Illysanna Ravencrest",
            notes = {
                "Use mitigation/cooldowns for "..S(197418)..".",
                "Move the boss away from the green stuff on the floor left behind by "..S(197418).." and "..S(197821)..".",
                "When the boss reaches full energy, adds will spawn, pick them up asap.",
                "the Vanguard mob is using the same frontal as the champions, avoid it.",
                "Make sure your party runs to the sides when targeted by "..S(197687).." and focus down the Vanguard.",
            }
        },
        {
            npcID = 98949,
            encounterID = 1834, 
            bossName= "Smashspite the Hateful",
            notes = {
                "At full energy, use a big cd/external for "..S(198245)..".",
                "Position the boss away from "..S(198501).." on the floor, don't stand in it.",
                "When targeted by "..S(198446).." (green laser), move to the edge to keep the arena clear.",
                ""..S(198073).." is a knockback, be mindful of positioning.",
                "(Keystones) Dodge "..S(198079)..", a charge to the furthest player.",
            }
        },
        {
            npcID = 94923,
            encounterID = 1835, 
            bossName= "Lord Kur'talos Ravencrest",
            notes = {
                "Use mitigation/cooldowns for "..S(198635)..".",
                "Don't get hit by the rotating glaive.",
                "Sidestep out of the frontal called "..S(198820)..".",
                "Don't stand in the green clouds.",
                "Dodge the rotating purple stuff on the floor (huge), during "..S(199193).."."
            }
        },
    }
    
    -- The Arcway
    addonTable.data[1516] = {
        name = "The Arcway",
        {
            npcID = 98203,
            encounterID = 1827, 
            bossName= "Ivanyr",
            notes = {
                "Move the boss away from nearby purple pools of"..S(196824).."",
                "Interrupt "..S(196392).." ",
                "If not interrupted the boss gains stacks of "..S(196396)..", use your cooldowns and Active Mitigation abilities more aggressively, as damage will be higher.",
                "Dodge the purple orbs - "..S(220581).." - that emerge from the big crystal",
            }
        },
        {
            npcID = 98205,
            encounterID = 1825, 
            bossName= "Corstilax",
            notes = {
                "Run away from the before the explosion of "..S(196115).." ends, or use a strong damage-reduction cooldown to reduce its damage",
                "IF a party member is stunned (20s) by "..S(195791)..", click the crystal to free them.",
                "Avoid the flying bolts - "..S(196068).."",
                "Run into purple pools on the floor - "..S(195362).." - to gain a 15% haste buff, make sure to not go above 8 stacks to avoid being stunned.",
            }
        },
        {
            npcID = 98206,
            encounterID = 1828, 
            bossName= "General Xakal",
            notes = {
                "Move the boss away from nearby green runes - "..S(197776).." - and purple pools - "..S(220443).."",
                "Quickly pick up the giant bats when they land and focus kill them.",
                ""..S(197810).." is a knockback, take heed of your position.",
                "Dodge the purple swirlies - "..S(197788).." ",
                "Avoid the boss' frontal - "..S(212030).." ",
            }
        },
        {
            npcID = 98207,
            encounterID = 1826, 
            bossName= "Nal'tira",
            notes = {
                "Quickly taunt the adds when they spawn",
                "Use a cooldown if the adds targets you with "..S(211543).."",
                "When Nal'tira blinks back for the second half of "..S(199811)..", move to her side to avoid the damage",
                "Move Nal'tira away from nearby sparkling pools of "..S(200040).."",
            }
        },
        {
            npcID = 98208,
            encounterID = 1829, 
            bossName= "Advisor Vandros",
            notes = {
                "Move the boss away from nearby Chrono Shards to avoid damage",
                "Interrupt "..S(203176).." every 2 stacks",
                "If targeted by "..S(220871)..", move in a straight line so melee DPS can still find places to stand and attack the boss without taking damage",
                "At 50% HP, the boss will teleport you away - "..S(203882)..", you'll have 2 minutes to run back to the boss and continue the fight (see map below for paths)",
                "During "..S(203882)..", interrupt Timeless Wraiths' "..S(203957).." and focus kill them.",
            }
        },
    }
    
    -- The Emerald Nightmare
    addonTable.data[1520] = {
        name = "The Emerald Nightmare",
        {
            npcID = 100497,
            encounterID = 1841, 
            bossName= "Ursoc",
            notes = {
            }
        },
        {
            npcID = 102672,
            encounterID = 1853, 
            bossName= "Nythendra",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1854, 
            bossName= "Dragons of Nightmare",
            notes = {
            }
        },
        {
            npcID = 99192,
            encounterID = 1864, 
            bossName= "Xavius",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1873, 
            bossName= "Il'gynoth, Heart of Corruption",
            notes = {
            }
        },
        {
            npcID = 106087,
            encounterID = 1876, 
            bossName= "Elerethe Renferal",
            notes = {
            }
        },
        {
            npcID = 104636,
            encounterID = 1877, 
            bossName= "Cenarius",
            notes = {
            }
        },
    }
    
    -- The Nighthold
    addonTable.data[1530] = {
        name = "The Nighthold",
        {
            npcID = 102263,
            encounterID = 1849, 
            bossName= "Skorpyron",
            notes = {
            }
        },
        {
            npcID = 101002,
            encounterID = 1842, 
            bossName= "Krosus",
            notes = {
            }
        },
        {
            npcID = 104415,
            encounterID = 1865, 
            bossName= "Chronomatic Anomaly",
            notes = {
            }
        },
        {
            npcID = 104288,
            encounterID = 1867, 
            bossName= "Trilliax",
            notes = {
            }
        },
        {
            npcID = 103758,
            encounterID = 1863, 
            bossName= "Star Augur Etraeus",
            notes = {
            }
        },
        {
            npcID = 105503,
            encounterID = 1866, 
            bossName= "Gul'dan",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1872, 
            bossName= "Grand Magistrix Elisande",
            notes = {
            }
        },
        {
            npcID = 107699,
            encounterID = 1871, 
            bossName= "Spellblade Aluriel",
            notes = {
            }
        },
        {
            npcID = 104528,
            encounterID = 1886, 
            bossName= "High Botanist Tel'arn",
            notes = {
            }
        },
        {
            npcID = 103685,
            encounterID = 1862, 
            bossName= "Tichondrius",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1872, 
            bossName= "Grand Magistrix Elisande",
            notes = {
            }
        },
    }
    
    -- Assault on Violet Hold
    addonTable.data[1544] = {
        name = "Assault on Violet Hold",
        {
            npcID = 101950,
            encounterID = 1846, 
            bossName= "Mindflayer Kaahrj",
            notes = {
                "Drag the boss down the stairs to the main floor to allow your party to kill more adds and have more space to dodge the purple swirlies - "..S(197783).."",
                "Use Active Mitigation to reduce "..S(201148).." damage",
                "Interrupt "..S(201146).."",
                "Move the boss closer to nearby adds so your party can cleave",
            }
        },
        {
            npcID = 101976,
            encounterID = 1847, 
            bossName= "Millificent Manastorm",
            notes = {
                "Move away from nearby Bomb adds before the detonation timer expires.",
                "Move out of the telegraphed path of "..S(201369).."s",
                "at 50% HP the boss enrages and the chicken adds become indestructible.",
            }
        },
        {
            npcID = 101995,
            encounterID = 1848, 
            bossName= "Festerface",
            notes = {
                "Move the boss down at least one flight of stairs at the start of the fight, so players can maintain line of sight on the boss and the adds simultaneously",
                "Avoid it's frontal cone - "..S(201598).." - this will spawn adds",
                "focus kill adds, when they die they'll drop a pool of "..S(202266).."",
                "Drag the boss over the pools of "..S(202266).." so he will consume them and prevent them from respawning",
            }
        },
        {
            npcID = 101951,
            encounterID = 1845, 
            bossName= "Shivermaw",
            notes = {
                "Use a CD for each "..S(201379).."",
                "Avoid getting hit by the tail - "..S(201354).."",
                "Tank with your back to a wall to avoid the knockback from "..S(201355).."",
                "When Shivermaw flies up into the air, run onto the"..S(201957).."-covered second level of the dungeon to avoid the "..S(201960).."",
            }
        },
        {
            npcID = 102246,
            encounterID = 1852, 
            bossName= "Anub'esset",
            notes = {
                "Use Active Mitigation or a defensive cooldown for each "..S(202217).." it reduces the healing you receive.",
                "Tank'N'Spank",
            }
        },
        {
            npcID = 102387,
            encounterID = 1851, 
            bossName= "Sael'orn",
            notes = {
                "Face the boss away from the party during "..S(202414).."",
                "If targeted by "..S(202306)..", turn and face the add so it runs away",
                "Position the boss mindfully so that DPS can still damage her whilst facing/kiting the Phase Spiders",
            }
        },
        {
            npcID = 102431,
            encounterID = 1855, 
            bossName= "Blood-Princess Thal'ena",
            notes = {
                "Move Blood-Princess Thal'ena away from the blood pools - "..S(203364).." ",
                "If any players become hostile, use cooldowns to survive their damage, and assist in interrupting or crowd-controlling the vampire players",
                "Kill the boss before your entire party are vampires.",
            }
        },
        {
            npcID = 102446,
            encounterID = 1856, 
            bossName= "Fel Lord Betrug",
            notes = {
                "Face the boss away from the party during "..S(203641).."",
                "Use Active Mitigation or defensive CDs to mitigate the "..S(203641).." damage",
                "After "..S(202328)..", run to the top level of the prison and prepare to resume tanking once Betrug finishes the "..S(202361).." channel",
            }
        },
    }
    
    -- Court of Stars
    addonTable.data[1571] = {
        name = "Court of Stars",
        {
            npcID = 104215,
            encounterID = 1868, 
            bossName= "Patrol Captain Gerdo",
            notes = {
                "Before the fight starts, Alchemists and Rogues can poison the "..S(207815).." to skip the final 25% of the boss fight, the flask stands on a table in the ",
                "center of the boss arena.",
                "Avoid the double frontal "..S(207261)..".",
                "Pick up any adds summoned by "..S(207806).."s your party did not deactivate",
                "When hit with "..S(207278).." (3 stacks), jump three times to remove stacks asap.",
                "Avoid frontals from adds and focus kill them",
                "Dodge the line from "..S(219488)..".",
                "High mitigation uptime for 25% hp left boss enrage, if you failed to poison the "..S(207815).."",
            }
        },
        {
            npcID = 104217,
            encounterID = 1869, 
            bossName= "Talixae Flamewreath",
            notes = {
                "Move out of the graphic that spawns beneath your feet during "..S(211457)..".",
                "Move the boss away from the "..S(211457).." fire spouts after they spawn, so melee do not take excessive damage.",
                "Pick up the Infernal Imps that spawn from each "..S(211457).." pool and stun/CC them.",
                "Interrupt "..S(208165).." when possible.",
                "Use defensive cooldowns at high stack counts of "..S(207906)..".",
            }
        },
        {
            npcID = 101831,
            encounterID = 1870, 
            bossName= "Advisor Melandrus",
            notes = {
                "Move the boss away from nearby Images of Advisor Melandrus and "..S(224333).." spawns",
                "Face the boss away from the party, and avoid "..S(209628).."",
                "Avoid standing in front of any version of the boss to avoid "..S(209628).." damage.",
                "Move away from  "..S(224333).." to avoid being stunned",
                "Use strong cooldowns if you must take a "..S(209628).." or during heavy "..S(209676).." damage",
            }
        },
    }
    
    -- Trial of Valor
    addonTable.data[1648] = {
        name = "Trial of Valor",
        {
            npcID = 95676,
            encounterID = 1958, 
            bossName= "Odyn",
            notes = {
                "Try to group the Storm add and the boss for cleave damage, interrupt "..S(198750)..", this stacks!",
                "When marked with a "..S(197961)..", match the icon on your head to the rune on the floor.",
                "Move the boss away from "..S(198072).." spawns ",
                "Boss will shatter the Spear, orbs will spawn, dodge them.",
                "Use a powerful cooldown to survive the giant circle - "..S(198263).." - or run out of it",
            }
        },
        {
            npcID = 96759,
            encounterID = 2008, 
            bossName= "Helya",
            notes = {
                "Place a skull marker on and focus kill the Destructor Tentacles, then kill the GRASPING TENTACLES.",
                "Stay away from holes in the floor and avoid blue swirlies.",
                "While fighting Helya, point her towards one side of the boat so melee DPS can attack from the other side",
                "Interrupt "..S(198495).." when possible",
                "Avoid her frontal - "..S(227233).." by watching for Helya's facing and moving to a safe space",
                "Always stay in melee range",
            }
        },
        {
            npcID = 114344,
            encounterID = 1962, 
            bossName= "Guarm",
            notes = {
            }
        },
    }
    
    -- Return to Karazhan
    addonTable.data[1651] = {
        name = "Return to Karazhan",
        {
            npcID = 114350,
            encounterID = 1965, 
            bossName= "Shade of Medivh",
            notes = {
                "Tank'n'Spank",
            }
        },
        {
            npcID = 115831,
            encounterID = 1959, 
            bossName= "Mana Devourer",
            notes = {
                "Tank'n'Spank",
            }
        },
        {
            npcID = 999999,
            encounterID = 1957, 
            bossName= "Opera Hall: Wikket",
            notes = {
            }
        },
        {
            npcID = 16457,
            encounterID = 1954, 
            bossName= "Maiden of Virtue",
            notes = {
                "Tank'n'Spank",
            }
        },
        {
            npcID = 999999,
            encounterID = 1957, 
            bossName= "Opera Hall: Westfall Story",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1957, 
            bossName= "Opera Hall: Beautiful Beast",
            notes = {
            }
        },
        {
            npcID = 16152,
            encounterID = 1960, 
            bossName= "Attumen the Huntsman",
            notes = {
            }
        },
        {
            npcID = 15691,
            encounterID = 1964, 
            bossName= "The Curator",
            notes = {
                "Tank'n'Spank",
            }
        },
        {
            npcID = 114312,
            encounterID = 1961, 
            bossName= "Moroes",
            notes = {
                "Tank'n'Spank",
            }
        },
        {
            npcID = 114790,
            encounterID = 2017, 
            bossName= "Viz'aduum the Watcher",
            notes = {
                "Tank'n'Spank",
            }
        },
    }
    
    -- Tomb of Sargeras
    addonTable.data[1676] = {
        name = "Tomb of Sargeras",
        {
            npcID = 116407,
            encounterID = 2036, 
            bossName= "Harjatan",
            notes = {
            }
        },
        {
            npcID = 115767,
            encounterID = 2037, 
            bossName= "Mistress Sassz'ine",
            notes = {
            }
        },
        {
            npcID = 115844,
            encounterID = 2032, 
            bossName= "Goroth",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2048, 
            bossName= "Demonic Inquisition",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2038, 
            bossName= "Fallen Avatar",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2054, 
            bossName= "The Desolate Host",
            notes = {
            }
        },
        {
            npcID = 118289,
            encounterID = 2052, 
            bossName= "Maiden of Vigilance",
            notes = {
            }
        },
        {
            npcID = 25315,
            encounterID = 2051, 
            bossName= "Kil'jaeden",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2050, 
            bossName= "Sisters of the Moon",
            notes = {
            }
        },
    }
    
    -- Cathedral of Eternal Night
    addonTable.data[1677] = {
        name = "Cathedral of Eternal Night",
        {
            npcID = 120793,
            encounterID = 2053, 
            bossName= "Mephistroth",
            notes = {
                "Tank'N'Spank",
            }
        },
        {
            npcID = 119542,
            encounterID = 2039, 
            bossName= "Domatrax",
            notes = {
                "Touch the Aegis of Agrammar to activate the boss",
                "Tank'N'Spank",
            }
        },
        {
            npcID = 117193,
            encounterID = 2055, 
            bossName= "Agronox",
            notes = {
                "Tank'N'Spank",
            }
        },
        {
            npcID = 117194,
            encounterID = 2057, 
            bossName= "Thrashbite the Scornful",
            notes = {
                "Kill Gazerax to activate the boss (one eyed demon)",
                "Tank'N'Spank"
            }
        },
    }
    
    -- Antorus, the Burning Throne
    addonTable.data[1712] = {
        name = "Antorus, the Burning Throne",
        {
            npcID = 125075,
            encounterID = 2069, 
            bossName= "Varimathras",
            notes = {
            }
        },
        {
            npcID = 121975,
            encounterID = 2063, 
            bossName= "Aggramar",
            notes = {
            }
        },
        {
            npcID = 124393,
            encounterID = 2064, 
            bossName= "Portal Keeper Hasabel",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2073, 
            bossName= "The Coven of Shivarra",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2074, 
            bossName= "Felhounds of Sargeras",
            notes = {
            }
        },
        {
            npcID = 123371,
            encounterID = 2076, 
            bossName= "Garothi Worldbreaker",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2070, 
            bossName= "Antoran High Command",
            notes = {
            }
        },
        {
            npcID = 125050,
            encounterID = 2088, 
            bossName= "Kin'garoth",
            notes = {
            }
        },
        {
            npcID = 125055,
            encounterID = 2082, 
            bossName= "Imonar the Soulhunter",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2075, 
            bossName= "Eonar the Life-Binder",
            notes = {
            }
        },
        {
            npcID = 124828,
            encounterID = 2092, 
            bossName= "Argus the Unmaker",
            notes = {
            }
        },
    }
    
    -- Seat of the Triumvirate
    addonTable.data[1753] = {
        name = "Seat of the Triumvirate",
        {
            npcID = 122313,
            encounterID = 2065, 
            bossName= "Zuraal the Ascended",
            notes = {
                "Kill 4 adds - Shadowguard Subjugators - to activate the boss",
                "Tank'N'Spank",
            }
        },
        {
            npcID = 122316,
            encounterID = 2066, 
            bossName= "Saprish",
            notes = {
                "Tank'N'Spank",
            }
        },
        {
            npcID = 124309,
            encounterID = 2067, 
            bossName= "Viceroy Nezhar",
            notes = {
                "Tank'N'Spank",
            }
        },
        {
            npcID = 122314,
            encounterID = 2068, 
            bossName= "L'ura",
            notes = {
                "Tank'N'Spank",
            }
        },
    }
    
end