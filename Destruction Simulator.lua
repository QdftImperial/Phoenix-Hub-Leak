-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Destruction Simulator",
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
getgenv().PhoenixHubAddMoney = true
getgenv().PhoenixHubMaxLevel = true

-- Phoenix Hub Functions
function PhoenixHubAddMoney()
while getgenv().PhoenixHubAddMoney == true do
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins","999999999999999999",99999999)
    wait(.0001)
end
 end

function PhoenixHubMaxLevel()
while getgenv().PhoenixHubMaxLevel == true do
    game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels","500",10)
    wait(.0001)
end
 end

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub Updates")
local Label = HomeTab:CreateLabel("More Added Soon")
local Label = HomeTab:CreateLabel("Removed Key System")
local Label = HomeTab:CreateLabel("Last Updated: 11/06/2023")

-- Phoenix Hub Page 1
local AutoTab = Window:CreateTab("Auto Farm", 4400702457)

local Toggle = AutoTab:CreateToggle({
	Name = "Loop Give 100M",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().PhoenixHubAddMoney = Value
		PhoenixHubAddMoney()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Max Level",
	CurrentValue = false,
	Flag = "Toggle2",
	Callback = function(Value)
		getgenv().PhoenixHubMaxLevel = Value
		PhoenixHubMaxLevel()
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Give 100M",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins","999999999999999999",99999999)
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Add Levels",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels","500",10)
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Infinite XP Boost",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("XPBoost","999999999999999999",1000000000000000000)
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Infinite Coin Boost",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("CoinBoost","999999999999999999",1000000000000000000)
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Infinite Brick Boost",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("BrickBoost","999999999999999999",1000000000000000000)
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Infinite Super Jump Boost",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("SuperJump","999999999999999999",1000000000000000000)
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Infinite Extra Speed Boost",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("ExtraSpeed","999999999999999999",1000000000000000000)
	end,
})

-- Phoenix Hub Page 2
--local ModTab = Window:CreateTab("Gun Mods", 4370346582)

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
	end
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