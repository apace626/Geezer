local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

function gz:LogDebug(message)
    if IS_DEBUG then
        self:Print(message)
    end
end

function is_numeric(x)
    if tonumber(x) ~= nil then
        return true
    end
    return false
end