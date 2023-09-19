local addon_name, ns = ...
local Geezer = _G[ addon_name ]

local ace_config = LibStub("AceConfig-3.0")
local ace_config_dialog = LibStub("AceConfigDialog-3.0")

function Geezer:OnInitialize()
    -- code that you want to run when the addon is first loaded goes here.
    Geezer.Print('Geezer', 'OnInitialize')
    
    -- uses the "Default" profile instead of character-specific profiles
    -- https://www.wowace.com/projects/ace3/pages/api/ace-db-3-0
    Geezer.db = LibStub("AceDB-3.0"):New("GeezerDB", Geezer.defaults, true)

    -- registers an options table and adds it to the Blizzard options window
	-- https://www.wowace.com/projects/ace3/pages/api/ace-config-3-0
    ace_config:RegisterOptionsTable("Geezer", Geezer.options)
	Geezer.optionsFrame = ace_config_dialog:AddToBlizOptions("Geezer", "Geezer")

    -- adds a child options table, in this case our profiles panel
    local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	ace_config:RegisterOptionsTable("Geezer_Profiles", profiles)
	ace_config_dialog:AddToBlizOptions("Geezer_Profiles", "Profiles", "Geezer")

    -- https://www.wowace.com/projects/ace3/pages/api/ace-console-3-0
	Geezer:RegisterChatCommand("gz", "SlashCommand")
    Geezer:RegisterChatCommand("geezer", "SlashCommand")

    --GetSpellInfo2(320596)

    --self:BuildFrame()

end

function Geezer:OnEnable()
    -- called when the addon is enabled
    Geezer.Print('Geezer', 'OnEnable')
    Geezer:RegisterEvent("ZONE_CHANGED")
    Geezer:RegisterEvent("PLAYER_ENTERING_WORLD")
    Geezer:RegisterEvent("ENCOUNTER_START")
    Geezer:RegisterEvent("PLAYER_TARGET_CHANGED")
    Geezer:RegisterEvent("UNIT_TARGET")

    

    --Geezer:Print('Show on screen', self.db.profile.showOnScreen)
end

function Geezer:OnDisable()
    -- called when the addon is disabled
    self.Print('Geezer', 'OnDisable')
end

function Geezer:SlashCommand(input, editbox)
	if input == "enable" then
		Geezer:Enable()
		Geezer:Print("Enabled.")
	elseif input == "disable" then
		-- unregisters all events and calls HelloAce:OnDisable() if you defined that
		Geezer:Disable()
		Geezer:Print("Disabled.")
	elseif input == "message" then
		print("this is our saved message:", Geezer.db.profile.someInput)
	else
		Geezer:Print("Some useful help message.")
		-- https://github.com/Stanzilla/WoWUIBugs/issues/89
		InterfaceOptionsFrame_OpenToCategory(Geezer.optionsFrame)
		InterfaceOptionsFrame_OpenToCategory(Geezer.optionsFrame)
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
    Geezer:Print("Spell Id: ", id)
    Geezer:Print(GetSpellInfo(id))
    --Geezer:Print(string.format("|T%s:0|t|cff71d5ff%s|r", icon, name))
end

function Geezer:ENCOUNTER_START(encounterID, encounterName, difficultyID, groupSize)
    Geezer:Print("E:ENCOUNTER_START")
    Geezer:Print(encounterID, encounterName, difficultyID, groupSize)
end

function Geezer:PLAYER_TARGET_CHANGED()
    Geezer:Print("E:PLAYER_TARGET_CHANGED")
end

function Geezer:UNIT_TARGET(unitTarget)
    Geezer:Print("E:UNIT_TARGET")
    -- Geezer:Print("Type: ", UnitClassification(unitTarget))
    if (UnitExists("target")) then
        local name = UnitName("target") 
        local guid = UnitGUID("target")
        local name = UnitName("target") 
        local class = UnitClass("unit")
        local isEnemy = UnitIsEnemy("player","target")
        Geezer:Print("Name: ", name)   
        Geezer:Print("GUID: ", guid) 
        Geezer:Print("Is Enemy: ", isEnemy)


        if guid then
            --local link = unitLink:format(guid, name) -- clickable link
            local unit_type = strsplit("-", guid)
            if unit_type == "Creature" or unit_type == "Vehicle" then
                local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
                Geezer:Print(format("[%s] is a creature with NPC ID %d", name, npc_id))
            elseif unit_type == "Player" then
                local _, server_id, player_id = strsplit("-", guid)
                Geezer:Print(format("[%s] is a player with ID %s", name, player_id))
            end
	    end
    end
    
    -- Geezer:Print("Class: ", class)
    -- Geezer:Print("Is Enemy: ", isEnemy)
    -- Geezer:Print("GUID: ", guid)
    -- local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
    -- Geezer:Print(strsplit("-", guid))
    -- Geezer:Print(select(6, strsplit("-", guid)))
    -- ParseGUID("target") 

    -- local guid = UnitGUID("target")
	-- local name = UnitName("target")
	-- if guid then
	-- 	local link = unitLink:format(guid, name) -- clickable link
	-- 	local unit_type = strsplit("-", guid)
	-- 	if unit_type == "Creature" or unit_type == "Vehicle" then
	-- 		local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
	-- 		print(format("%s is a creature with NPC ID %d", link, npc_id))
	-- 	elseif unit_type == "Player" then
	-- 		local _, server_id, player_id = strsplit("-", guid)
	-- 		print(format("%s is a player with ID %s", link, player_id))
	-- 	end
	-- end

end


function Geezer:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    Geezer:Print("E:PLAYER_ENTERING_WORLD")
    if IsInInstance() then
        mapId = C_Map.GetBestMapForUnit("player") 
        -- Geezer:Print(format("You are in %s (%d)", C_Map.GetMapInfo(mapId).name, mapId))
        -- difficultyID = GetDungeonDifficultyID()
        -- Geezer:Print("difficultyID: ", difficultyID)
        -- d = GetDifficultyInfo(difficultyID)
        -- Geezer:Print("Difficulty: ", d)
        
        name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()
        Geezer:Print("Name: ", name)
        Geezer:Print("Instance Type: ", instanceType)
        Geezer:Print("Difficulty: ", difficultyName)
        Geezer:Print("Instance ID: ", instanceID)
        Geezer:Print("Map ID", mapId)
        Geezer:Print("Lfg Dungeon ID: ", LfgDungeonID)

        -- GetDifficultyInfo() - Returns information about a difficulty.
        -- GetDungeonDifficultyID() - Returns the selected dungeon difficulty.
        -- GetInstanceBootTimeRemaining() - Gets the time in seconds after which the player will be ejected from an instance.
        -- GetInstanceInfo() - Returns info for the map instance the character is currently in.
        -- GetLegacyRaidDifficultyID()
        -- GetRaidDifficultyID() - Returns the player's currently selected raid difficulty.
    else 
        Geezer:Print('Not in instance')
    end
    -- SetMapToCurrentZone()
    -- posx, posy = GetPlayerMapPosition("unit")
end

function Geezer:ZONE_CHANGED()
	local subzone = GetSubZoneText()
	Geezer:Print("You have changed zones!", GetZoneText(), subzone)
	if GetBindLocation() == subzone then
		Geezer:Print("Welcome Home!")
	end
end

function Geezer:CALENDAR_OPEN_EVENT()
	local subzone = GetSubZoneText()
	Geezer:Print("You have changed zones!", GetZoneText(), subzone)
    Geezer:Print("GetBindLocation", GetBindLocation())
	if GetBindLocation() == subzone then
		Geezer:Print("Welcome Home!")
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




