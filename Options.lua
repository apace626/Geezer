
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
			name = "Search for a dungeon, raid, or boss name. If note(s) are found the FIRST result will show on the main screen.\n\n\n\n",
			order = 3,
			fontSize = "medium"
		},

		slashCommandsText = {
			type = "description",
			name = "Slash Commands\n\n",
			order = 4,
			fontSize = "large"
		},

		slashCommands = {
			type = "description",
			name = "/gz search [your search text here]",
			order = 5,
			fontSize = "medium"
		},

	},
}

function gz:SetSearchValue(info, value)
	self:SearchNotes(value)
end

