local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:BfAInitializeData()
     
    -- Azeroth
    addonTable.data[1] = {
        name = "Azeroth",
        {
            npcID = 160970,
            encounterID = 2353, 
            bossName= "Vuk'laz the Earthbreaker",
            notes = {
            }
        },
    }
    
    -- Azeroth
    addonTable.data[870] = {
        name = "Azeroth",
        {
            npcID = 154638,
            encounterID = 2351, 
            bossName= "Grand Empress Shek'zara",
            notes = {
            }
        },
    }
    
    -- Temple of the Jade Serpent
    addonTable.data[960] = {
        name = "Temple of the Jade Serpent",
        {
            npcID = 56439,
            encounterID = 1439, 
            bossName= "Sha of Doubt",
            notes = {
            }
        },
        {
            npcID = 56732,
            encounterID = 1416, 
            bossName= "Liu Flameheart",
            notes = {
            }
        },
        {
            npcID = 56843,
            encounterID = 1417, 
            bossName= "Lorewalker Stonestep",
            notes = {
            }
        },
        {
            npcID = 56448,
            encounterID = 1418, 
            bossName= "Wise Mari",
            notes = {
            }
        },
    }
    
    -- Mogu'shan Palace
    addonTable.data[994] = {
        name = "Mogu'shan Palace",
        {
            npcID = 61243,
            encounterID = 2129, 
            bossName= "Gekkan",
            notes = {
            }
        },
        {
            npcID = 61398,
            encounterID = 1441, 
            bossName= "Xin the Weaponmaster",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1442, 
            bossName= "Trial of the King",
            notes = {
            }
        },
    }
    
    -- The MOTHERLODE!!
    addonTable.data[1594] = {
        name = "The MOTHERLODE!!",
        {
            npcID = 139904,
            encounterID = 2105, 
            bossName= "Coin-Operated Crowd Pummeler",
            notes = {
                "Skippable",
                "Avoid "..S(257337).." (raises arm + blue lightning)",
                "Party members should kick the balls (bombs) at boss before they detonate.",
                ""..S(262347).." is unavoidable damage that'll knock you back."
            }
        },
        {
            npcID = 129227,
            encounterID = 2106, 
            bossName= "Azerokk",
            notes = {
                "Skippable",
                "Party members fixated by the adds should kite them around & dps need to focus kill them.",
                "Before engaging the boss you can CC two adds with totems to the left.",
                ""..S(271698).." will free crowd controlled adds and buff them. Skull marker on it and focus kill it."
            }
        },
        {
            npcID = 139273,
            encounterID = 2107, 
            bossName= "Rixxa Fluxflame",
            notes = {
                "Skippable",
                "Avoid bad stuff on the floor.",
                ""..S(260669).." pushes party members away, they can use it to remove the bad stuff on the floor.",
                ""..S(259856).." should be dispelled."
            }
        },
        {
            npcID = 131227,
            encounterID = 2108, 
            bossName= "Mogul Razdunk",
            notes = {
                "Avoid "..S(260280)..". He will rotate, shooting his gun. ",
                "Party members targeted by "..S(260838).." should kite it away from the group.",
                "When the boss flies upwards, grab the two adds and stack near the rocket shells, you need to bait "..S(260202).." on them. Move to the next shell once one is destroyed.",
                "Avoid red swirlies.",
            }
        },
    }
    
    -- Azeroth
    addonTable.data[1718] = {
        name = "Azeroth",
        {
            npcID = 999999,
            encounterID = 2317, 
            bossName= "Ulmath, the Soulbinder",
            notes = {
            }
        },
        {
            npcID = 152671,
            encounterID = 2318, 
            bossName= "Wekemara",
            notes = {
            }
        },
    }
    
    -- Freehold
    addonTable.data[1754] = {
        name = "Freehold",
        {
            npcID = 999999,
            encounterID = 2094, 
            bossName= "Council o' Captains",
            notes = {
                "The council consists of three captains, by completing a minigame on (A), you can make one of them an ally. this is random every week.",
                "Avoid a whole lot of things.",
                "Free players trapped in a barrel.",
                "Dodge Raoul's "..S(256589).." (brown swirly).",
                "Avoid frontal cone "..S(258381)..".",
            }
        },
        {
            npcID = 999999,
            encounterID = 2095, 
            bossName= "Ring of Booty",
            notes = {
                "First there is a very long roleplay sequence, followed by you and your party attempting to capture a greased up pig.",
                "Next a giant turtle enters the arena, tank and spank and avoid the shells.",
                "Finally the boss, he will throw his Sharks around, avoid them.",
                "When he casts "..S(256405).." move away from the boss.",
            }
        },
        {
            npcID = 129440,
            encounterID = 2096, 
            bossName= "Harlan Sweete",
            notes = {
                "Move out of fire on the ground (fire zones spawned by players.)",
                "Focus kill adds, they will explode when they reach a player.",
                "Avoid "..S(257454).." (spinning blades that aren't always easy to avoid.",
            }
        },
        {
            npcID = 129732,
            encounterID = 2093, 
            bossName= "Skycap'n Kragg",
            notes = {
                "Avoid bird droppings (green puddles)",
                "Avoid the bird's charge. (brown swirly)",
                "Interrupt "..S(256060).." to stop healing, afterwards you can drink it yourself for healing.",
                "Avoid the frontal cone "..S(256106)..".",
            }
        },
    }
    
    -- Kings' Rest
    addonTable.data[1762] = {
        name = "Kings' Rest",
        {
            npcID = 135322,
            encounterID = 2139, 
            bossName= "The Golden Serpent",
            notes = {
                "In the back of the boss room (where all ghosts are facing) is a Serpentine Seal you must use to start the boss fight.",
                "Kill all adds that spawn, afterwards the boss will emerge.",
                "Move out of white circle from "..S(265781).."",
                "Don't stand in golden zones from "..S(265914).."",
            }
        },
        {
            npcID = 999999,
            encounterID = 2140, 
            bossName= "The Council of Tribes",
            notes = {
                "Interrupt "..S(267273).." from Zanazal",
                "Dodge the "..S(266206).." from Kula",
                "Kill the totems that spawn with Kula as they have annoying effects like knockbacks and interrupts"
            }
        },
        {
            npcID = 134993,
            encounterID = 2142, 
            bossName= "Mchimba the Embalmer",
            notes = {
                "Clear the area of all adds before engaging the boss",
                "move out of red swirlies from "..S(267639).."",
                "don't stand in the fire zones caused by this.",
            }
        },
        {
            npcID = 136160,
            encounterID = 2143, 
            bossName= "Dazar, The First King",
            notes = {
                "Dodge the Tornadoes from "..S(268403).."",
                "Focus kill Reban (a raptor) when it spawns",
                "Focus kill T'Zala (boss raptor mount) when he summons her",
                "Avoid "..S(268796).." (brown swirlies on floor)"
            }
        },
    }
    
    -- Atal'Dazar
    addonTable.data[1763] = {
        name = "Atal'Dazar",
        {
            npcID = 129412,
            encounterID = 2087, 
            bossName= "Yazma",
            notes = {
                "Tank the boss where it spawns and use mitigation/cooldown on "..S(249919)..".",
                "Interrupt "..S(250096)..".",
                "Don't get hit by spiders and don't stand in purple void zones.",
                "Your party members will deal with a mechanic which drops their soul, their soul cannot reach the boss."
            }
        },
        {
            npcID = 129399,
            encounterID = 2085, 
            bossName= "Vol'kaal",
            notes = {
                "Taunt the boss and move him to one of the totems, these need to be killed first.",
                "Don't get hit by "..S(250258)..". (Green swirlie).",
                "Interrupt "..S(250368)..".",
                "When all totems are dead, drag the boss to the side of the arena, keep moving out of toxic zones on the floor while moving slowly along the edges of the room. They won't vanish, so this becomes a weird game of 'Snake' if it takes too long.",
            }
        },
        {
            npcID = 129614,
            encounterID = 2084, 
            bossName= "Priestess Alun'za",
            notes = {
                "Tank her at on of the sides of her throne. Use mitigation/cooldown on "..S(255579)..".",
                "The boss will spawn red blood zones on the floor, move the boss near one, when she casts "..S(255577)..", step into a blood pool to absorb it, when you do you won't heal the boss, you will see a red beam between you and the boss.",
                "Players that didn't soak a blood pool, will have a golden beam between them and the boss and will heal her back up.",
            }
        },
        {
            npcID = 143577,
            encounterID = 2086, 
            bossName= "Rezan",
            notes = {
                "Tank the boss on (B), when the boss casts "..S(255371)..", hide on ether side of the pillar.",
                ""..S(255434).." use mitigation/cooldown for this.",
                "Don't run over the piles of bones or undead dinosaurs will spawn. They need to be tanked.",
                "When it casts "..S(257407)..", surprise, that player needs to run away (through the water as to not pull adds) or they will be eaten. Switch to another pillar (B) if one is closer, you will never be chased as tank.",
            }
        },
    }
    
    -- Tol Dagor
    addonTable.data[1771] = {
        name = "Tol Dagor",
        {
            npcID = 127503,
            encounterID = 2104, 
            bossName= "Overseer Korgus",
            notes = {
                "Spread out when you have a red circle on you - "..S(256101)..".",
                "Avoid the black cones that appear on the floor during "..S(256083)..".",
                "If your group keeps wiping, make sure to remind them to soak "..S(256039).." if they don't have a debuff.",
            }
        },
        {
            npcID = 134927,
            encounterID = 2101, 
            bossName= "The Sand Queen",
            notes = {
                "Avoid the sand mounds - "..S(257092)..".",
                "Move away from the player targeted by "..S(257608)..".",
                "Resist the wind during "..S(257495)..", careful not to hit sand mounds.",
                "at 30% HP, the boss enrages, have cooldowns and mitigation up.",
            }
        },
        {
            npcID = 127484,
            encounterID = 2102, 
            bossName= "Jes Howlis",
            notes = {
                "Interrupt "..S(257791)..".",
                "When the boss casts "..S(257785)..", hide behind a pillar.",
                "at 50% HP, the boss will run around the room opening cells along the way, pick up these adds and follow the boss around. Tank all adds on top of the boss.",
                "Interrupt "..S(257827)..".",
            }
        },
        {
            npcID = 130646,
            encounterID = 2103, 
            bossName= "Knight Captain Valyri",
            notes = {
                "Avoid the frontal cone "..S(256955)..".",
                "The barrels in the room will explode (giant rings) and you'll need to find the safe spot, or players can move the barrels to one of the corners so you have control of where the safe spot will be.",
            }
        },
    }
    
    -- Siege of Boralus
    addonTable.data[1822] = {
        name = "Siege of Boralus",
        {
            npcID = 144160,
            encounterID = 2098, 
            bossName= "Chopper Redhook",
            notes = {
                "Depending on your DPS you can either focus kill or ignore the adds",
                "The boss will chase you relentlessly with "..S(260954).." / "..S(257459)..", every time he is in your melee range he will do a knockback.",
                "Avoid the impact zones from "..S(257585).." and move away from the "..S(273716).." bombs they leave behind."
            }
        },
        {
            npcID = 144158,
            encounterID = 2097, 
            bossName= "Sergeant Bainbridge",
            notes = {
                "Depending on your DPS you can either focus kill or ignore the adds",
                "The boss will chase you relentlessly with "..S(260954).." / "..S(257459)..", every time he is in your melee range he will do a knockback.",
                "Avoid the impact zones from "..S(257585).." and move away from the "..S(273716).." bombs they leave behind."
            }
        },
        {
            npcID = 130836,
            encounterID = 2099, 
            bossName= "Hadal Darkfathom",
            notes = {
                "Kill all",
                "trash around the boss arena, careful not to pull the boss before you're ready.",
                "Don't stand in ice patches from "..S(257883).."",
                "Face the boss away from the giant statue, you don't want the area around it tainted by ice from the "..S(261565).." beam",
                "Hide behind statue during "..S(276068).."",
            }
        },
        {
            npcID = 128652,
            encounterID = 2100, 
            bossName= "Viq'Goth",
            notes = {
                "Focus kill DEMOLISHING TERRORS first",
                "Next, kill the GRIPPING TERRORS to free the KUL TIRAN ENGINEER, he will repair the cannon.",
                "Once the cannon is repaired, fire it on the boss so he loses 1/3 of his HP, quickly leave the cannon, the boss will destroy it and move to the next platform.",
                "Repeat two more times and the boss is defeated",
            }
        },
        {
            npcID = 129208,
            encounterID = 2109, 
            bossName= "Dread Captain Lockwood",
            notes = {
                "This boss has a very annoying passive called "..S(272471)..". She will constantly jump away from you.",
                "When the boss reaches full energy she will retreat to her ship and adds will join the fight, focus kill the ASHVALE CANNONEERS, upon death they will drop their cannon, you can use this cannon (extra action button) to shoot the boss and bring her back down.",
                "Avoid the swirlies from "..S(268443).."",
            }
        },
    }
    
    -- The Underrot
    addonTable.data[1841] = {
        name = "The Underrot",
        {
            npcID = 131383,
            encounterID = 2112, 
            bossName= "Sporecaller Zancha",
            notes = {
                "Aim "..S(272457).." (frontal cone) at the mushrooms to clear them.",
                "Your party should place "..S(259718).." (brown circle) on the mushrooms to clear them.",
                "The less mushrooms remain during "..S(259732).." the less damage will go out.",
                "Any remaining Mushrooms should be cleared by you.",
            }
        },
        {
            npcID = 131817,
            encounterID = 2118, 
            bossName= "Cragmaw the Infested",
            notes = {
                "Clear the entire arena of trash packs.",
                "Run over every larvae the boss spawns, everyone needs to help. (there will be a lot of them), if one matures, focus kill it asap.",
                "Aim "..S(260793).." (frontal cone) away from the party/",
                "Avoid it's charge.",
            }
        },
        {
            npcID = 131318,
            encounterID = 2111, 
            bossName= "Elder Leaxa",
            notes = {
                "Don't stand in green toxic zones on the floor.",
                "When the ad spawns move them together for cleave.",
                "Interrupt "..S(260879).." as much as you can.",
            }
        },
        {
            npcID = 133007,
            encounterID = 2123, 
            bossName= "Unbound Abomination",
            notes = {
                "Avoid grey zones on the floor spawned by "..S(269843)..".",
                "Party members with "..S(269310).." (golden circle) should stack on melee to clear the debuff on all players.",
                "On full energy the boss will spawn adds, killing adds kills the boss. focus them down.",
            }
        },
    }
    
    -- Uldir
    addonTable.data[1861] = {
        name = "Uldir",
        {
            npcID = 133298,
            encounterID = 2128, 
            bossName= "Fetid Devourer",
            notes = {
            }
        },
        {
            npcID = 163405,
            encounterID = 2122, 
            bossName= "G'huun",
            notes = {
            }
        },
        {
            npcID = 134442,
            encounterID = 2134, 
            bossName= "Vectis",
            notes = {
            }
        },
        {
            npcID = 140853,
            encounterID = 2141, 
            bossName= "MOTHER",
            notes = {
            }
        },
        {
            npcID = 137119,
            encounterID = 2144, 
            bossName= "Taloc",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2136, 
            bossName= "Zek'voz, Herald of N'Zoth",
            notes = {
            }
        },
        {
            npcID = 136383,
            encounterID = 2135, 
            bossName= "Mythrax the Unraveler",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2145, 
            bossName= "Zul, Reborn",
            notes = {
            }
        },
    }
    
    -- Waycrest Manor
    addonTable.data[1862] = {
        name = "Waycrest Manor",
        {
            npcID = 131824,
            encounterID = 2113, 
            bossName= "Heartsbane Triad",
            notes = {
                "You only need to tank the enlarged boss - "..S(260805)..", the others will be near immune to damage. Focus kill it.",
                "Stay put when you have a purple circle around you so your party can avoid damage.",
                "Interrupt the sisters "..S(260699).." casts.",
            }
        },
        {
            npcID = 131667,
            encounterID = 2114, 
            bossName= "Soulbound Goliath",
            notes = {
                "Have mitigation up/cooldown for "..S(260508).."",
                "When a party member is covered in thorns, move the boss over there for cleave and free them, unless...",
                "The boss casts "..S(260512)..", in that case you have to move the boss in fire to remove his damage buff.",
            }
        },
        {
            npcID = 131863,
            encounterID = 2115, 
            bossName= "Raal the Gluttonous",
            notes = {
                "Make sure you are in melee range to avoid "..S(264734).."",
                "Avoid it's frontal cone - "..S(264923)..".",
                "Avoid green void zones on the floor.",
                "Help your party to focus kill the servants from reaching the boss.",
            }
        },
        {
            npcID = 131527,
            encounterID = 2116, 
            bossName= "Lord and Lady Waycrest",
            notes = {
                "This boss needs to be pulled from range.",
                "Focus kill Lord Waycrest, make sure you have mitigation up for "..S(261438)..".",
                "Don't stand in green circles.",
                "Dodge purple swirlies.",
                "Every time Lord Waycrest reaches 30% hp, Lady Waycrest will heal him up. This happens three times before Lady Waycrest joins the fight, make sure to taunt her."
            }
        },
        {
            npcID = 144324,
            encounterID = 2117, 
            bossName= "Gorak Tul",
            notes = {
                "Interrupt "..S(266225)..".",
                "The adds need to be tanked (spawn every 20s), pull them on top of the boss for cleave.",
                "Your party can permanently kill adds by using the vials of "..S(266198).." (they spawn during the fight) on the add corpses"
            }
        },
    }
    
    -- Shrine of the Storm
    addonTable.data[1864] = {
        name = "Shrine of the Storm",
        {
            npcID = 134056,
            encounterID = 2130, 
            bossName= "Aqu'sirr",
            notes = {
                "Skippable",
                "Avoid' it's charge ability - "..S(264101)..".",
                "Always be in melee range to avoid group damage - "..S(265001).."",
                "Resist the pushback from "..S(264166).."",
                "At 50%, the boss will split into 3 adds, focus kill them."
            }
        },
        {
            npcID = 999999,
            encounterID = 2131, 
            bossName= "Tidesage Council",
            notes = {
                "Skippable",
                "Face Brother Ironhull away from the group for "..S(267899).."",
                "Move both bosses out of "..S(267905).." (green ring)",
                "Interrupt "..S(267818)..".",
                "Move both bosses out of"..S(267891).." (grey ring)"
            }
        },
        {
            npcID = 139737,
            encounterID = 2132, 
            bossName= "Lord Stormsong",
            notes = {
                "Avoid the void balls, they will stun you when they explode. (purple balls)",
                "Mind controlled players should run over these void balls to clear them. Once all balls are gone, focus kill them.",
                "Interrupt "..S(268347).."",
            }
        },
        {
            npcID = 134069,
            encounterID = 2133, 
            bossName= "Vol'zith the Whisperer",
            notes = {
                "Tank the boss on the edge of the arena to optimally place void zones.",
                "Avoid said void zones (huge purple circles) on the floor. "..S(269399)..".",
                "Avoid the spawned tentacles - "..S(267385).."",
                "You and the healer will be pulled down - "..S(267360)..", where you'll have to kill an add, it hits very hard but is slow, so kite when you have low hp. Once your add is killed you'll rejoin the party and have to kill 1-2 more adds.",
                "When you reach the surface again, interrupt the boss and the cycle repeats.",
            }
        },
    }
    
    -- Temple of Sethraliss
    addonTable.data[1877] = {
        name = "Temple of Sethraliss",
        {
            npcID = 133379,
            encounterID = 2124, 
            bossName= "Adderis and Aspix",
            notes = {
                "Focus the boss that isn't protected by "..S(273411)..". (nameplate), this shield reflects damage to attackers.",
                "Party members with a circle around them - "..S(263371)..", should move away from the group.",
                "Avoid the frontal tornados.",
                "Interrupt "..S(263318).."",
                "Spread out when Adderis reaches 100 energy to avoid damage from "..S(263424).."."
            }
        },
        {
            npcID = 133384,
            encounterID = 2125, 
            bossName= "Merektha",
            notes = {
                "When the boss summons adds, focus kill them. When the adds spawn dust, move them out of it or they become immune to damage.",
                "Turn your back to the boss when it casts "..S(263914).." or you will be disoriented and vulnerable.",
                "Avoid the Frontal targeted at a random player - "..S(263912).."",
                "Avoid toxic zones around the arena.",
                "When the boss moves below the floor, avoid it's path.",
            }
        },
        {
            npcID = 133389,
            encounterID = 2126, 
            bossName= "Galvazzt",
            notes = {
                "The boss will spawn big pillars, you need to stand in between the pillar and the boss to prevent it being buffed. As tank you can soak a lot, but your party members must be somewhat careful",
                ", we recommend a max of 5 stacks.",
                "When the boss reaches full energy ( because your party didn't soak well), he will release a big AOE burst to everyone. "..S(266512).."",
            }
        },
        {
            npcID = 133392,
            encounterID = 2127, 
            bossName= "Avatar of Sethraliss",
            notes = {
                "In this fight your healer needs to heal the boss, it's your job to protect your healer.",
                "Gather adds and kill them. Make sure your healer is not touched by toads.",
                "Heart Guardians will spawn during the fight, stack them for cleave and focus kill them because of the nasty debuff - "..S(268007).."",
            }
        },
    }
    
    -- Battle of Dazar'alor
    addonTable.data[2070] = {
        name = "Battle of Dazar'alor",
        {
            npcID = 999999,
            encounterID = 2285, 
            bossName= "Jadefire Masters",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2263, 
            bossName= "Grong, the Jungle Lord",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2268, 
            bossName= "Conclave of the Chosen",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2265, 
            bossName= "Champion of the Light",
            notes = {
            }
        },
        {
            npcID = 144796,
            encounterID = 2276, 
            bossName= "High Tinker Mekkatorque",
            notes = {
            }
        },
        {
            npcID = 145616,
            encounterID = 2272, 
            bossName= "King Rastakhan",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2280, 
            bossName= "Stormwall Blockade",
            notes = {
            }
        },
        {
            npcID = 144638,
            encounterID = 2284, 
            bossName= "Grong, the Revenant",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2266, 
            bossName= "Jadefire Masters",
            notes = {
            }
        },
        {
            npcID = 145261,
            encounterID = 2271, 
            bossName= "Opulence",
            notes = {
            }
        },
        {
            npcID = 165396,
            encounterID = 2281, 
            bossName= "Lady Jaina Proudmoore",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2265, 
            bossName= "Champion of the Light",
            notes = {
            }
        },
    }
    
    -- Crucible of Storms
    addonTable.data[2096] = {
        name = "Crucible of Storms",
        {
            npcID = 999999,
            encounterID = 2269, 
            bossName= "The Restless Cabal",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2273, 
            bossName= "Uu'nat, Harbinger of the Void",
            notes = {
            }
        },
    }
    
    -- Operation: Mechagon
    addonTable.data[2097] = {
        name = "Operation: Mechagon",
        {
            npcID = 152619,
            encounterID = 2260, 
            bossName= "King Mechagon",
            notes = {
                "P1 - avoid "..S(291856).." (blue swirlies) to avoid the "..S(291915).."s, they knock you back. ",
                "P1 - "..S(296331).." (electric beam) can hit hard depending on your class, easily avoided.",
                "P2 - Keep avoiding "..S(291856).." (blue swirlies)",
                "P2 - Resist backdraft from "..S(283534).." so you can damage the boss",
                "P3 - Finish him.",
            }
        },
        {
            npcID = 999999,
            encounterID = 2257, 
            bossName= "Tussle Tonks",
            notes = {
                "The arena is filled with black lines, never stand on these lines, "..S(282945).."s will pop out.",
                "Focus kill GNOMERCY as quick as you can",
                "Once the tank boss is down, drag PUMMELER to one of the giant hammers, make sure he gets hit by three hammers to remove 3 stacks of "..S(282801)..", each hammer can only be used once.",
                "When the stacks are removed you can just nuke the boss until he's dead.",
            }
        },
        {
            npcID = 144246,
            encounterID = 2258, 
            bossName= "K.U.-J.0.",
            notes = {
                "Move away from the giant Junk Cubes so you don't destroy them when the boss uses "..S(291973).."",
                "Hide behind the Junk Cubes during "..S(291946).."",
                "You might be able just tank and spank the boss ignoring everything."
            }
        },
        {
            npcID = 144248,
            encounterID = 2259, 
            bossName= "Machinist's Garden",
            notes = {
                "Avoid everything, there's a lot going on, especially "..S(285460).." (blue swirly) or you will be disoriented for 9 seconds",
                "kill plants (hidden turrets) when they spawn",
                "This boss won't give you too much trouble.",
            }
        },
        {
            npcID = 155157,
            encounterID = 2291, 
            bossName= "HK-8 Aerial Oppression Unit",
            notes = {
                "Focus kill the TANK BUSTER while avoiding as much as you can, there's a lot going on (save your offensive cooldowns for later)",
                "As soon as the TANK BUSTER is defeated one of the towers will activate and you must hack it",
                "To hack the tower move through the gauntlet and dodge various traps, on top you can click on the tower to hack it, this takes 50 seconds of channeling if you're alone (you need to dodge stuff while you channel so it will take a few seconds longer)",
                "when the tower is hacked you must quickly run to the arena where the boss is now going "..S(296080)..", pop cooldowns and go nuts on the boss, he takes triple damage for 30 seconds.",
                "repeat x2 or x3 depending on your DPS output.",
            }
        },
        {
            npcID = 150159,
            encounterID = 2290, 
            bossName= "King Gobbamak",
            notes = {
                "Tank the boss on top of the STOLEN SCRAPBOT (deactivated robot).",
                "When "..S(297254).." hits the robot it will activate and kill off the hordes of SCRAPBONE GRUNTERS",
                "Focus kill the boss, AOE and the robot will clear the adds.",
            }
        },
        {
            npcID = 150222,
            encounterID = 2292, 
            bossName= "Gunker",
            notes = {
                "kill 3 TOXIC MONSTROSITIES adds to free 3 SQUIRT BOTSs, they will activate the boss.",
                "SQUIRT BOTSs have "..S(297904).." aura's around them (blue circles) stand in those while you damage the boss and you will not get hit by any mechanics",
                "if this robot gets "..S(298124).." (slime husk), free it instantly",
                "if you are "..S(298124).." its a wipe",
            }
        },
        {
            npcID = 155407,
            encounterID = 2312, 
            bossName= "Trixie & Naeno",
            notes = {
                "Focus kill Trixie while avoiding the "..S(298602).." (you can't hit the boss in them)",
                "Meanwhile avoid getting hit by the other boss, he wants to make you "..S(298946).."",
                "When Trixie dies, focus Naeno, he should go down easy enough",
            }
        },
    }
    
    -- The Eternal Palace
    addonTable.data[2164] = {
        name = "The Eternal Palace",
        {
            npcID = 154986,
            encounterID = 2289, 
            bossName= "Blackwater Behemoth",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2293, 
            bossName= "Za'qul, Harbinger of Ny'alotha",
            notes = {
            }
        },
        {
            npcID = 152128,
            encounterID = 2303, 
            bossName= "Orgozoa",
            notes = {
            }
        },
        {
            npcID = 155144,
            encounterID = 2298, 
            bossName= "Abyssal Commander Sivara",
            notes = {
            }
        },
        {
            npcID = 152364,
            encounterID = 2305, 
            bossName= "Radiance of Azshara",
            notes = {
            }
        },
        {
            npcID = 153142,
            encounterID = 2304, 
            bossName= "Lady Ashvane",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2311, 
            bossName= "The Queen's Court",
            notes = {
            }
        },
        {
            npcID = 54853,
            encounterID = 2299, 
            bossName= "Queen Azshara",
            notes = {
            }
        },
    }
    
    -- Ny'alotha, the Waking City
    addonTable.data[2217] = {
        name = "Ny'alotha, the Waking City",
        {
            npcID = 999999,
            encounterID = 2331, 
            bossName= "Ra-den the Despoiled",
            notes = {
            }
        },
        {
            npcID = 156523,
            encounterID = 2327, 
            bossName= "Maut",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2337, 
            bossName= "Carapace of N'Zoth",
            notes = {
            }
        },
        {
            npcID = 157231,
            encounterID = 2335, 
            bossName= "Shad'har the Insatiable",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2329, 
            bossName= "Wrathion, the Black Emperor",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2334, 
            bossName= "The Prophet Skitra",
            notes = {
            }
        },
        {
            npcID = 157354,
            encounterID = 2336, 
            bossName= "Vexiona",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2333, 
            bossName= "The Hivemind",
            notes = {
            }
        },
        {
            npcID = 157602,
            encounterID = 2343, 
            bossName= "Drest'agath",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 2345, 
            bossName= "Il'gynoth, Corruption Reborn",
            notes = {
            }
        },
        {
            npcID = 158041,
            encounterID = 2344, 
            bossName= "N'Zoth the Corruptor",
            notes = {
            }
        },
        {
            npcID = 156575,
            encounterID = 2328, 
            bossName= "Dark Inquisitor Xanesh",
            notes = {
            }
        },
    }
    
end