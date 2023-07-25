-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Tapping Masters",
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
local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Scripted.EggHolders()) do
    table.insert(Eggs_Table, v.Name)
end

-- Phoenix Hub Values
getgenv().PhoenixHubAutoClick = true
getgenv().PhoenixHubAutoRebirth = true
getgenv().PhoenixHubAutoHatch = true
--getgenv().PhoenixHubSelectEggAmount = 1, 3
--getgenv().PhoenixHubSelectRebirth = 1, 5, 10, 25, 50, 100, 250

-- Phoenix Hub Functions
function PhoenixHubAutoClick()
while getgenv().PhoenixHubAutoClick == true do
	game:GetService("ReplicatedStorage").Events.Click:FireServer()
	wait(.0001)
end
 end

function PhoenixHubAutoHatch()
while getgenv().PhoenixHubAutoHatch == true do
	game:GetService("ReplicatedStorage").Functions.Hatch:InvokeServer(getgenv().PhoenixHubSelectEgg,getgenv().PhoenixHubSelectEggAmount)
end
 end

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub Updates")
local Label = HomeTab:CreateLabel("More Added Soon")
local Label = HomeTab:CreateLabel("Last Updated: 12/06/2023")

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

--local Toggle = AutoTab:CreateToggle({
--	Name = "Auto Rebirth",
--	CurrentValue = false,
--	Flag = "Toggle2",
--	Callback = function(Value)
--		getgenv().PhoenixHubAutoRebirth = Value
--		PhoenixHubAutoRebirth()
--	end,
--})

--local Dropdown = AutoTab:CreateDropdown({
--	Name = "Select Rebirth",
--	Options = {1, 5, 10, 25, 50, 100, 250},
--	CurrentOption = "",
--	Flag = "Dropdown1",
--	Callback = function(Value)
--		getgenv().PhoenixHubSelectRebirths = Value
--	end,
--})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Hatch",
	CurrentValue = false,
	Flag = "Toggle2",
	Callback = function(Value)
		getgenv().PhoenixHubAutoHatch = Value
		PhoenixHubAutoHatch()
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Select Egg Amount",
	Options = {1, 3},
	CurrentOption = "",
	Flag = "Dropdown1",
	Callback = function(Value)
		getgenv().PhoenixHubSelectEggAmount = Value
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Select Egg",
	Options = Eggs_Table,
	CurrentOption = "",
	Flag = "Dropdown3",
	Callback = function(Value)
		getgenv().PhoenixHubSelectEgg = Value
	end,
})

-- Phoenix Hub Page 2

-- Phoenix Hub Page 3
local PlayerTab = Window:CreateTab("Player", 6961018885)

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

-- Auto Rebirth Bit Broken Lmao