
local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

addonTable.defaults = {
	profile = {
		someToggle = true,
		someRange = 7,
		someInput = "Hello World",
		someSelect = 2, -- Banana,
		minimizeNotes = false
	},
}

-- https://www.wowace.com/projects/ace3/pages/ace-config-3-0-options-tables
addonTable.options = {
	type = "group",
	name = "Geezer",
	handler = gz,
	args = {
		
		searchInput = {
			type = "input",
			name = "",
			order = 1,
			width = "full",
		 	set = "SetSearchValue",
		},

		searchText = {
			type = "description",
			name = "Search for a dungeon, raid, or boss name. If note(s) are found the FIRST result will show on the main screen.\n\n",
			order = 3,
			fontSize = "medium"
		},

		randomButton = {
			type = "execute",
			name = "Show/Hide Random Note",
			desc = "Test",
			order = 4,
			func = "ToggleRandom"
		},

		slashCommandsText = {
			type = "description",
			name = "\r\nSlash Commands\n\n",
			order = 5,
			fontSize = "large"
		},

		slashCommands = {
			type = "description",
			name = "/gz search [your search text here]\n\n/gz show\n\n/gz hide",
			order = 6,
			fontSize = "medium"
		},

	},
}

function gz:TestMe()
	print('EZ')
	local instanceData = addonTable.data
	print(instanceData[math.random(#instanceData)])
	-- instance name search
	-- for key, item in pairs(instanceData) do
	-- 	if not firstRowFound and string.find(string.upper(instanceData[key].name, 1, true), string.upper(query)) then
	-- 		firstRowFound = key
	-- 	end
	-- 	counter = counter + 1
	-- end
end



function gz:SetSearchValue(info, value)
	self:SearchNotes(value)
end

