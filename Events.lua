local addonName, ns = ...

local eventFrame = CreateFrame("frame", "EventFrame")
eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
eventFrame:RegisterEvent("ENCOUNTER_START")
eventFrame:RegisterEvent("UNIT_TARGET")
eventFrame:RegisterEvent("UPDATE_INSTANCE_INFO")

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" then
        ns:PLAYER_ENTERING_WORLD(...)
    elseif event == "ENCOUNTER_START" then
        ns:ENCOUNTER_START(...)
    elseif event == "UNIT_TARGET" then
        ns:UNIT_TARGET(...)
    elseif event == "UPDATE_INSTANCE_INFO" then
        ns:UPDATE_INSTANCE_INFO(event)
    end
end)

function ns:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    --print("E:PLAYER_ENTERING_WORLD", isInitialLogin, isReloadingUi)
    inInstance, instanceType = IsInInstance()
    
    --if IsInInstance() then
    if inInstance then
        --RequestRaidInfo() -- will trigger UPDATE_INSTANCE_INFO event

        --name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()

        -- self.currentInstanceID = instanceID
        -- self.currentDifficulty = difficultyName

        -- print("Name: ", name)
        -- print("Instance Type: ", instanceType)
        -- print("Difficulty: ", difficultyName)
        -- print("Difficulty ID: ", difficultyID)
        -- print("Instance ID: ", instanceID)
        -- print("Map ID", mapId)
        -- print("Lfg Dungeon ID: ", LfgDungeonID)

        -- self:InitializeBossDropdown(self.currentInstanceID, difficultyName)
        -- self:ShowNote(self.currentInstanceID, nil, nil) -- show first boss


    else 
        --print('Not in instance')
        --TODO REMOVE THIS, need to hide frame, but give user ability to vewi frames from map icon and settings.
        --self:InitializeBossDropdown(643)
        --self:ShowNote(643, nil, nil) -- show first boss
    end
end

function ns:UNIT_TARGET(unitTarget)
    
    if (UnitExists("target")) then
        local name = UnitName("target") 
        local guid = UnitGUID("target")
        local name = UnitName("target") 
        local class = UnitClass("unit")
        local isEnemy = UnitIsEnemy("player","target")

        print(name)
        print('IsEnemy', isEnemy)

        if guid then
            --local link = unitLink:format(guid, name) -- clickable link
            local unit_type = strsplit("-", guid)
            if unit_type == "Creature" or unit_type == "Vehicle" then
                local _, _, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-", guid)
                print(format("[%s] is a creature with NPC ID %d", name, npc_id))
                if isEnemy and self:IsInstanceBoss(instance_id, npc_id) then
                    self:ShowNote(instanceID, npc_id, nil)
                end
            elseif unit_type == "Player" then
                local _, server_id, player_id = strsplit("-", guid)
                print(format("[%s] is a player with ID %s", name, player_id))
            end
	    end
        
    end
end

function ns:UPDATE_INSTANCE_INFO(event)
    --print('E:UPDATE_INSTANCE_INFO')
    name, instanceType, difficultyID, difficultyName, maxPlayers, dynamicDifficulty, isDynamic, instanceID, instanceGroupSize, LfgDungeonID = GetInstanceInfo()

    self.currentInstanceID = instanceID
    self.currentDifficulty = difficultyName

    print("Name: ", name)
    print("Instance Type: ", instanceType)
    print("Difficulty: ", difficultyName)
    -- print("Difficulty ID: ", difficultyID)
    print("Instance ID: ", instanceID)
    -- print("Map ID", mapId)
    -- print("Lfg Dungeon ID: ", LfgDungeonID)

    inInstance, instanceType = IsInInstance()

    if inInstance then
        self:InitializeBossDropdown(self.currentInstanceID, difficultyName)
        self:ShowNote(self.currentInstanceID, nil, nil) -- show first boss
    else 
        if ns:IsFrameShown() then
            ns:HideFrame()
        end
        --print('Not in instance')
    end
end

function ns:ENCOUNTER_START(event, encounterID, encounterName, difficultyID, groupSize)
    --print("E:ENCOUNTER_START")
    print(encounterID, encounterName, difficultyID, groupSize)
    self:ShowNote(self.currentInstanceID, nil, encounterID)
end