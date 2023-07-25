-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Giant Survival",
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

-- Phoenix Hub Values

-- Phoenix Hub Functions

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub Updates")
local Label = HomeTab:CreateLabel("Gonna Add Paid Weapons So Wait For That ;)")
local Label = HomeTab:CreateLabel("Removed Key System")
local Label = HomeTab:CreateLabel("Last Updated: 11/06/2023")

-- Phoenix Hub Page 1
local MiscTab = Window:CreateTab("Miscellaneous", 4370344717)

local Toggle = MiscTab:CreateToggle({
	Name = "Auto Add Money",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(state)
		if state then
            getgenv().Farming1 = true
                    while Farming1 == true do
            local ohTable1 = {
                [1] = {
                    [1] = false
                },
                [2] = {
                    [1] = 2
                }
            }
            workspace.__THINGS.__REMOTES.currencycollected:FireServer(ohTable1)
			wait()
		end
else
getgenv().Farming1 = false
end
	end,
})

local Button = MiscTab:CreateButton({
	Name = "Add Money",
	Callback = function()
		local ohTable1 = {
			[1] = {
				[1] = false
			},
			[2] = {
				[1] = 2
			}
		}
		
		workspace.__THINGS.__REMOTES.currencycollected:FireServer(ohTable1)
		end
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