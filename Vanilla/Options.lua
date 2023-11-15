
local addonName, ns = ...

function WPDropDownDemo_Menu_Classic(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	info.func = WPDropDownDemo_OnClick

	local instanceData = ns.data
	local dungeonsTable = { }
	local raidsTable = { }
	
	for key, item in pairs(instanceData) do
		if item.version == 1 then
			if item.instanceType == 1 then
				table.insert(dungeonsTable, { id = key, name = item.name })
			else
				table.insert(raidsTable, { id = key, name = item.name })
			end
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

function WPDropDownDemo_Menu_TBC(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	info.func = WPDropDownDemo_OnClick

	local instanceData = ns.data
	local dungeonsTable = { }
	local raidsTable = { }

	for key, item in pairs(instanceData) do
		if item.version == 2 then
			if item.instanceType == 1 then
				table.insert(dungeonsTable, { id = key, name = item.name })
			else
				table.insert(raidsTable, { id = key, name = item.name })
			end
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

function WPDropDownDemo_Menu_Wrath(frame, level, menuList)
	local info = UIDropDownMenu_CreateInfo()
	info.func = WPDropDownDemo_OnClick

	local instanceData = ns.data
	local dungeonsTable = { }
	local raidsTable = { }

	for key, item in pairs(instanceData) do
		if item.version == 3 then
			if item.instanceType == 1 then
				table.insert(dungeonsTable, { id = key, name = item.name })
			else
				table.insert(raidsTable, { id = key, name = item.name })
			end
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

function WPDropDownDemo_OnClick(self, arg1, arg2, checked)
    ns:InitializeBossDropdown(arg1)
    ns:ShowNote(arg1, nil, nil)
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
    UIDropDownMenu_SetText(dropDown, "Classic")
    UIDropDownMenu_Initialize(dropDown, WPDropDownDemo_Menu_Classic)

    -- local dropDown = CreateFrame("Frame", "WPDemoDropDown", panel, "UIDropDownMenuTemplate")
    -- dropDown:SetPoint("TOPLEFT", 200, -80)
    -- UIDropDownMenu_SetWidth(dropDown, 200) -- Use in place of dropDown:SetWidth
    -- -- Bind an initializer function to the dropdown; see previous sections for initializer function examples.
    -- UIDropDownMenu_SetText(dropDown, "The Burning Crusade")
    -- UIDropDownMenu_Initialize(dropDown, WPDropDownDemo_Menu_TBC)

	-- local dropDown = CreateFrame("Frame", "WPDemoDropDown", panel, "UIDropDownMenuTemplate")
    -- dropDown:SetPoint("TOPLEFT", 420, -80)
    -- UIDropDownMenu_SetWidth(dropDown, 200) -- Use in place of dropDown:SetWidth
    -- -- Bind an initializer function to the dropdown; see previous sections for initializer function examples.
    -- UIDropDownMenu_SetText(dropDown, "Wrath of the Lich King")
    -- UIDropDownMenu_Initialize(dropDown, WPDropDownDemo_Menu_Wrath)

    local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalSmall")
    title:SetPoint("TOPLEFT", 0, -170)
    title:SetText("Slash Commands")
    
    local title = panel:CreateFontString("ARTWORK", nil, "GameTooltipTextSmall")
    title:SetPoint("TOPLEFT", 0, -190)
    title:SetText("/gz")

    local title = panel:CreateFontString("ARTWORK", nil, "GameTooltipTextSmall")
    title:SetPoint("TOPLEFT", 0, -200)
    title:SetText("/geezer")

    local title = panel:CreateFontString("ARTWORK", nil, "GameFontNormalSmall")
    title:SetPoint("TOPLEFT", 0, -240)
    title:SetText("If you would like to contribute by editing notes or reporting bugs. Please send an email to:")

    local title = panel:CreateFontString("ARTWORK", nil, "GameTooltipTextSmall")
    title:SetPoint("TOPLEFT", 0, -260)
    title:SetText("wowaddongeezer@gmail.com")

    -- local dropDown = CreateFrame("Frame", "WPDemoDropDown", panel, "UIDropDownMenuTemplate")
    -- dropDown:SetPoint("TOPLEFT", 200, -40)
    -- UIDropDownMenu_SetWidth(dropDown, 200) -- Use in place of dropDown:SetWidth
    -- -- Bind an initializer function to the dropdown; see previous sections for initializer function examples.
    -- UIDropDownMenu_SetText(dropDown, "WotLK")
    -- UIDropDownMenu_Initialize(dropDown, WPDropDownDemo_Menu)


end


function sortbyName(a,b)
    return a.name < b.name
end