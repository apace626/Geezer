local addonName, addonTable = ...
local gz = addonTable.GeezerAddon

local ace_config = LibStub("AceConfig-3.0")
local ace_config_dialog = LibStub("AceConfigDialog-3.0")
local currentInstanceID
local currentDifficulty
addonTable.data = {}

--TODO pull out instance data from table and only use that. dont scan all instances every time
--TODO hide not when not in instance
--TODO add debug flag for print statements
--TODO override difficulty level to show all difficulites for search???

function gz:OnInitialize()
    -- uses the "Default" profile instead of character-specific profiles
    -- https://www.wowace.com/projects/ace3/pages/api/ace-db-3-0
    self.db = LibStub("AceDB-3.0"):New("GeezerDB", addonTable.defaults, true)

    -- registers an options table and adds it to the Blizzard options window
	-- https://www.wowace.com/projects/ace3/pages/api/ace-config-3-0
    ace_config:RegisterOptionsTable("Geezer", addonTable.options)
	self.optionsFrame = ace_config_dialog:AddToBlizOptions("Geezer", "Geezer")

    -- adds a child options table, in this case our profiles panel
    -- local profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	-- ace_config:RegisterOptionsTable("Geezer_Profiles", profiles)
	-- ace_config_dialog:AddToBlizOptions("Geezer_Profiles", "Profiles", "Geezer")

    -- https://www.wowace.com/projects/ace3/pages/api/ace-console-3-0
	self:RegisterChatCommand("gz", "SlashCommand")
    self:RegisterChatCommand("geezer", "SlashCommand")

    self:ClassicInitializeData()
    self:TBCnitializeData()
    self:CataclysmInitializeData()
    self:ShadowlandsInitializeData()
    self:DragonflightInitializeData()
    self:BuildFrame()
end

function gz:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("ENCOUNTER_START")
    self:RegisterEvent("UNIT_TARGET")
    self:RegisterEvent("UPDATE_INSTANCE_INFO")
end

function gz:OnDisable()
    self:LogDebug('Geezer', 'OnDisable')
end

function gz:SlashCommand(input, editbox)
    local _, _, cmd, args = string.find(input, "%s?(%w+)%s?(.*)")
    if cmd == "search" and args ~= '' then
        self:SearchNotes(args)
    elseif cmd == "hide" or cmd == "close" then
        self:HideFrame()
    elseif cmd == "open" or cmd == "show" then
        self:ShowFrame()
    else
		--self:Print("Some useful help message.")
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

        if guid then
            --local link = unitLink:format(guid, name) -- clickable link
            local unit_type = strsplit("-", guid)
            if unit_type == "Creature" or unit_type == "Vehicle" then
                local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
                --self:LogDebug(format("[%s] is a creature with NPC ID %d", name, npc_id))
                if isEnemy and self:IsInstanceBoss(instance_id, npc_id) then
                    self:ShowNote(instanceID, npc_id, nil)
                end
            elseif unit_type == "Player" then
                local _, server_id, player_id = strsplit("-", guid)
                --self:LogDebug(format("[%s] is a player with ID %s", name, player_id))
            end
	    end
        
    end
end


function gz:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    self:LogDebug("E:PLAYER_ENTERING_WORLD")
    if IsInInstance() then
        RequestRaidInfo() -- will trigger UPDATE_INSTANCE_INFO event
    else 
        self:LogDebug('Not in instance')
        --TODO REMOVE THIS, need to hide frame, but give user ability to vewi frames from map icon and settings.
        --self:InitializeBossDropdown(643)
        --self:ShowNote(643, nil, nil) -- show first boss
    end
end

function gz:ENCOUNTER_START(event, encounterID, encounterName, difficultyID, groupSize)
    self:LogDebug("E:ENCOUNTER_START")
    self:LogDebug(encounterID, encounterName, difficultyID, groupSize)
    self:ShowNote(self.currentInstanceID, nil, encounterID)
end

