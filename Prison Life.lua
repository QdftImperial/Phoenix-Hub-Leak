-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Prison Life",
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
		Note = "Thanks For Using Phoenix Hub",
		FileName = "PhoenixHubKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "PH.hzNAnnii"
	}
})

-- Phoenix Hub Player Settings
local plyr = game:GetService("Players").LocalPlayer
getgenv().PhoenixHubNoclip = false

-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub")
local Label = HomeTab:CreateLabel("The Best Script Ever")
local Label = HomeTab:CreateLabel("Last Updated: 16/04/2023")

-- Phoenix Hub Page 1
local PlayerTab = Window:CreateTab("Player", 6961018885)

local Input = PlayerTab:CreateInput({
    Name = "Teleport",
    PlaceholderText = "Place To Teleport",
    RemoveTextAfterFocusLost = true,
    Callback = function(V)
        if V == "Criminal Base" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-859.15161132813, 94.476051330566, 2058.5427246094)
            wait(1)
        elseif V == "Down Town" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-300.44033813477, 54.175037384033, 1781.2364501953)
            wait(1)
        elseif V == "Entrance" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(653.81713867188, 99.990005493164, 2272.083984375)
            wait(1)
        elseif V == "Gate Entrance" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(491.27182006836, 98.039939880371, 2216.3107910156)
            wait(1)
        elseif V == "Yard" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(781.6845703125, 97.999946594238, 2462.8779296875)
            wait(1)
        elseif V == "Hallway" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(860.78448486328, 99.990005493164, 2362.9597167969)
			wait(1)
		elseif V == "Cell Block" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.43115234375, 99.989990234375, 2440.3828125)
			wait(1)
		elseif V == "Cafeteria" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(932.06213378906, 99.989959716797, 2290.4250488281)
			wait(1)
		elseif V == "Armory" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.28918457031, 99.990005493164, 2285.4909667969)
			wait(1)
		elseif V == "Guards Only" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(830.04302978516, 99.990005493164, 2327.0859375)
        end
    end,
 })

local Paragraph = PlayerTab:CreateParagraph({Title = "Teleport Options", Content = "Criminal Base, Down Town, Entrance, Gate Entrance, Yard, Hallway, Cell Block, Cafeteria, Armory, Guards Only"})

local Toggle = PlayerTab:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		getgenv().PhoenixHubNoclip = Value
		if getgenv().PhoenixHubNoclip then
			noclip()
		end
	function noclip()
		game:GetService("RunService").Stepped:Connect(function()
			if getgenv().PhoenixHubNoclip == true then
				for i,v in pairs(plyr.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			end
		end)
	end 
	end,
})

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

-- Phoenix Hub Page 2
local MiscTab = Window:CreateTab("Misc", 3610254425)

local Label = SettingsTab:CreateLabel("Misc Tab Still In The Works")

-- Phoenix Hub Settings
local SettingsTab = Window:CreateTab("Settings", 9753762469)

local Button = SettingsTab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})

local Label = SettingsTab:CreateLabel("Owner: qdft#5597")