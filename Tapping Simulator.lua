-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Tapping Simulator",
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
--local Eggs_Table = {}
--for i,v in pairs(game:GetService("Workspace").Shops:GetChildren()) do
--    table.insert(Eggs_Table, v.Name)
--end

-- Phoenix Hub Values
getgenv().PhoenixHubAutoClick = true
getgenv().PhoenixHubAutoRebirth = true
getgenv().PhoenixHubSelectRebirth = 1, 5, 10, 20, 100, 500, 2000, 4500, 8000, 12500, 18000, 24500, 32000, 40500, 50000, 75000, 125000

-- Phoenix Hub Functions
function PhoenixHubAutoClick()
while getgenv().PhoenixHubAutoClick == true do
	game:GetService("ReplicatedStorage").Events.Tap:FireServer("Main")
	wait(.0001)
	game:GetService("ReplicatedStorage").Events.Tap:FireServer("Events")
	wait(.0001)
end
 end

function PhoenixHubAutoRebirth()
while getgenv().PhoenixHubAutoRebirth == true do
	game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().PhoenixHubSelectRebirth)
	wait(.0001)
end
 end

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub Updates")
local Label = HomeTab:CreateLabel("Thanks For Using Phoenix Hub")
local Label = HomeTab:CreateLabel("Last Updated: 26/06/2023")

-- Phoenix Hub Page 1
local AutoTab = Window:CreateTab("Auto Farm", 4400702457)

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Click",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().PhoenixHubAutoClick = Value
		PhoenixHubAutoClick()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Toggle2",
	Callback = function(Value)
		getgenv().PhoenixHubAutoRebirth = Value
		PhoenixHubAutoRebirth()
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Rebirth Amount",
	Options = {1, 5, 10, 20, 100, 500, 2000, 4500, 8000, 12500, 18000, 24500, 32000, 40500, 50000, 75000, 125000},
	CurrentOption = "",
	Flag = "Dropdown1",
	Callback = function(Value)
		getgenv().PhoenixHubSelectRebirth = Value
	end,
})


-- Phoenix Hub Page 2

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
local Label = SettingsTab:CreateLabel("Owner: qdft")





-- Dev Notes: