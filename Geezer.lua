-- ns = namespace
-- addonName = addon name
local addonName, ns = ...

ns.data = {}

SLASH_GEEZER1, SLASH_GEEZER2 = '/gz', '/geezer'; -- 3.
function SlashCmdList.GEEZER(msg, editBox) -- 4.
    InterfaceOptionsFrame_OpenToCategory(addonName)
end

function ns:ToggleRandom()
    if ns:IsFrameShown() then
        ns:HideFrame()
    else
        -- Choose random note
        local instances = {}
        for key, value in pairs(ns.data) do
            table.insert(instances, key)
        end
        local instance = instances[math.random(#instances)]
        self:ShowNote(instance)
    end
end

function ns:ShowNote(instanceID, npcID, encounterID)
    local title = ""
    local selectedBossNpcID = nil
    local noteItems = { "" }
    local instanceData = ns.data[tonumber(instanceID)]
    
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

    ns.titleText:SetText(title)

    if table.getn(noteItems) == 1 then
        ns.notesText:SetText(ns.MISSING_NOTE_TEXT)
    else
        ns.notesText:SetText(table.concat(noteItems, "\n\n"))
    end
    
    UIDropDownMenu_SetSelectedValue(ns.bossDropDown, selectedBossNpcID)

    self:ShowFrame()
    --self:FitToContents()
end

function ns:IsInstanceBoss(instanceID, npcID)
    local instanceData = ns.data[tonumber(instanceID)]
    if instanceData then
        for _, item in ipairs(instanceData) do
            if tonumber(npcID) == item.npcID then
                return true
            end
        end
    end
    
    return false
end

function ns:InsertNote(noteTable, note)
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

function ns:SearchNotes(query)
    -- if a numebr then search for instance Id
    -- if is_numeric(query) then
    if 1 == 2 then
        local instanceData = ns.data[tonumber(query)]
        if instanceData then
            self:InitializeBossDropdown(query)
            self:ShowNote(query, nil, nil)
        else
            ns:Print("0 notes found")
        end
    elseif string.len(query) < 3 then
        ns:Print("The search has a 3 character minimum, please type more.")
    else
        counter = 0
        local instanceData = ns.data
        local firstRowFound
        local matchFound
        
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
            matchFound = true
        else
            -- boss name search
            for key, item in pairs(instanceData) do
                for key2, item2 in pairs(instanceData[key]) do
                    if item2.bossName then
                        if string.find(string.upper(item2.bossName), string.upper(query), 1, true) then
                            self:InitializeBossDropdown(key)
                            self:ShowNote(key, item2.npcID, nil)
                            matchFound = true
                            return
                        end
                    end
                end
            end
        end
       
        print(counter, "instances searched")

        if not matchFound then
            print("0 results found")
        end
    end
end


