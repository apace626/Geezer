local addonName, ns = ...

ns.MISSING_NOTE_TEXT = "\n\nNotes have not been added. Let us know if you would like to contribute!"
local frame

-- local LDB = LibStub("LibDataBroker-1.1", true)
-- local LDBIcon = LDB and LibStub("LibDBIcon-1.0", true)
-- if LDB then
--     local Geezer_MinimapBtn = LDB:NewDataObject("Geezer", {
--         type = "launcher",
--         text = "Geezer",
--         --icon = "Interface\\AddOns\\PoisonCharges\\media\\PoisonCharges_Icon",
--         icon = "Interface\\Icons\\INV_Chest_Cloth_17",
--         OnClick = function(_, button)
--             InterfaceOptionsFrame_OpenToCategory(addonName)
--         end,
--         OnTooltipShow = function(tt)
--             tt:AddLine("Geezer")
--             tt:AddLine("|cffffff00Click|r to open the Geezer settings window.")
--         end,
--     })
--     if LDBIcon then
--         LDBIcon:Register("Geezer", Geezer_MinimapBtn, SavedVariable_HERE) -- PC_MinimapPos is a SavedVariable which is set to 90 as default
--     end
-- end

function ns:BuildFrame()

    frame = CreateFrame("Frame", addonName, UIParent, BackdropTemplateMixin and "BackdropTemplate")

    --------------------------------------------------------
    -- build frame
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:SetUserPlaced(true)
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
    titleText:SetText("Geezer Boss Notes")
    ns.titleText = titleText

    local notesText = frame:CreateFontString(nil, "BACKGROUND")
    notesText:SetFontObject("GameFontNormal")
    notesText:SetJustifyV("TOP")
    notesText:SetJustifyH("LEFT")
    notesText:SetTextColor(1, 1, 1)
    notesText:SetText("\n\nNotes will appear when you are in an instance.")
    ns.notesText = notesText

    local collapseButton = CreateFrame("Button", addon_name, frame, "UIPanelButtonTemplate")
    local notesHidden = false
    collapseButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
    collapseButton:SetWidth(20)
    collapseButton:SetHeight(20)
    collapseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-CollapseButton-Up")
    collapseButton:SetPoint("TOPRIGHT", 16, -13)
    collapseButton:SetScript("OnClick", function(self, button, down)
        if not notesText:IsShown() then
            notesText:Show()
            collapseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-CollapseButton-Up")
        else 
            notesText:Hide()
            collapseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-ExpandButton-Up")
        end
    end)

    local searchButton = CreateFrame("Button", addon_name, frame, "UIPanelButtonTemplate")
    searchButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
    searchButton:SetWidth(20)
    searchButton:SetHeight(20)
    --searchButton:SetNormalTexture("Interface\\Buttons\\UI-AttributeButton-Down")
    searchButton:SetText('+')
    searchButton:SetPoint("TOPLEFT", 16, -13)
    searchButton:SetScript("OnClick", function(self, button, down)
        ToggleDropDownMenu(1, nil, ns.bossDropDown, "cursor", 3, -3)
    end)


    local bossDialog = CreateFrame("Frame", addon_name, frame, BackdropTemplateMixin and "BackdropTemplate")
    bossDialog:SetFrameStrata("DIALOG")
    bossDialog:SetPoint("CENTER", frame, "CENTER", 0, 0)
    bossDialog:SetWidth(200)
    bossDialog:SetHeight(100)
    bossDialog:SetPoint("TOPLEFT", 16, -13)
    bossDialog:SetBackdrop(BACKDROP_TUTORIAL_16_16)
    ns.bossDialog = bossDialog
    bossDialog:Hide()

    ns.bossDropDown = CreateFrame("FRAME", "WPDemoDropDown", frame, "UIDropDownMenuTemplate")


    -- Create minimap button
 
    local minibtn = CreateFrame("Button", addon_name, Minimap)
    minibtn:SetFrameLevel(8)
    minibtn:SetSize(32,32)
    minibtn:SetMovable(true)
    
    -- minibtn:SetNormalTexture("Interface/AddOns/AutoSell/Leatrix_Plus_Up.blp")
    -- minibtn:SetPushedTexture("Interface/AddOns/AutoSell/Leatrix_Plus_Up.blp")
    -- minibtn:SetHighlightTexture("Interface/AddOns/AutoSell/Leatrix_Plus_Up.blp")
    
    minibtn:SetNormalTexture("Interface/COMMON/Indicator-Yellow.png")
    minibtn:SetPushedTexture("Interface/COMMON/Indicator-Yellow.png")
    minibtn:SetHighlightTexture("Interface/COMMON/Indicator-Yellow.png")
    minibtn:Show()

    ---------------------------------------------------------
    -- position frame
    --frame:ClearAllPoints()
    frame:SetPoint("CENTER",0,0)

    --TODO: allow backdrop in settings?
    -- frame style
    -- frame:SetBackdrop(BACKDROP_TUTORIAL_16_16)
    -- frame:SetBackdropColor(1, 1, 1)


    ----------------------------------------------------------
    -- layout frame

    local inset = 16
    local titleHeight = 15
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

    self:HideFrame()

end

function ns:InitializeBossDropdown(instanceID, difficultyName)
    local instanceData = ns.data[tonumber(instanceID)]
    if instanceData then

        UIDropDownMenu_Initialize(ns.bossDropDown, function(self, level, menuList)
            local titleInfo = UIDropDownMenu_CreateInfo()
            titleInfo.isTitle = true

            if not difficultyName or difficultyName == '' then
                titleInfo.text = instanceData.name
            else
                titleInfo.text = instanceData.name.." ("..difficultyName..")"
            end

            UIDropDownMenu_AddButton(titleInfo) 
            
            UIDropDownMenu_AddSeparator()
            
            for _, item in ipairs(instanceData) do
                local bossButton = UIDropDownMenu_CreateInfo()
                bossButton.func = ns.SetValue
                bossButton.text = item.bossName
                bossButton.value = item.npcID 
                bossButton.arg1 = item.npcID
                bossButton.arg2 = instanceID
                UIDropDownMenu_AddButton(bossButton)
            end

            UIDropDownMenu_AddSeparator()
            local cancelButton = UIDropDownMenu_CreateInfo()
            cancelButton.notCheckable = true
            cancelButton.text = "Cancel"
            UIDropDownMenu_AddButton(cancelButton)
            
        end, "MENU")

        
    else
        self:HideFrame()
    end
end

function ns:SetFrameScale(number)
    frame:SetScale(number)
end

function ns:SetValue(newValue, instanceID)
    ns:ShowNote(instanceID, newValue)
    CloseDropDownMenus()
end

function ns:HideFrame()
    frame:Hide()
end

function ns:ShowFrame()
    frame:Show()
end

function ns:IsFrameShown()
    return frame:IsShown()
end



