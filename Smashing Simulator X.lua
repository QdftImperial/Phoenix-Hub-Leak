-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Smashing Simulator X",
	LoadingTitle = "Phoenix Hub",
	LoadingSubtitle = "By qdft",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Phoenix Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "zUZsj8CeyS",
        	RememberJoins = true
        },
	KeySystem = false,
	KeySettings = {
		Title = "Phoenix Hub",
		Subtitle = "Key System",
		Note = "Join Discord For The Key",
		FileName = "PhoenixHubKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "PH.hzNAnnii"
	}
})

-- Phoenix Hub Locales

-- Phoenix Hub Values
getgenv().PhoenixHubAutoHatch = true

-- Phoenix Hub Functions

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub Updates")
local Label = HomeTab:CreateLabel("More Added Soon")
local Label = HomeTab:CreateLabel("Removed Key System")
local Label = HomeTab:CreateLabel("This Is Not Complete Way More Is Getting")
local Label = HomeTab:CreateLabel("Last Updated: 11/06/2023")

-- Phoenix Hub Page 1
local AutoTab = Window:CreateTab("Auto Farm", 4400702457)

local Button = AutoTab:CreateButton({
	Name = "Fast Throw",
	Callback = function()
		for i,v in pairs(getgc(true)) do
            if type(v) == "table" and rawget(v,"Force") ~= nil then
         v.Force = 5000
         v.ThrowDebounce = 0
         end
         end
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Claim Chest",
	Callback = function()
		game:GetService("ReplicatedStorage").ServerClientPathway.Miscellaneous.Functions.DailyChest:InvokeServer()
		wait(1)
		game:GetService("ReplicatedStorage").ServerClientPathway.Miscellaneous.Functions.GroupChest:InvokeServer()
	end,
})

-- Phoenix Hub Page 2
local MiscTab = Window:CreateTab("Miscellaneous", 4370344717)

local Button = MiscTab:CreateButton({
	Name = "Verify Twitter",
	Callback = function()
		game:GetService("ReplicatedStorage").Honeypot.Server.Remotes["Remotes - Server"]["VerifiedTwitter - RemoteEvent"]:FireServer("PhoenixHubRBX")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "Verify Discord",
	Callback = function()
		game:GetService("ReplicatedStorage").Honeypot.Server.Remotes["Remotes - Server"]["VerifiedDiscord - RemoteEvent"]:FireServer("PhoenixHub")
	end,
})

local Label = MiscTab:CreateLabel("To Claim Special Reward Verifying Twitter And Discord Required")

local Button = MiscTab:CreateButton({
	Name = "Claim Special Reward",
	Callback = function()
		game:GetService("ReplicatedStorage").Honeypot.Server.Remotes["Remotes - Server"]["ClaimSpecialReward - RemoteEvent"]:FireServer()
	end,
})

-- Phoenix Hub Page 3
local PlayerTab = Window:CreateTab("Player", 6961018885)

local Slider = PlayerTab:CreateSlider({
	Name = "Player Speed",
	Range = {0, 1000},
	Increment = 8,
	Suffix = "Speed",
	CurrentValue = 16,
	Flag = "Slider1",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end,
})

local Slider = PlayerTab:CreateSlider({
	Name = "Jump Power",
	Range = {0, 500},
	Increment = 10,
	Suffix = "Jump Power",
	CurrentValue = 50,
	Flag = "Slider2",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end,
})

-- Phoenix Hub Settings
local SettingsTab = Window:CreateTab("Settings", 9753762469)

local Button = SettingsTab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local Button = SettingsTab:CreateButton({
	Name = "Join Discord (Sets Clipboard)",
	Callback = function()
		setclipboard("discord.gg/zUZsj8CeyS")
	end,
})

local Label = SettingsTab:CreateLabel("Phoenix Hub Credits")
local Label = SettingsTab:CreateLabel("Owner: qdft#5597")





-- Dev Notes: