-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | War Tycoon",
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
        	RememberJoins = false
        },
	KeySystem = false,
	KeySettings = {
		Title = "Phoenix Hub",
		Subtitle = "Key System",
		Note = "qdft",
		FileName = "PhoenixHubKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "PH.hzNAnnii"
	}
})

-- Phoenix Hub Player Settings
function findplayer(stringg)
	for _, v in pairs(game.Players:GetPlayers()) do
		if stringg:lower() == (v.Name:lower()):sub(1, #stringg) then
			return v
		elseif stringg:lower() == (v.DisplayName:lower()):sub(1, #stringg) then
			return v
		end
	end
end
local plyr = game:GetService("Players").LocalPlayer
getgenv().PhoenixHubNoclip = false

-- Phoenix Hub Values

-- Phoenix Hub Functions


-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub")
local Label = HomeTab:CreateLabel("Added Better ESP")
local Label = HomeTab:CreateLabel("Added Anti AFK In Settings")
local Label = HomeTab:CreateLabel("Last Updated: 14/07/2023")

-- Phoenix Hub Page 1
local PlayerTab = Window:CreateTab("Player", 6961018885)

local Button = PlayerTab:CreateButton({
	Name = "Remove Fall Damage",
	Callback = function()
        game:GetService("ReplicatedStorage")["ACS_Engine"].Events.FDMG:Destroy()
	end,
})

local Button = PlayerTab:CreateButton({
	Name = "Spin Wheel",
	Callback = function()
        game:GetService("ReplicatedStorage").SpinnerWheelRS.Remotes.RequestWheelSpin:FireServer()
	end,
})

local Toggle = PlayerTab:CreateToggle({
	Name = "Noclip",
	CurrentValue = false,
	Flag = "Noclip",
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

local Input = PlayerTab:CreateInput({
   Name = "Player Teleport",
   PlaceholderText = "Player Name",
   RemoveTextAfterFocusLost = true,
   Callback = function(txt)
	local plr = findplayer(txt)
	if plr then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
	end
   end,
})

local Input = PlayerTab:CreateInput({
    Name = "Teleport",
    PlaceholderText = "Place To Teleport",
    RemoveTextAfterFocusLost = true,
    Callback = function(V)
        if V == "CaptureFlag" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72.3417892, 47.9898872, 190.780029, 0.680867434, 5.25054418e-08, 0.732406676, -3.3883353e-08, 1, -4.01899243e-08, -0.732406676, 2.54761634e-09, 0.680867434)
            wait(1)
        elseif V == "FlagTop" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.658554, 101.933617, 243.443069, 0.492548406, -6.06884765e-09, 0.870285034, 1.31988127e-08, 1, -4.96626795e-10, -0.870285034, 1.17313421e-08, 0.492548406)
            wait(1)
        elseif V == "Oil1" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.8871346, 49.3404083, -418.566071, 0.30275166, -1.51036517e-08, -0.953069448, 1.23891597e-09, 1, -1.54538249e-08, 0.953069448, 3.49789797e-09, 0.30275166)
            wait(1)
        elseif V == "Oil2" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.3992796, 49.3079643, 700.028625, -0.081178993, -2.60053312e-08, 0.996699512, -9.95991734e-09, 1, 2.52802312e-08, -0.996699512, -7.87482168e-09, -0.081178993)
            wait(1)
		elseif V == "Oil3" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(70.2452469, 105.256592, 3436.47632, -0.837756753, -3.97584934e-08, 0.546043575, 4.7945008e-09, 1, 8.01678155e-08, -0.546043575, 6.97791336e-08, -0.837756753)
            wait(1)
		elseif V == "Oil4" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.7401428, 105.256577, -2062.43579, -0.491281301, 6.16810496e-08, -0.871000946, 5.26542294e-08, 1, 4.1117076e-08, 0.871000946, -2.56618318e-08, -0.491281301)
            wait(1)
        elseif V == "Foxtrot" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1079.34998, 34.6839981, -2140.05005, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			wait(1)
		elseif V == "Charlie" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2429.5022, 34.6840096, -1394.38086, 0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, 0.499959469)
			wait(1)
		elseif V == "Bravo" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2762.95703, 34.6840096, -605.228271, 0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, 0.342042685)
			wait(1)
		elseif V == "Delta" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1801.59888, 34.6840096, -2114.10376, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			wait(1)
		elseif V == "Echo" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-809.199829, 34.6840096, -2221.37329, 0.866007268, -0, -0.500031412, 0, 1, -0, 0.500031412, 0, 0.866007268)
			wait(1)
		elseif V == "Alpha" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2763.94824, 34.6840096, 480.549561, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			wait(1)
		elseif V == "Kilo" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3024.54883, 34.6840096, -387.249939, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			wait(1)
		elseif V == "Hotel" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2862.27832, 34.6840096, -1255.4718, 0.258864343, -0, -0.965913713, 0, 1, -0, 0.965913713, 0, 0.258864343)
			wait(1)
		elseif V == "Sierra" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1324.80042, 34.6850014, 2726.31934, -0.906296611, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, -0.906296611)
			wait(1)
		elseif V == "Romeo" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2276.7771, 34.6840096, 2394.35425, -0.965929747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
			wait(1)
		elseif V == "Omega" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2910.46582, 34.6840096, 1594.46936, -0.258864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
			wait(1)
		elseif V == "Lima" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3036.64819, 34.6840096, 694.149963, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			wait(1)
		elseif V == "Tango" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-933.76239, 34.6840096, 2561.41821, -0.707134247, 0, -0.707079291, 0, 1, 0, 0.707079291, 0, -0.707134247)
			wait(1)
		elseif V == "Golf" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1982.91138, 34.6840096, -1586.41626, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			wait(1)
		elseif V == "Victor" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2385.74902, 34.6850014, 2479.84912, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			wait(1)
		elseif V == "Zulu" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2372.36743, 34.6840096, 1514.42444, -0.258864403, 0, 0.965913713, 0, 1, 0, -0.965913713, 0, -0.258864403)
			wait(1)
     end
    end,
 })

