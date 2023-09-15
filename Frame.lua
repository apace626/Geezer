-- --parent frame 
-- local frame = CreateFrame("Frame", "MyFrame", UIParent) 
-- frame:SetSize(150, 200) 
-- frame:SetPoint("CENTER") 
-- local texture = frame:CreateTexture() 
-- texture:SetAllPoints() 
-- texture:SetTexture(1,1,1,1) 
-- frame.background = texture 

-- --scrollframe 
-- scrollframe = CreateFrame("ScrollFrame", nil, frame) 
-- scrollframe:SetPoint("TOPLEFT", 10, -10) 
-- scrollframe:SetPoint("BOTTOMRIGHT", -10, 10) 
-- local texture = scrollframe:CreateTexture() 
-- texture:SetAllPoints() 
-- texture:SetTexture(.5,.5,.5,1) 
-- frame.scrollframe = scrollframe 

-- --scrollbar 
-- scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollBarTemplate") 
-- scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", 4, -16) 
-- scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 4, 16) 
-- scrollbar:SetMinMaxValues(1, 200) 
-- scrollbar:SetValueStep(1) 
-- scrollbar.scrollStep = 1 
-- scrollbar:SetValue(0) 
-- scrollbar:SetWidth(16) 
-- scrollbar:SetScript("OnValueChanged", 
-- function (self, value) 
-- self:GetParent():SetVerticalScroll(value) 
-- end) 
-- local scrollbg = scrollbar:CreateTexture(nil, "BACKGROUND") 
-- scrollbg:SetAllPoints(scrollbar) 
-- scrollbg:SetTexture(0, 0, 0, 0.4) 
-- frame.scrollbar = scrollbar 

-- --content frame 
-- local content = CreateFrame("Frame", nil, scrollframe) 
-- content:SetSize(128, 128) 
-- local texture = content:CreateTexture() 
-- texture:SetAllPoints() 
-- texture:SetTexture("Interface\\GLUES\\MainMenu\\Glues-BlizzardLogo") 
-- content.texture = texture 
-- scrollframe.content = content 

-- scrollframe:SetScrollChild(content)

--local addon_name, addon = ...

-- local frame = CreateFrame("Frame", "Geezer", UIParent, BackdropTemplateMixin and "BackdropTemplate")
-- frame:SetFrameStrata("BACKGROUND")
-- frame:SetWidth(300)
-- frame:SetHeight(100)

-- local titleText = frame:CreateFontString(nil, "BACKGROUND")
-- titleText:SetFontObject("GameFontNormalLarge")
-- titleText:SetJustifyV("TOP")
-- titleText:SetJustifyH("LEFT")
-- titleText:SetText("Title")
-- frame.titleText = titleText

-- local notesText = frame:CreateFontString(nil, "BACKGROUND")
-- notesText:SetFontObject("GameFontNormal")
-- notesText:SetJustifyV("TOP")
-- notesText:SetJustifyH("LEFT")
-- notesText:SetTextColor(1, 1, 1)
-- notesText:SetText("Notes")
-- frame.notesText = notesText

--frame:Hide()



local msgFrame = CreateFrame("FRAME", nil, UIParent)
msgFrame:SetWidth(1)
msgFrame:SetHeight(1)
msgFrame:SetPoint("CENTER")
msgFrame:SetFrameStrata("TOOLTIP")
msgFrame.text = msgFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
msgFrame.text:SetPoint("CENTER")
msgFrame.text:SetText("Hello World")

local titleText = msgFrame:CreateFontString(nil, "BACKGROUND")
titleText:SetFontObject("GameFontNormalLarge")
titleText:SetJustifyV("TOP")
titleText:SetJustifyH("LEFT")
titleText:SetText("Title")
-- msgFrame.titleText = titleText
-- msgFrame.titleText:Show()
