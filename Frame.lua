local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

addonTable.MISSING_NOTE_TEXT = "\n\nNotes have not been added. Let us know if you would like to contribute!"
local frame

function gz:BuildFrame()

    frame = CreateFrame("Frame", addonName, UIParent, BackdropTemplateMixin and "BackdropTemplate")

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
    titleText:SetText("Geezer Boss Notes")
    addonTable.titleText = titleText

    local notesText = frame:CreateFontString(nil, "BACKGROUND")
    notesText:SetFontObject("GameFontNormal")
    notesText:SetJustifyV("TOP")
    notesText:SetJustifyH("LEFT")
    notesText:SetTextColor(1, 1, 1)
    notesText:SetText("\n\nNotes will appear when you are in an instance.")
    addonTable.notesText = notesText

    local collapseButton = CreateFrame("Button", addon_name, frame, "UIPanelButtonTemplate")
    local notesHidden = false
    collapseButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
    collapseButton:SetWidth(20)
    collapseButton:SetHeight(20)
    collapseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-CollapseButton-Up")
    collapseButton:SetPoint("TOPRIGHT", 16, -13)
    collapseButton:SetScript("OnClick", function(self, button, down)
        if notesHidden then
            notesText:Show()
            collapseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-CollapseButton-Up")
        else 
            notesText:Hide()
            collapseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-ExpandButton-Up")
        end

        notesHidden = not notesHidden
    end)

    local searchButton = CreateFrame("Button", addon_name, frame, "UIPanelButtonTemplate")
    searchButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
    searchButton:SetWidth(20)
    searchButton:SetHeight(20)
    --searchButton:SetNormalTexture("Interface\\Buttons\\UI-AttributeButton-Down")
    searchButton:SetText('+')
    searchButton:SetPoint("TOPLEFT", 16, -13)
    searchButton:SetScript("OnClick", function(self, button, down)
        ToggleDropDownMenu(1, nil, addonTable.bossDropDown, "cursor", 3, -3)
    end)


    local bossDialog = CreateFrame("Frame", addon_name, frame, BackdropTemplateMixin and "BackdropTemplate")
    bossDialog:SetFrameStrata("DIALOG")
    bossDialog:SetPoint("CENTER", frame, "CENTER", 0, 0)
    bossDialog:SetWidth(200)
    bossDialog:SetHeight(100)
    bossDialog:SetPoint("TOPLEFT", 16, -13)
    bossDialog:SetBackdrop(BACKDROP_TUTORIAL_16_16)
    addonTable.bossDialog = bossDialog
    bossDialog:Hide()

    addonTable.bossDropDown = CreateFrame("FRAME", "WPDemoDropDown", frame, "UIDropDownMenuTemplate")

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

function gz:InitializeBossDropdown(instanceID, difficultyName)
    local instanceData = addonTable.data[tonumber(instanceID)]
    if instanceData then

        UIDropDownMenu_Initialize(addonTable.bossDropDown, function(self, level, menuList)
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
                bossButton.func = gz.SetValue
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
        --self:Print("No instance data found.")
        self:HideFrame()
    end
end

function gz:SetValue(newValue, instanceID)
    gz:ShowNote(instanceID, newValue)
    CloseDropDownMenus()
end

function gz:HideFrame()
    frame:Hide()
end

function gz:ShowFrame()
    frame:Show()
end

function gz:ToggleRandom()
    if frame:IsShown() then
        frame:Hide()
    else
        -- Choose random note
        local instances = {}
        for key, value in pairs(addonTable.data) do
            table.insert(instances, key)
        end
        local instance = instances[math.random(#instances)]
        self:ShowNote(instance)
    end
end


