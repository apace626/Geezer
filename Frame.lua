local addon_name, addon = ...

local frame = CreateFrame("Frame", addon_name, UIParent, BackdropTemplateMixin and "BackdropTemplate")

--------------------------------------------------------
-- build frame
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
frame:SetFrameStrata("BACKGROUND")
frame:SetWidth(300)
frame:SetHeight(100)

local titleText = frame:CreateFontString(nil, "BACKGROUND")
titleText:SetFontObject("GameFontNormalLarge")
titleText:SetJustifyV("TOP")
titleText:SetJustifyH("LEFT")
titleText:SetText("Title")

local notesText = frame:CreateFontString(nil, "BACKGROUND")
notesText:SetFontObject("GameFontNormal")
notesText:SetJustifyV("TOP")
notesText:SetJustifyH("LEFT")
notesText:SetTextColor(1, 1, 1)
notesText:SetText("Notes asdfasdfsafsaf asdfasdfdaf aasdfasfasdf")

local myButton = CreateFrame("Button", addon_name, frame, "UIPanelButtonTemplate")
myButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
myButton:SetWidth(20)
myButton:SetHeight(20)
myButton:SetText("+")
myButton:SetPoint("TOPLEFT", 16, -13)

-- local bossDialog = CreateFrame("Frame", addon_name, frame, BackdropTemplateMixin and "BackdropTemplate")
-- bossDialog:SetFrameStrata("DIALOG")
-- bossDialog:SetPoint("CENTER", frame, "CENTER", 0, 0)
-- bossDialog:SetWidth(200)
-- bossDialog:SetHeight(100)
-- bossDialog:SetPoint("TOPLEFT", 16, -13)
-- bossDialog:SetBackdrop(BACKDROP_TUTORIAL_16_16)


---------------------------------------------------------
-- position frame
--frame:ClearAllPoints()
frame:SetPoint("CENTER",0,0)

-- frame style
--self.inset = 16
--frame:SetBackdrop(BACKDROP_DIALOG_32_32)
--frame:SetBackdropColor(1, 1, 1)


----------------------------------------------------------
-- layout frame

local inset = 16
local titleHeight = 30
--local titleText = titleText
titleText:ClearAllPoints()
titleText:SetPoint("TOPLEFT", 45, -inset)
titleText:SetPoint("RIGHT", -inset, 0)

--local notesText = notesText
notesText:ClearAllPoints()
notesText:SetPoint("TOPLEFT", inset, -inset - titleHeight)
notesText:SetPoint("RIGHT", -inset, 0)


if frame:IsShown() then
    frame:SetHeight(titleHeight + notesText:GetHeight() + (inset * 2))
end

--frame.SetMovable(true)
--frame:Hide()