function gz:UPDATE_INSTANCE_INFO(event)
    name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()

    self.currentInstanceID = instanceID
    self.currentDifficulty = difficultyName

    -- self:LogDebug("Name: ", name)
    -- self:LogDebug("Instance Type: ", instanceType)
    -- self:LogDebug("Difficulty: ", difficultyName)
    -- self:LogDebug("Difficulty ID: ", difficultyID)
    -- self:LogDebug("Instance ID: ", instanceID)
    -- self:LogDebug("Map ID", mapId)
    -- self:LogDebug("Lfg Dungeon ID: ", LfgDungeonID)

    self:InitializeBossDropdown(self.currentInstanceID, difficultyName)
    self:ShowNote(self.currentInstanceID, nil, nil) -- show first boss
end

function gz:ShowNote(instanceID, npcID, encounterID)
    local title = ""
    local selectedBossNpcID = nil
    local noteItems = { "" }
    local instanceData = addonTable.data[tonumber(instanceID)]
    
    if not instanceData then
        return
    end
    
    -- Grab first boss if not specified
    if not npcID and not encounterID then
        title = instanceData[1].bossName
        selectedBossNpcID = instanceData[1].npcID
        for _2, item2 in ipairs(instanceData[1].notes) do
            self:InsertNote(noteItems, item2)
        end
    else
        for _, item in ipairs(instanceData) do
            if (tonumber(npcID) == item.npcID) or (tonumber(encounterID) == item.encounterID) then
                selectedBossNpcID = item.npcID
                title = item.bossName
                for _2, item2 in ipairs(item.notes) do
                    self:InsertNote(noteItems, item2)
                end
                --TODO: show text that no data is found and to contribute
            end
        end
    end

    if title == "" then
        title = "Geezer - Boss Not Found"
    end

    addonTable.titleText:SetText(title)

    if table.getn(noteItems) == 1 then
        addonTable.notesText:SetText(addonTable.MISSING_NOTE_TEXT)
    else
        addonTable.notesText:SetText(table.concat(noteItems, "\n\n"))
    end
    
    UIDropDownMenu_SetSelectedValue(addonTable.bossDropDown, selectedBossNpcID)

    self:ShowFrame()
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

function gz:InsertNote(noteTable, note)

    local timewalking = '[H/TW]'
    local heroic = '[H]'
    local mythic = '[M]'

    --self.currentDifficulty = 'Mythic'

    if self.currentDifficulty == 'Timewalking' then
        if not string.find(note, mythic, 1, true) and not string.find(note, heroic, 1, true) then
            table.insert(noteTable, note)        
        end
    elseif self.currentDifficulty == 'Heroic' then
        if not string.find(note, mythic, 1, true) then
            table.insert(noteTable, note)        
        end
    elseif self.currentDifficulty == 'Mythic' then
        if not string.find(note, heroic, 1, true) and not string.find(note, timewalking, 1, true) then
            table.insert(noteTable, note)        
        end
    else
        if not string.find(note, heroic, 1, true) and not string.find(note, timewalking, 1, true) and not string.find(note, mythic, 1, true) then
            table.insert(noteTable, note)        
        end
    end
end

function gz:SearchNotes(query)
    -- if a numebr then search for instance Id
    if is_numeric(query) then
        local instanceData = addonTable.data[tonumber(query)]
        if instanceData then
            self:InitializeBossDropdown(query)
            self:ShowNote(query, nil, nil)
        else
            gz:Print("0 notes found")
        end
    elseif string.len(query) < 3 then
        gz:Print("The search has a 3 character minimum, please type more.")
    else
        counter = 0
        local instanceData = addonTable.data
        local firstRowFound
        
        -- instance name search
        for key, item in pairs(instanceData) do
            if not firstRowFound and string.find(string.upper(instanceData[key].name, 1, true), string.upper(query)) then
                firstRowFound = key
            end
           counter = counter + 1
        end

        if firstRowFound then
            self:InitializeBossDropdown(firstRowFound)
            self:ShowNote(firstRowFound, nil, nil)
        else
            -- boss name search
            for key, item in pairs(instanceData) do
                for key2, item2 in pairs(instanceData[key]) do
                    if item2.bossName then
                        if string.find(string.upper(item2.bossName), string.upper(query), 1, true) then
                            self:InitializeBossDropdown(key)
                            self:ShowNote(key, item2.npcID, nil)
                            return
                        end
                    end
                end
            end
        end
       
        self:Print(counter, "instances searched")
    end
end








