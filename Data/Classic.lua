local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
    addonTable.data = {}

    -- Ragefire Chasm
    addonTable.data[389] = {
        name = "Ragefire Chasm",
        { 
            npcID = 61408,
            encounterID = 1443, 
            bossName="Adarogg",
            notes = {
                "Move out of the way of "..S(119299)..".",
                "Take note of the frontal cone "..S(119420).."."
                }
        },
        { 
            npcID = 61412, 
            encounterID = 1444,
            bossName="Dark Shaman Koranthal",
            notes = {
                "Interrupt "..S(119300)..", inflicts shadow damage on target.",
                "Avoid "..S(119971).." , inflicts shadow damage to all players within 2 yards of purple circles."
                }
        },
        { 
            npcID = 61463, 
            encounterID = 1445,
            bossName="Slagmaw",
            notes = {
                "Boss will occasionally vanish in the lava and pop up somewhere else."
                }
        },
        { 
            npcID = 61528, 
            encounterID = 1446,
            bossName="Lava Guard Gordoth",
            notes = {
                S(119999).." and "..S(120024).." will knock back players.",
                "Boss will "..S(50420).." at 30% health."
                }
        }
    }

    -- Deadmines
    addonTable.data[36] = {
        name = "Deadmines",
        { 
            npcID = 61408,
            encounterID = 1443, 
            bossName="Glubtok",
            notes = {
                "Move out of the way of "..S(119299)..".",
                "Take note of the frontal cone "..S(119420).."."
                }
        },
        { 
            npcID = 61412, 
            encounterID = 1444,
            bossName="Helix Gearbreaker",
            notes = {
                "Interrupt "..S(119300)..", inflicts shadow damage on target.",
                "Avoid "..S(119971).." , inflicts shadow damage to all players within 2 yards of purple circles."
                }
        },
        { 
            npcID = 61463, 
            encounterID = 1445,
            bossName="Foe Reaper 5000",
            notes = {
                "Boss will occasionally vanish in the lava and pop up somewhere else."
                }
        },
        { 
            npcID = 61528, 
            encounterID = 1446,
            bossName="Admiral Ripsnarl",
            notes = {
                S(119999).." and "..S(120024).." will knock back players.",
                "Boss will "..S(50420).." at 30% health."
                }
        },
        { 
            npcID = 61528, 
            encounterID = 1446,
            bossName="Cookie",
            notes = {
                S(119999).." and "..S(120024).." will knock back players.",
                "Boss will "..S(50420).." at 30% health."
                }
        }
    }
end