local Paragraph = PlayerTab:CreateParagraph({Title = "Teleport Locations", Content = "CaptureFlag, FlagTop, Oil1, Oil2, Oil3, Oil4, Foxtrot, Charlie, Bravo, Delta, Echo, Alpha, Kilo, Hotel, Sierra, Romeo, Omega, Lima, Tango, Golf, Victor, Zulu"})

--Phoenix Hub Page 2
local ESPTab = Window:CreateTab("ESP", 4370344717)

local Esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/qd-ft/Phoenix-Hub/main/UI/Visuals/ESP.lua"))()

local Toggle = ESPTab:CreateToggle({
	Name = "Master Switch",
	CurrentValue = false,
	Flag = "Master Switch",
	Callback = function(Value)
Esp.Switches.Master = Value
	end,
 })

local Toggle = ESPTab:CreateToggle({
	Name = "Boxes ESP",
	CurrentValue = false,
	Flag = "Box ESP",
	Callback = function(Value)
Esp.Switches.Boxes = Value
	end,
 })

local Toggle = ESPTab:CreateToggle({
	Name = "Health Bar ESP",
	CurrentValue = false,
	Flag = "Health ESP",
	Callback = function(Value)
Esp.Switches.HealthBars = Value
	end,
 })


local Toggle = ESPTab:CreateToggle({
	Name = "Tracers",
	CurrentValue = false,
	Flag = "Tracers",
	Callback = function(Value)
Esp.Switches.Tracers = Value
	end,
 })


local Toggle = ESPTab:CreateToggle({
	Name = "Distance",
	CurrentValue = false,
	Flag = "Distance ESP",
	Callback = function(Value)
Esp.Switches.Distance = Value
	end,
 })


local Toggle = ESPTab:CreateToggle({
	Name = "Name ESP",
	CurrentValue = false,
	Flag = "Name ESP",
	Callback = function(Value)
Esp.Switches.Distance = Value
	end,
 })


local Toggle = ESPTab:CreateToggle({
	Name = "Skeleton ESP",
	CurrentValue = false,
	Flag = "Skeleton ESP",
	Callback = function(Value)
Esp.Switches.Skeleton = Value
	end,
 })

local Toggle = ESPTab:CreateToggle({
	Name = "Look Line",
	CurrentValue = false,
	Flag = "Look Line",
	Callback = function(Value)
Esp.Switches.LookLine = Value
	end,
 })

local Toggle = ESPTab:CreateToggle({
	Name = "Head Dot",
	CurrentValue = false,
	Flag = "Head Dot",
	Callback = function(Value)
Esp.Switches.HeadDot = Value
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

-- All Should Be Good Here