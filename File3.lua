LoadingOrderSavedVar = 0  -- default value until ADDON_LOADED
print("The last file has loaded.")

local frame = CreateFrame("Frame")
frame:RegisterFrame("ADDON_LOADED")
-- frame:SetScript("OnEvent", function(self, event)
--   if event == "ADDON_LOADED" and arg1=="LoadingOrder" then
--     LoadingOrderSavedVar = LoadingOrderSavedVar + 1
--     if LoadingOrderSavedVar then
--       print("The demo has now loaded" .. LoadingOrderSavedVar .. " times")
--     end
--   end
-- end)