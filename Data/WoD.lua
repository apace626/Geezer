local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:WoDInitializeData()
     
    -- Bloodmaul Slag Mines
    addonTable.data[1175] = {
        name = "Bloodmaul Slag Mines",
        {
            npcID = 75786,
            encounterID = 1652, 
            bossName= "Roltall",
            notes = {
                "Make sure you have aggro at all times while you resist the wind pushing you back.",
                "Avoid being hit by the giant boulders (dodge the red swirlies) - "..S(153247)..".",
                "[TW] - Careful! the boulders return along the same path, memorize the pattern.",
            }
        },
        {
            npcID = 74787,
            encounterID = 1653, 
            bossName= "Slave Watcher Crushto",
            notes = {
            }
        },
        {
            npcID = 74790,
            encounterID = 1654, 
            bossName= "Gug'rokk",
            notes = {
                "The room will fill up with magma pools from "..S(150784)..", move the boss strategically so dps can do their jobs.",
                "Interrupt "..S(150677).."",
                "Damage the adds if they are near, but don't chase, let the dps handle them.",
            }
        },
        {
            npcID = 74475,
            encounterID = 1655, 
            bossName= "Magmolatus",
            notes = {
                "P1- Taunt the Ruination (big stone Elemental) add and keep it pointed away from melee DPS to avoid damaging them with "..S(149941).." - a frontal cone",
                "P1 - Taunt the Calamity (big fire Elemental) add and tank it near the boss for cleave damage",
                "P1 - Interrupt Calamity's "..S(149997).." ability",
                "P2 Begins when Forgemaster Gog'duh dies.",
                "P2 - Step out of the big circle to avoid being stunned - "..S(150023).."",
                "P2 - Move the boss away from "..S(150011).." pools to avoid huge damage.",
                "P2 - Place a skull on the adds so your party focus kills them, you however, can ignore them.",
            }
        },
    }
    
    -- Shadowmoon Burial Grounds
    addonTable.data[1176] = {
        name = "Shadowmoon Burial Grounds",
        {
            npcID = 75509,
            encounterID = 1677, 
            bossName= "Sadana Bloodfury",
            notes = {
                "Have active mitigation or a survival cooldown active while Sadana is buffed by "..S(162696).."",
                "Move the boss closer to the edge of the platform so adds will take longer to reach her",
                "Move Sadana away from purple swirlies - "..S(153240).."",
                "Switch to the add while Sadana is channeling "..S(153153).."",
                "Use a stun or snare ability on the add",
                "Obtain a "..S(162652).." buff by standing on a  white Lunar Rune during "..S(164686).."",
            }
        },
        {
            npcID = 75452,
            encounterID = 1679, 
            bossName= "Bonemaw",
            notes = {
            }
        },
        {
            npcID = 175729,
            encounterID = 1682, 
            bossName= "Ner'zhul",
            notes = {
                "Aim the giant purple pizza slice - "..S(154442).." - away from the party, and dodge it",
                "Move the boss away from purple marks on the floor - "..S(175988).."",
                "During the "..S(154469)..", tank Ner'zhul at the opposite end of the room from which it spawns and place a skull marker on the middle one to have your party focus kill it.",
                "Once the "..S(154469).." has been broken, allow the other players to go through the safe spot first, and keep the purple slices pointed away from them",
                "Use a damage-reduction cooldown if a purple swirly spawns near you during this time",
            }
        },
        {
            npcID = 75829,
            encounterID = 1688, 
            bossName= "Nhallish",
            notes = {
                "Face the boss away from the party for "..S(152792).."",
                "Move the boss away from any purple pools - "..S(153067).." ",
                "Avoid triggering the mounds that release Exhumed Spirit adds",
                "Kill your Possessed Soul quickly (<20s) ",
            }
        },
    }
    
    -- Auchindoun
    addonTable.data[1182] = {
        name = "Auchindoun",
        {
            npcID = 75839,
            encounterID = 1686, 
            bossName= "Vigilant Kaathar",
            notes = {
                "Move the boss away from any nearby golden zones - "..S(154526).."",
                "Avoid stepping on the golden fissures left behind by "..S(152954).."",
                "Wait until the boss begins to cast "..S(153006).." before moving behind the "..S(153480).."",
                "[TW] "..S(154526).." explodes, move out of the golden circle",
            }
        },
        {
            npcID = 76177,
            encounterID = 1685, 
            bossName= "Soulbinder Nyami",
            notes = {
                "Interrupt as many boss casts as you can.",
                "Follow the boss when she casts "..S(153991)..", to pick up adds quickly",
                "Move into the purple circle during "..S(153477).." to avoid taking damage from it",
                "[TW] adds are stronger, you may wish to use strong cooldowns to help the healer, definitely use a cooldown if you don't go into the purple circle.",
            }
        },
        {
            npcID = 75927,
            encounterID = 1678, 
            bossName= "Azzakel",
            notes = {
                "Position the boss so that his frontal - "..S(153234).." knocks you back into the barrier at the edge of the platform",
                "Taunt Felguards when they spawn, and face them so that "..S(157173).." knocks you back into the barrier at the edge of the platform",
                "Assist in killing and interrupting Cackling Pyromaniacs",
                "Move the boss away from green pools - "..S(153500).." - and Blazing Tricksters",
                "[TW] Stronger adds and "..S(153500).."s have an added mechanic to avoid - "..S(153725).." - a big green line on the floor.",
            }
        },
        {
            npcID = 77734,
            encounterID = 1714, 
            bossName= "Teron'gor",
            notes = {
                "Move away from fire from the sky - "..S(156857).." - and the purple wave - "..S(157001).."",
                "Interrupt as many spells as you can.",
                "[TW] A big FELBORNE ABYSSAL will be summoned to chase a random player, you can ignore it, the player must kite it.",
            }
        },
    }
    
    -- Iron Docks
    addonTable.data[1195] = {
        name = "Iron Docks",
        {
            npcID = 81305,
            encounterID = 1749, 
            bossName= "Fleshrender Nok'gar",
            notes = {
                "Focus kill the Wolf DREADFANG",
                "Taunt Fleshrender Nok'gar as soon as Dreadfang is dead",
                "Keep moving to avoid the burning zones - "..S(164632).."",
                "Stop attacking Nok'gar as he finishes casting "..S(164426).." to avoid being feared - "..S(164504).."",
            }
        },
        {
            npcID = 999999,
            encounterID = 1748, 
            bossName= "Grimrail Enforcers",
            notes = {
                "Tank Ahri'ok and Makogg together. Neesa cannot be tanked",
                "Interrupt Ahri'ok's "..S(165122).."",
                "Watch Makogg carefully for his frontal (standing still with flames dripping off the hilt of his sword) - "..S(163668).."",
                "Use powerful damage reduction CDs during the first part of the fight while all three bosses are alive",
            }
        },
        {
            npcID = 79852,
            encounterID = 1750, 
            bossName= "Oshir",
            notes = {
                "Tank Oshir near the cage he leaps to so players can still damage the boss while killing adds, keep him facing away from the party.",
                "Use a cooldown if you are chosen as snack of the day - "..S(162415).."",
                "Dodge Oshir's frontal "..S(161256).."",
                "Stun Ravenous Wolf or Rylak Skyterror adds when possible, and interrupt "..S(178155).."",
                "Avoid green puddles - "..S(178156).." ",
            }
        },
        {
            npcID = 83612,
            encounterID = 1754, 
            bossName= "Skulloc",
            notes = {
                "Tank Koramar and Skulloc together; when Zoggosh joins the fight, taunt him",
                "Move away from players marked with a red icon - "..S(168348).."",
                "If Koramar is still alive during "..S(168929)..", be sure to taunt him away from the rest of the party during "..S(168401).."",
                "Use a speed boost, if available, to get back to the boss and end the "..S(168929).." phase",
                "If you do not have a speed boost for this, and another player engages Skulloc to end the "..S(168929).." phase, be sure to taunt the boss quickly",
            }
        },
    }
    
    -- Blackrock Foundry
    addonTable.data[1205] = {
        name = "Blackrock Foundry",
        {
            npcID = 77325,
            encounterID = 1704, 
            bossName= "Blackhand",
            notes = {
            }
        },
        {
            npcID = 76865,
            encounterID = 1694, 
            bossName= "Beastlord Darmac",
            notes = {
            }
        },
        {
            npcID = 76814,
            encounterID = 1689, 
            bossName= "Flamebender Ka'graz",
            notes = {
            }
        },
        {
            npcID = 76906,
            encounterID = 1692, 
            bossName= "Operator Thogar",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1690, 
            bossName= "The Blast Furnace",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1693, 
            bossName= "Hans'gar and Franzok",
            notes = {
            }
        },
        {
            npcID = 19044,
            encounterID = 1691, 
            bossName= "Gruul",
            notes = {
            }
        },
        {
            npcID = 77692,
            encounterID = 1713, 
            bossName= "Kromog",
            notes = {
            }
        },
        {
            npcID = 77182,
            encounterID = 1696, 
            bossName= "Oregorger",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1695, 
            bossName= "The Iron Maidens",
            notes = {
            }
        },
    }
    
    -- Grimrail Depot
    addonTable.data[1208] = {
        name = "Grimrail Depot",
        {
            npcID = 80005,
            encounterID = 1736, 
            bossName= "Skylord Tovra",
            notes = {
                "Keep Tovra pointed away from other players in case "..S(162058).." targets you",
                "Move Tovra away from nearby frost traps - "..S(162066).." and lightning pools -  "..S(161588).." pools",
            }
        },
        {
            npcID = 77803,
            encounterID = 1715, 
            bossName= "Rocketspark and Borka",
            notes = {
                "The goblin boss will fly around the room shooting people, while Borka stays grounded and periodically "..S(161087).."s the floor in front of him.",
                "Hold threat on Borka; The goblin cannot be tanked.",
                "Use minor defensive CDs for each time the giant charges - "..S(161089).."",
                "Aim "..S(161089).." at Rocketspark's current position to interrupt "..S(162407).."",
                "If players defeat Rocketspark before Borka, use powerful defensive cooldowns to survive Borka's enrage - "..S(161092).."",
            }
        },
        {
            npcID = 79545,
            encounterID = 1732, 
            bossName= "Nitrogg Thundertower",
            notes = {
                "Many, many adds to pick up! Most important are Grom'kar Boomer and Grom'kar Grenadier, while Iron Infantry are weaker and less important to gather",
                "Break line-of-sight with the Assault Cannon if targeted by "..S(160681)..", hide behind a pillar",
            }
        },
    }
    
    -- Skyreach
    addonTable.data[1209] = {
        name = "Skyreach",
        {
            npcID = 75964,
            encounterID = 1698, 
            bossName= "Ranjit",
            notes = {
                "Move Ranjit away from "..S(153315).."s that spawn on melee DPS",
                "Drag Ranjit to a clear spot before "..S(156793).." begins",
                "Dodge the frontal "..S(158085).." ",
                "[TW] If targeted by "..S(154043)..", red arrow on your head, move to the edge and drop puddles out of the way.",
            }
        },
        {
            npcID = 76141,
            encounterID = 1699, 
            bossName= "Araknath",
            notes = {
                "Dodge "..S(165985).."",
                "Block the golden beam - "..S(154149).." - to prevent the boss from being healed",
                "Use a cooldown if you need to stand in a "..S(165985).." to soak "..S(157304).." beam, or if soaking an "..S(157304).." during "..S(154135).."",
                "[TW] more golden beams to soak",
            }
        },
        {
            npcID = 76379,
            encounterID = 1700, 
            bossName= "Rukhran",
            notes = {
                "Use Active Mitigation when the boss casts "..S(153794)..", if not, you receive 30% more damage for each time you're hit with it.",
                "Assist in snaring/killing nearby adds",
                "Stay within melee range of Rukhran to prevent "..S(153898).." damage on the party",
                "Use a powerful damage-reduction cooldown if you are Fixated by an add and must trigger "..S(153828).."",
                "[TW] Every minute the boss will cast "..S(159381)..", hide behind the big pillar.",
            }
        },
        {
            npcID = 76266,
            encounterID = 1701, 
            bossName= "High Sage Viryx",
            notes = {
                "Tank the boss as far away as possible from the edges of the platform",
                "Assist in snaring and stunning the Solar Zealot adds",
                "Interrupt the Skyreach Shield Construct's "..S(158641).."",
                "Interrupt High Sage Viryx's "..S(154396).." ",
                "Move the boss away from any "..S(154043).." pools that players drop nearby",
            }
        },
    }
    
    -- Highmaul
    addonTable.data[1228] = {
        name = "Highmaul",
        {
            npcID = 77404,
            encounterID = 1706, 
            bossName= "The Butcher",
            notes = {
            }
        },
        {
            npcID = 78714,
            encounterID = 1721, 
            bossName= "Kargath Bladefist",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1719, 
            bossName= "Twin Ogron",
            notes = {
            }
        },
        {
            npcID = 79015,
            encounterID = 1723, 
            bossName= "Ko'ragh",
            notes = {
            }
        },
        {
            npcID = 78948,
            encounterID = 1722, 
            bossName= "Tectus",
            notes = {
            }
        },
        {
            npcID = 78491,
            encounterID = 1720, 
            bossName= "Brackenspore",
            notes = {
            }
        },
        {
            npcID = 77428,
            encounterID = 1705, 
            bossName= "Imperator Mar'gok",
            notes = {
            }
        },
    }
    
    -- The Everbloom
    addonTable.data[1279] = {
        name = "The Everbloom",
        {
            npcID = 84550,
            encounterID = 1752, 
            bossName= "Xeri'tac",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1757, 
            bossName= "Ancient Protectors",
            notes = {
                "Focus kill order, place a skull: Golu -> Telu -> Dulhu.",
                "Gola and Telu cannot be tanked so ignore them. Maintain aggro on Dulhu and move him on top of the current kill target for cleave.",
                "Move out of Dulhu's "..S(175997).." (looks like a giant green swirly) to avoid being knocked back.",
                "Use interrupts and stuns on Gola to prevent "..S(168082).." and "..S(168105).." casts. This heals the enemy.",
                "When fighting Telu, after Gola is dead, use interrupts and stuns to prevent "..S(167966).." and "..S(168041).." casts. These are annoying.",
                "Move out of "..S(167966).." (looks like a patch of vines) if it spawns on you.",
            }
        },
        {
            npcID = 82682,
            encounterID = 1751, 
            bossName= "Archmage Sol",
            notes = {
                "Interrupt "..S(168885).." to transition the boss to the next phase.",
                "Jump over the expanding ring of flames from "..S(166490).." to avoid taking damage from it.",
                "Move Sol away from nearby "..S(166726)..".",
            }
        },
        {
            npcID = 83846,
            encounterID = 1756, 
            bossName= "Yalnu",
            notes = {
                "Pick up all the adds as they spawn and kite them into fire on the floor.",
                "Use survivability cooldowns when tanking the Swift Sproutling packs, as they apply a stacking bleed that quickly becomes dangerous.",
                "Move out of "..S(169179).." - frontal cone - to avoid being stunned and heavily damaged.",
                ""..S(173536).." the unsprouted Feral Lashers near/under the boss during"..S(169613).."",
            }
        },
        {
            npcID = 81522,
            encounterID = 1746, 
            bossName= "Witherbark",
            notes = {
                "Tank the boss in the middle of the area, facing toward the water.",
                "Avoid frontal cone "..S(164357)..", too late to dodge? Pop a cooldown to help the healer.",
                "Be mindful of "..S(164294).." (vine patches on floor),move the boss so dps can do their job.",
                "Offensive cooldowns when the boss enters phase 2 .",
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
                "Use Active Mitigation/cooldowns to reduce "..S(154417).." damage",
                "Gor'ashan does not melee during "..S(166168).."; you can help deactivate Rune Conduits (jump down from the platform, avoid blue lightning - "..S(154335)..", and click on the Rune Conduit), but be sure to return to the platform quickly to pick Gor'ashan up",
                "Use a cooldown when returning to the platform, in case you are targeted by "..S(154435).."",
            }
        },
        {
            npcID = 199790,
            encounterID = 1758, 
            bossName= "Kyrak",
            notes = {
                "Face adds away from the party and focus kill them",
                "Dodge the fire frontal - "..S(155037).." - to avoid heavy damage and the disorient effect",
                "Interrupt the purple line - "..S(161199).." - when possible",
                "Move the boss away from nearby green pools - "..S(161288)..", but avoid creating LoS issues for your healer",
            }
        },
        {
            npcID = 79912,
            encounterID = 1759, 
            bossName= "Commander Tharbek",
            notes = {
                "Fight off the 3 waves of adds",
                "Move out of the Ironbarb Skyreaver's fire frontal - "..S(161772).."",
                "Move the boss away from green acid pools - "..S(161833).." and whirling axes - "..S(162097).."",
                "Dodge the boss' "..S(162000).." charge",
                "Save stronger cooldowns for Tharbek's enrage - "..S(161985).."",
            }
        },
        {
            npcID = 76585,
            encounterID = 1760, 
            bossName= "Ragewing the Untamed",
            notes = {
                "Tank the boss facing just to the right or left of the center of the bridge, so it's obvious when she turns to use her cone of fire - "..S(155031).."",
                "Run to the opposite side of the bridge for "..S(155031).."",
                "Get back into melee range quickly to avoid taking "..S(155594).." damage",
                "Move away from "..S(155051).." pools",
                "Use cooldowns for high stacks of "..S(155065).."",
                "Quickly gather the adds, and move out of the orange circle - "..S(155081).."",
                "When the boss lands on the platform after the second add phase, quickly taunt her and face her away from the party",
            }
        },
        {
            npcID = 77120,
            encounterID = 1762, 
            bossName= "Warlord Zaela",
            notes = {
                "Use cooldowns or active mitigation to counter the heavy damage of "..S(155673).."",
                "Move away from the boss as she begins her "..S(155720).."",
                "Pick up the adds when they land, and drag them out of the Dragon's line of fire - "..S(166041).."",
                "Taunt the boss when she lands and move her out of the dragon's line of fire - "..S(166041).."",
            }
        },
    }
    
    -- Hellfire Citadel
    addonTable.data[1448] = {
        name = "Hellfire Citadel",
        {
            npcID = 22871,
            encounterID = 1783, 
            bossName= "Gorefiend",
            notes = {
            }
        },
        {
            npcID = 89890,
            encounterID = 1777, 
            bossName= "Fel Lord Zakuun",
            notes = {
            }
        },
        {
            npcID = 90776,
            encounterID = 1787, 
            bossName= "Kormrok",
            notes = {
            }
        },
        {
            npcID = 93439,
            encounterID = 1784, 
            bossName= "Tyrant Velhari",
            notes = {
            }
        },
        {
            npcID = 54969,
            encounterID = 1795, 
            bossName= "Mannoroth",
            notes = {
            }
        },
        {
            npcID = 90378,
            encounterID = 1786, 
            bossName= "Kilrogg Deadeye",
            notes = {
            }
        },
        {
            npcID = 90284,
            encounterID = 1785, 
            bossName= "Iron Reaver",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1778, 
            bossName= "Hellfire Assault",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1794, 
            bossName= "Socrethar the Eternal",
            notes = {
            }
        },
        {
            npcID = 999999,
            encounterID = 1798, 
            bossName= "Hellfire High Council",
            notes = {
            }
        },
        {
            npcID = 90316,
            encounterID = 1788, 
            bossName= "Shadow-Lord Iskar",
            notes = {
            }
        },
        {
            npcID = 17968,
            encounterID = 1799, 
            bossName= "Archimonde",
            notes = {
            }
        },
        {
            npcID = 93068,
            encounterID = 1800, 
            bossName= "Xhul'horac",
            notes = {
            }
        },
    }
    
end