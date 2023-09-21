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
        local playerName = UnitName("player")
        --message(':)')
        ToggleDropDownMenu(1, nil, dropDown, "cursor", 3, -3)
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
    local dropDown = CreateFrame("FRAME", "WPDemoDropDown", frame, "UIDropDownMenuTemplate")
    dropDown:SetPoint("CENTER")
    UIDropDownMenu_SetWidth(dropDown, 200)
    UIDropDownMenu_SetText(dropDown, "Favorite number: " .. favoriteNumber)
    
    -- Create and bind the initialization function to the dropdown menu
    UIDropDownMenu_Initialize(dropDown, function(self, level, menuList)
        local info = UIDropDownMenu_CreateInfo()
        if (level or 1) == 1 then
        -- Display the 0-9, 10-19, ... groups
            for i=0,4 do
                info.text, info.checked = i*10 .. " - " .. (i*10+9), favoriteNumber >= i*10 and favoriteNumber <= (i*10+9)
                info.menuList, info.hasArrow = i, true
                UIDropDownMenu_AddButton(info)
            end
        
        else
        -- Display a nested group of 10 favorite number options
            info.func = self.SetValue
            for i=menuList*10, menuList*10+9 do
                info.text, info.arg1, info.checked = i, i, i == favoriteNumber
                UIDropDownMenu_AddButton(info, level)
            end
        end
    end)
        
        -- Implement the function to change the favoriteNumber
    function dropDown:SetValue(newValue)
        favoriteNumber = newValue
        -- Update the text; if we merely wanted it to display newValue, we would not need to do this
        UIDropDownMenu_SetText(dropDown, "Favorite number: " .. favoriteNumber)
        -- Because this is called from a sub-menu, only that menu level is closed by default.
        -- Close the entire menu with this next call
        CloseDropDownMenus()
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


--- Opts:
---     name (string): Name of the dropdown (lowercase)
---     parent (Frame): Parent frame of the dropdown.
---     items (Table): String table of the dropdown options.
---     defaultVal (String): String value for the dropdown to default to (empty otherwise).
---     changeFunc (Function): A custom function to be called, after selecting a dropdown option.
-- function gz:createDropdown(opts)
--     print('<><><><><><><><><><><><>')
    
--     local dropdown_name = '$parent_' .. opts['name'] .. '_dropdown'
--     print(dropdown_name)
--     local menu_items = opts['items'] or {}
--     local title_text = opts['title'] or ''
--     local dropdown_width = 0
--     local default_val = opts['defaultVal'] or ''
--     local change_func = opts['changeFunc'] or function (dropdown_val) end

--     local dropdown = CreateFrame("Frame", dropdown_name, opts['parent'], 'UIDropDownMenuTemplate')
--     local dd_title = dropdown:CreateFontString(dropdown, 'BACKGROUND')
--     dd_title:SetPoint("TOPLEFT", 20, 10)

--     for _, item in pairs(menu_items) do -- Sets the dropdown width to the largest item string width.
--         dd_title:SetText(item)
--         local text_width = dd_title:GetStringWidth() + 20
--         if text_width > dropdown_width then
--             dropdown_width = text_width
--         end
--     end

--     UIDropDownMenu_SetWidth(dropdown, dropdown_width)
--     UIDropDownMenu_SetText(dropdown, default_val)
--     dd_title:SetText(title_text)

--     UIDropDownMenu_Initialize(dropdown, function(self, level, _)
--         local info = UIDropDownMenu_CreateInfo()
--         for key, val in pairs(menu_items) do
--             info.text = val;
--             info.checked = false
--             info.menuList= key
--             info.hasArrow = false
--             info.func = function(b)
--                 UIDropDownMenu_SetSelectedValue(dropdown, b.value, b.value)
--                 UIDropDownMenu_SetText(dropdown, b.value)
--                 b.checked = true
--                 change_func(dropdown, b.value)
--             end
--             UIDropDownMenu_AddButton(info)
--         end
--     end)

--     return dropdown
-- end



