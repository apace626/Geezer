print("This loads first")

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

    --GetSpellInfo2(320596)

    --self:BuildFrame()

end

function addon:MyAddonFrame_OnLoad()
    -- called when the addon is enabled
    self.Print('Geezer', 'OnEnable')
    

    --self:Print('Show on screen', self.db.profile.showOnScreen)
end