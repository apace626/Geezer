local addon_name, addon = ...

local frame = CreateFrame("Frame", addon_name, UIParent, BackdropTemplateMixin and "BackdropTemplate")

--------------------------------------------------------
-- build frame
frame:SetFrameStrata("BACKGROUND")
frame:SetWidth(300)
frame:SetHeight(100)

local titleText = frame:CreateFontString(nil, "BACKGROUND")
titleText:SetFontObject("GameFontNormalLarge")
titleText:SetJustifyV("TOP")
titleText:SetJustifyH("LEFT")
titleText:SetText("Title")
--self.titleText = titleText

local notesText = frame:CreateFontString(nil, "BACKGROUND")
notesText:SetFontObject("GameFontNormal")
notesText:SetJustifyV("TOP")
notesText:SetJustifyH("LEFT")
notesText:SetTextColor(1, 1, 1)
notesText:SetText("Notes asdfasdfsafsaf asdfasdfdaf aasdfasfasdf")
--self.notesText = notesText

---------------------------------------------------------
-- position frame
--frame:ClearAllPoints()
frame:SetPoint("CENTER",0,0)

-- frame style
--self.inset = 16
frame:SetBackdrop(BACKDROP_DIALOG_32_32)
frame:SetBackdropColor(1, 1, 1)


----------------------------------------------------------
-- layout frame

local inset = 16
local titleHeight = 30
--local titleText = titleText
titleText:ClearAllPoints()
titleText:SetPoint("TOPLEFT", inset, -inset)
titleText:SetPoint("RIGHT", -inset, 0)

--local notesText = notesText
notesText:ClearAllPoints()
notesText:SetPoint("TOPLEFT", inset, -inset - titleHeight)
notesText:SetPoint("RIGHT", -inset, 0)

if frame:IsShown() then
    frame:SetHeight(titleHeight + notesText:GetHeight() + (inset * 2))
end


frame:Hide()

