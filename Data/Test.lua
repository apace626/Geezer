local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local function S(id)
    local name, _, icon = GetSpellInfo(id)
    return string.format("|T%s:0|t|cff71d5ff%s|r", icon, name)
end

function gz:InitializeTestData()
    addonTable.data = {}
    addonTable.data[20] = "great"
    print(addonTable.data[20])
end