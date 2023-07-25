-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Tapping Legends X",
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
getgenv().PhoenixHubAutoClick = true
getgenv().PhoenixHubAutoRebirth = true
getgenv().PhoenixHubSelectRebirth = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41

-- Phoenix Hub Functions
function PhoenixHubAutoClick()
    while getgenv().PhoenixHubAutoClick == true do
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
        wait(.0001)
     end
   end

function PhoenixHubAutoRebirth()
	while getgenv().PhoenixHubAutoRebirth == true do
		game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(getgenv().PhoenixHubSelectRebirth)
		wait(.0001)
	end
	 end

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub Updates")
local Label = HomeTab:CreateLabel("More Added Soon")
local Label = HomeTab:CreateLabel("Last Updated: 13/07/2023")

-- Phoenix Hub Page 1
local AutoTab = Window:CreateTab("Auto Farm", 4400702457)

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Click",
	CurrentValue = false,
	Flag = "Auto Click",
	Callback = function(Value)
		getgenv().PhoenixHubAutoClick = Value
		PhoenixHubAutoClick()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Rebirth",
	CurrentValue = false,
	Flag = "Auto Rebirth",
	Callback = function(Value)
		getgenv().PhoenixHubAutoRebirth = Value
		PhoenixHubAutoRebirth()
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Select Rebirth",
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41},
	CurrentOption = "",
	Flag = "Select Rebirth",
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
	Flag = "Speed",
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
	Flag = "Jump Power",
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
	Name = "Owner: qdft",
	Callback = function()
		setclipboard("qdft")
	end,
})

local Button = SettingsTab:CreateButton({
	Name = "Founder: wolfyz16",
	Callback = function()
		setclipboard("wolfyz16")
	end,
})

local Toggle = SettingsTab:CreateToggle({
	Name = "Anti AFK",
	CurrentValue = true,
	Flag = "Anti AFK",
	Callback = function()
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		    wait(1)
		    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end,
 })



-- Dev Notes

-- Still Gotta Add Stuff