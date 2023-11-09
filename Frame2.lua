local addonName, ns = ...

ns.MISSING_NOTE_TEXT = "\n\nNotes have not been added. Let us know if you would like to contribute!"
local frame

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
    frame:SetScale(.85)

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

function WPDropDownDemo_OnClick(self, arg1, arg2, checked)
    ns:InitializeBossDropdown(arg1)
    ns:ShowNote(arg1, nil, nil)
end

function WPDropDownDemo_Menu(frame, level, menuList)
        local info = UIDropDownMenu_CreateInfo()
        info.func = WPDropDownDemo_OnClick

        local instanceData = ns.data
        local dungeonsTable = { }
        local raidsTable = { }
        
        for key, item in pairs(instanceData) do
            if item.instanceType == 1 then
                table.insert(dungeonsTable, { id = key, name = item.name })
            else
                table.insert(raidsTable, { id = key, name = item.name })
            end
        end

        table.sort(dungeonsTable, sortbyName)
        table.sort(raidsTable, sortbyName)

        for key, item in ipairs(dungeonsTable) do
            info.text, info.arg1 = item.name, item.id
            UIDropDownMenu_AddButton(info)
        end

        UIDropDownMenu_AddSeparator()

        for key, item in ipairs(raidsTable) do
            info.text, info.arg1 = item.name, item.id
            UIDropDownMenu_AddButton(info)
        end

end

function sortbyName(a,b)
    return a.name < b.name
end

function ns:BuildOptionsFrame()

    local panel = CreateFrame("Frame")
    panel.name = addonName               -- see panel fields
    InterfaceOptions_AddCategory(panel)  -- see InterfaceOptions API

    -- add widgets to the panel as desired
    local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalLarge")
    title:SetPoint("TOPLEFT")
    title:SetText("Geezer")

    local btn = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	btn:SetPoint("TOPLEFT", 0, -40)
	btn:SetText("Show/Hide")
	btn:SetWidth(150)
	btn:SetScript("OnClick", function()
		ns:ToggleRandom()
	end)

    local dropDown = CreateFrame("Frame", "WPDemoDropDown", panel, "UIDropDownMenuTemplate")
    dropDown:SetPoint("TOPLEFT", -20, -80)
    UIDropDownMenu_SetWidth(dropDown, 200) -- Use in place of dropDown:SetWidth
    -- Bind an initializer function to the dropdown; see previous sections for initializer function examples.
    UIDropDownMenu_SetText(dropDown, "Select Classic Dungeon")
    UIDropDownMenu_Initialize(dropDown, WPDropDownDemo_Menu)

    local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalSmall")
    title:SetPoint("TOPLEFT", 0, -130)
    title:SetText("Slash Commands")
    
    local title = panel:CreateFontString("ARTWORK", nil, "GameTooltipTextSmall")
    title:SetPoint("TOPLEFT", 0, -150)
    title:SetText("/gz")

    local title = panel:CreateFontString("ARTWORK", nil, "GameTooltipTextSmall")
    title:SetPoint("TOPLEFT", 0, -160)
    title:SetText("/geezer")

    local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalSmall")
    title:SetPoint("TOPLEFT", 0, -200)
    title:SetText("If you would like to contribute by editing notes or reporting bugs. Please send an email to:")

    local title = panel:CreateFontString("ARTWORK", nil, "GameTooltipTextSmall")
    title:SetPoint("TOPLEFT", 0, -220)
    title:SetText("wowaddongeezer@gmail.com")

    -- local dropDown = CreateFrame("Frame", "WPDemoDropDown", panel, "UIDropDownMenuTemplate")
    -- dropDown:SetPoint("TOPLEFT", 200, -40)
    -- UIDropDownMenu_SetWidth(dropDown, 200) -- Use in place of dropDown:SetWidth
    -- -- Bind an initializer function to the dropdown; see previous sections for initializer function examples.
    -- UIDropDownMenu_SetText(dropDown, "WotLK")
    -- UIDropDownMenu_Initialize(dropDown, WPDropDownDemo_Menu)


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



