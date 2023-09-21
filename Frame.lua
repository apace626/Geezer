local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

function gz:BuildFrame()

    local frame = CreateFrame("Frame", addonName, UIParent, BackdropTemplateMixin and "BackdropTemplate")

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
    addonTable.titleText = titleText

    local notesText = frame:CreateFontString(nil, "BACKGROUND")
    notesText:SetFontObject("GameFontNormal")
    notesText:SetJustifyV("TOP")
    notesText:SetJustifyH("LEFT")
    notesText:SetTextColor(1, 1, 1)
    notesText:SetText("Notes asdfasdfsafsaf asdfasdfdaf aasdfasfasdf")
    addonTable.notesText = notesText

    local myButton = CreateFrame("Button", addon_name, frame, "UIPanelButtonTemplate")
    myButton:SetPoint("CENTER", frame, "CENTER", 0, 0)
    myButton:SetWidth(20)
    myButton:SetHeight(20)
    myButton:SetText("+")
    myButton:SetPoint("TOPLEFT", 16, -13)
    myButton:SetScript("OnClick", function(self, button, down)
        ToggleDropDownMenu(1, nil, addonTable.dropDown, "cursor", 3, -3)
        print(addonTable.dropDown)
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


    local favoriteNumber = 42 -- A user-configurable setting
 
    -- Create the dropdown, and configure its appearance
    addonTable.dropDown = CreateFrame("FRAME", "WPDemoDropDown", frame, "UIDropDownMenuTemplate")
    -- addonTable.dropDown:SetPoint("CENTER")
    -- UIDropDownMenu_SetWidth(addonTable.dropDown, 200)
    -- --UIDropDownMenu_SetText(addonTable.dropDown, "Favorite number: " .. favoriteNumber)
    -- UIDropDownMenu_SetText(addonTable.dropDown, "Ragefire Chasm")
    
    -- Create and bind the initialization function to the dropdown menu
    UIDropDownMenu_Initialize(addonTable.dropDown, function(self, level, menuList)
        local titleInfo = UIDropDownMenu_CreateInfo()
        titleInfo.isTitle = true
        titleInfo.text = "Ragefire Chasm"
        UIDropDownMenu_AddButton(titleInfo) 
        
        UIDropDownMenu_AddSeparator()
        
        info = UIDropDownMenu_CreateInfo()
        info.func = self.SetValue
        info.text = "Dark Shaman Koranthal"
        info.value = 1 
        info.arg1 = 1
        UIDropDownMenu_AddButton(info)
        info.text = "Horseman Goliath"
        info.value = 2 
        info.arg1 = 2
        UIDropDownMenu_AddButton(info)
        -- if (level or 1) == 1 then
        -- -- Display the 0-9, 10-19, ... groups
        --     for i=0,4 do
        --         info.text, info.checked = i*10 .. " - " .. (i*10+9), favoriteNumber >= i*10 and favoriteNumber <= (i*10+9)
        --         info.menuList, info.hasArrow = i, true
        --         UIDropDownMenu_AddButton(info)
        --     end
        
        -- else
        -- -- Display a nested group of 10 favorite number options
        --     info.func = self.SetValue
        --     for i=menuList*10, menuList*10+9 do
        --         info.text, info.arg1, info.checked = i, i, i == favoriteNumber
        --         UIDropDownMenu_AddButton(info, level)
        --     end
        -- end
    end)
        
        -- Implement the function to change the favoriteNumber
    function addonTable.dropDown:SetValue(newValue)
        print(newValue)
        print('<><><><>')
        -- Update the text; if we merely wanted it to display newValue, we would not need to do this
        --UIDropDownMenu_SetText(dropDown, "Favorite number: " .. favoriteNumber)
        -- Because this is called from a sub-menu, only that menu level is closed by default.
        -- Close the entire menu with this next call
        --CloseDropDownMenus()
    end

    

    
















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

end




