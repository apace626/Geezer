print("After the XML is loaded", FrameTestFrame)

local seconds = 10
local total = 0
FrameTestFrame:SetScript("OnUpdate", function(self, elapsed)
  total = total + elapsed
	if total > seconds then
		self:SetScript("OnUpdate", nil)
	end
	local sides = 100 + (100 * (total / seconds))
	self:SetSize(sides, sides)
end)