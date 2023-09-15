addon = LibStub("AceAddon-3.0"):NewAddon("Geezer", "AceConsole-3.0", "AceEvent-3.0")
local ace_config = LibStub("AceConfig-3.0")
local ace_config_dialog = LibStub("AceConfigDialog-3.0")

function addon:OnInitialize()
    -- code that you want to run when the addon is first loaded goes here.
    self.Print('Geezer', 'OnInitialize')
    
    -- uses the "Default" profile instead of character-specific profiles
    -- https://www.wowace.com/projects/ace3/pages/api/ace-db-3-0
    self.db = LibStub("AceDB-3.0"):New("GeezerDB", self.defaults, true)

    -- registers an options table and adds it to the Blizzard options window
	-- https://www.wowace.com/projects/ace3/pages/api/ace-config-3-0
    
    ace_config:RegisterOptionsTable("Geezer", self.options)
	self.optionsFrame = ace_config_dialog:AddToBlizOptions("Geezer", "Geezer")

    -- adds a child options table, in this case our profiles panel
    local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	ace_config:RegisterOptionsTable("Geezer_Profiles", profiles)
	ace_config_dialog:AddToBlizOptions("Geezer_Profiles", "Profiles", "Geezer")

    -- https://www.wowace.com/projects/ace3/pages/api/ace-console-3-0
	self:RegisterChatCommand("gz", "SlashCommand")
    self:RegisterChatCommand("geezer", "SlashCommand")

    GetSpellInfo2(320596)

end

function addon:OnEnable()
    -- called when the addon is enabled
    self.Print('Geezer', 'OnEnable')
    self:RegisterEvent("ZONE_CHANGED")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("ENCOUNTER_START")
    self:RegisterEvent("PLAYER_TARGET_CHANGED")
    self:RegisterEvent("UNIT_TARGET")

    

    --self:Print('Show on screen', self.db.profile.showOnScreen)
end

function addon:OnDisable()
    -- called when the addon is disabled
    self.Print('Geezer', 'OnDisable')
end

function addon:SlashCommand(input, editbox)
	if input == "enable" then
		self:Enable()
		self:Print("Enabled.")
	elseif input == "disable" then
		-- unregisters all events and calls HelloAce:OnDisable() if you defined that
		self:Disable()
		self:Print("Disabled.")
	elseif input == "message" then
		print("this is our saved message:", self.db.profile.someInput)
	else
		self:Print("Some useful help message.")
		-- https://github.com/Stanzilla/WoWUIBugs/issues/89
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		InterfaceOptionsFrame_OpenToCategory(self.optionsFrame)
		--[[ or as a standalone window
		if ACD.OpenFrames["HelloAce_Options"] then
			ACD:Close("HelloAce_Options")
		else
			ACD:Open("HelloAce_Options")
		end
		]]
	end
end

function GetSpellInfo2(id)
    addon:Print("Spell Id: ", id)
    addon:Print(GetSpellInfo(id))
    --addon:Print(string.format("|T%s:0|t|cff71d5ff%s|r", icon, name))
end

function addon:ENCOUNTER_START(encounterID, encounterName, difficultyID, groupSize)
    self:Print("E:ENCOUNTER_START")
    self:Print(encounterID, encounterName, difficultyID, groupSize)
end

function addon:PLAYER_TARGET_CHANGED()
    self:Print("E:PLAYER_TARGET_CHANGED")
end

function addon:UNIT_TARGET(unitTarget)
    self:Print("E:UNIT_TARGET")
    self:Print("Type: ", UnitClassification(unitTarget))

    local name = UnitName("target") 
    local guid = UnitGUID("target")
    local name = UnitName("target") 
    local class = UnitClass("unit")
    local isEnemy = UnitIsEnemy("player","target")
    self:Print("Name: ", name)
    self:Print("Class: ", class)
    self:Print("Is Enemy: ", isEnemy)
    self:Print("GUID: ", guid) 
end

function addon:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    self:Print("E:PLAYER_ENTERING_WORLD")
    if IsInInstance() then
        mapId = C_Map.GetBestMapForUnit("player") 
        -- addon:Print(format("You are in %s (%d)", C_Map.GetMapInfo(mapId).name, mapId))
        -- difficultyID = GetDungeonDifficultyID()
        -- addon:Print("difficultyID: ", difficultyID)
        -- d = GetDifficultyInfo(difficultyID)
        -- addon:Print("Difficulty: ", d)
        
        name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()
        addon:Print("Name: ", name)
        addon:Print("Instance Type: ", instanceType)
        addon:Print("Difficulty: ", difficultyName)
        addon:Print("Instance ID: ", instanceID)
        addon:Print("Map ID", mapId)
        addon:Print("Lfg Dungeon ID: ", LfgDungeonID)

        -- GetDifficultyInfo() - Returns information about a difficulty.
        -- GetDungeonDifficultyID() - Returns the selected dungeon difficulty.
        -- GetInstanceBootTimeRemaining() - Gets the time in seconds after which the player will be ejected from an instance.
        -- GetInstanceInfo() - Returns info for the map instance the character is currently in.
        -- GetLegacyRaidDifficultyID()
        -- GetRaidDifficultyID() - Returns the player's currently selected raid difficulty.
    else 
        addon:Print('Not in instance')
    end
    -- SetMapToCurrentZone()
    -- posx, posy = GetPlayerMapPosition("unit")
end

function addon:ZONE_CHANGED()
	local subzone = GetSubZoneText()
	self:Print("You have changed zones!", GetZoneText(), subzone)
	if GetBindLocation() == subzone then
		self:Print("Welcome Home!")
	end
end

function addon:CALENDAR_OPEN_EVENT()
	local subzone = GetSubZoneText()
	self:Print("You have changed zones!", GetZoneText(), subzone)
    self:Print("GetBindLocation", GetBindLocation())
	if GetBindLocation() == subzone then
		self:Print("Welcome Home!")
	end
end



-- function addon:ENCOUNTER_START(event, ...)
--     local encounterID = ...
--     local note = self.data[encounterID]
--     if note then
--         self:ShowNote(note)
--     end
-- end

-- function addon:ENCOUNTER_END()
--     self.frame:Hide()
-- end



