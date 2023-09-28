local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

function gz:LogDebug(message)
    if IS_DEBUG then
        self:Print(message)
    end
end