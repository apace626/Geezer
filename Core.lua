local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

--gz = LibStub("AceAddon-3.0"):NewAddon("Geezer", "AceConsole-3.0", "AceEvent-3.0")
local ace_config = LibStub("AceConfig-3.0")
local ace_config_dialog = LibStub("AceConfigDialog-3.0")
addonTable.data = {}



--TODO pull out instance data from table and only use that. dont scan all instances every time
--TODO hide not when not in instance
--TODO tanking for noobs, use image? contact them?





function gz:OnInitialize()
    -- code that you want to run when the addon is first loaded goes here.
    self.Print('Geezer', 'OnInitialize')
    
    -- uses the "Default" profile instead of character-specific profiles
    -- https://www.wowace.com/projects/ace3/pages/api/ace-db-3-0
    self.db = LibStub("AceDB-3.0"):New("GeezerDB", addonTable.defaults, true)

    -- registers an options table and adds it to the Blizzard options window
	-- https://www.wowace.com/projects/ace3/pages/api/ace-config-3-0
    ace_config:RegisterOptionsTable("Geezer", addonTable.options)
	self.optionsFrame = ace_config_dialog:AddToBlizOptions("Geezer", "Geezer")

    -- adds a child options table, in this case our profiles panel
    local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	ace_config:RegisterOptionsTable("Geezer_Profiles", profiles)
	ace_config_dialog:AddToBlizOptions("Geezer_Profiles", "Profiles", "Geezer")

    -- https://www.wowace.com/projects/ace3/pages/api/ace-console-3-0
	self:RegisterChatCommand("gz", "SlashCommand")
    self:RegisterChatCommand("geezer", "SlashCommand")

    gz:ClassicInitializeData()
    gz:BuildFrame()
end

function gz:OnEnable()
    self.Print('Geezer', 'OnEnable')
    self:RegisterEvent("ZONE_CHANGED")
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("ENCOUNTER_START")
    self:RegisterEvent("UNIT_TARGET")
end

function gz:OnDisable()
    self.Print('Geezer', 'OnDisable')
end

function gz:SlashCommand(input, editbox)
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

function gz:UNIT_TARGET(unitTarget)
    
    if (UnitExists("target")) then
        local name = UnitName("target") 
        local guid = UnitGUID("target")
        local name = UnitName("target") 
        local class = UnitClass("unit")
        local isEnemy = UnitIsEnemy("player","target")
        self:Print("Name: ", name)   
        self:Print("GUID: ", guid) 
        self:Print("Is Enemy: ", isEnemy)

        if guid then
            --local link = unitLink:format(guid, name) -- clickable link
            local unit_type = strsplit("-", guid)
            if unit_type == "Creature" or unit_type == "Vehicle" then
                local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
                self:Print(format("[%s] is a creature with NPC ID %d", name, npc_id))
                if isEnemy and self:IsInstanceBoss(instance_id, npc_id) then
                    self:ShowNote(instanceID, npc_id, nil)
                end
            elseif unit_type == "Player" then
                local _, server_id, player_id = strsplit("-", guid)
                self:Print(format("[%s] is a player with ID %s", name, player_id))
            end
	    end
        
    end
end


function gz:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    self:Print("E:PLAYER_ENTERING_WORLD")
    if IsInInstance() then
        mapId = C_Map.GetBestMapForUnit("player") 
        name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()

        self:Print("Name: ", name)
        self:Print("Instance Type: ", instanceType)
        self:Print("Difficulty: ", difficultyName)
        self:Print("Instance ID: ", instanceID)
        self:Print("Map ID", mapId)
        self:Print("Lfg Dungeon ID: ", LfgDungeonID)

        self:InitializeBossDropdown(instanceID)
        self:ShowNote(instanceID, nil, nil) -- show first boss
        
        -- GetDifficultyInfo() - Returns information about a difficulty.
        -- GetDungeonDifficultyID() - Returns the selected dungeon difficulty.
        -- GetInstanceBootTimeRemaining() - Gets the time in seconds after which the player will be ejected from an instance.
        -- GetInstanceInfo() - Returns info for the map instance the character is currently in.
        -- GetLegacyRaidDifficultyID()
        -- GetRaidDifficultyID() - Returns the player's currently selected raid difficulty.
    else 
        self:Print('Not in instance')
        --TODO REMOVE THIS, need to hide frame, but give user ability to vewi frames from map icon and settings.
        self:InitializeBossDropdown(36)
        self:ShowNote(36, nil, nil) -- show first boss
    end
end

function gz:ZONE_CHANGED()
	local subzone = GetSubZoneText()
	self:Print("You have changed zones!", GetZoneText(), subzone)
	if GetBindLocation() == subzone then
		self:Print("Welcome Home!")
	end
end

function gz:CALENDAR_OPEN_EVENT()
	local subzone = GetSubZoneText()
	self:Print("You have changed zones!", GetZoneText(), subzone)
    self:Print("GetBindLocation", GetBindLocation())
	if GetBindLocation() == subzone then
		self:Print("Welcome Home!")
	end
end

function gz:ENCOUNTER_START(encounterID, encounterName, difficultyID, groupSize)
    self:Print("E:ENCOUNTER_START")
    self:Print(encounterID, encounterName, difficultyID, groupSize)
    self:ShowNote(instanceID, nil, encounterID)
end

function gz:ShowNote(instanceID, npcID, encounterID)
    local title = ""
    local selectedBossNpcID = nil
    local noteItems = { "" }

    -- Grab first boss if not specified
    if not npcID and not encounterID then
        title = addonTable.data[instanceID][1].bossName
        selectedBossNpcID = addonTable.data[instanceID][1].npcID
        for _2, item2 in ipairs(addonTable.data[instanceID][1].notes) do
            table.insert(noteItems, item2)
        end
    else
        for _, item in ipairs(addonTable.data[instanceID]) do
            if (tonumber(npcID) == item.npcID) or (tonumber(encounterID) == item.encounterID) then
                selectedBossNpcID = item.npcID
                title = item.bossName
                for _2, item2 in ipairs(item.notes) do
                    table.insert(noteItems, item2)
                end
                --TODO: show text that no data is found and to contribute
            end
        end
    end

    addonTable.titleText:SetText(title)
    addonTable.notesText:SetText(table.concat(noteItems, "\n\n"))
    UIDropDownMenu_SetSelectedValue(addonTable.bossDropDown, selectedBossNpcID)

    --self:FitToContents()
end

function gz:IsInstanceBoss(instanceID, npcID)
    local instanceData = addonTable.data[tonumber(instanceID)]
    if instanceData then
        for _, item in ipairs(instanceData) do
            if tonumber(npcID) == item.npcID then
                return true
            end
        end
    end
    
    return false
end





