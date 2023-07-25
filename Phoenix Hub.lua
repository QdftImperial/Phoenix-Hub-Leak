-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Universal",
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
getgenv().PhoenixHubChatSpam = true

-- Phoenix Hub Functions
function PhoenixHubChatSpam()
while getgenv().PhoenixHubChatSpam == true do
   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Phoenix Hub Winning","All")
   wait(2)
end
end


-- Phoenix Hub Home Page
local HomeTab = Window:CreateTab("Home", 4370345144)

local Label = HomeTab:CreateLabel("Phoenix Hub")
local Label = HomeTab:CreateLabel("Fixed ESP So Should Work Now")
local Label = HomeTab:CreateLabel("Added ESP Head Dot And Look Line")
local Label = HomeTab:CreateLabel("Added Anti AFK In Settings")
local Label = HomeTab:CreateLabel("Last Updated: 16/07/2023")

-- Phoenix Hub Page 1
local PlayerTab = Window:CreateTab("Player", 6961018885)

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

local Toggle = PlayerTab:CreateToggle({
	Name = "Chat Spam",
	CurrentValue = false,
	Flag = "Chat Spam",
	Callback = function(Value)
		getgenv().PhoenixHubChatSpam = Value
		PhoenixHubChatSpam()
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