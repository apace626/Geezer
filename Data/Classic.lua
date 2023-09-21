local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:ClassicInitializeData()
    addonTable.data = {}

    -- Ragefire Chasm
    --THIS WORKS
    -- for _, item in ipairs(addonTable.data[389]) do
    --     print(item.id)
    --     print(item.bossName)
    --     for _2, item2 in ipairs(item.notes) do
    --         print(item2)
    --     end
        
    --     --table.insert(noteItems, item[1])
    -- end
    addonTable.data[389] = {
        name = "Ragefire Chasm",
        { 
            npcId = 61408,
            ecounterId = 1443, 
            bossName="Adarogg",
            notes = {
                "Adarogg fixes his eyes on a player, charging their location and inflicting Physical damage to all nearby players on impact. ("..S(119299)..").",
                "Dodge ("..S(119420)..")."
                }
        },
        { 
            npcId = 61412, 
            ecounterId = 1444,
            bossName="Dark Shaman Koranthal",
            notes = {
                "Hurls ("..S(119300)..") at an enemy, inflicting Shadow damage.",
                "Calls down ("..S(119971)..") for 15 seconds, inflicting Shadow damage to all players within 2 yards of each impact."
                }
        }
    }
end