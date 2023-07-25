-- UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Window
local Window = Rayfield:CreateWindow({
	Name = "Phoenix Hub | Rebirth Champions X",
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
for i,v in pairs(game:GetService("Workspace").Scripts.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

-- Phoenix Hub Values
getgenv().PhoenixHubAutoClick = true
getgenv().PhoenixHubAutoSpinWheel = true
getgenv().PhoenixHubAutoRebirth = true
getgenv().PhoenixHubAutoDraw = true
getgenv().PhoenixHubAutoBuyPotions = true
getgenv().PhoenixHubAutoHatch = true
getgenv().PhoenixHubAutoCraft = true
getgenv().PhoenixHubWorldBoost = true
getgenv().PhoenixHubAutoCraft = true
getgenv().PhoenixHubAutoBuyPotionsAqua = true
getgenv().PhoenixHubSelectRebirths = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72
getgenv().PhoenixHubAmountOfPotions = 1, 10, 100

-- Phoenix Hub Functions
function PhoenixHubAutoClick()
	while getgenv().PhoenixHubAutoClick == true do
        game:GetService("ReplicatedStorage").Events.Click3:FireServer()
		wait(.0001)
	 end
    end

function PhoenixHubAutoSpinWheel()
while getgenv().PhoenixHubAutoSpinWheel == true do
   game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
end
end

function PhoenixHubAutoRebirth()
	while getgenv().PhoenixHubAutoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(getgenv().PhoenixHubSelectRebirths)
		wait(.0001)
	 end
	end

function PhoenixHubAutoDraw()
	while getgenv().PhoenixHubAutoDraw == true do
		game:GetService("ReplicatedStorage").Events.DestructionMachine:FireServer()
		wait(.0001)
	end
end

function PhoenixHubAutoHatch()
	while getgenv().PhoenixHubAutoHatch == true do
		game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(getgenv().PhoenixHubSelectEgg,"Triple")
		wait(.0001)
	 end
	end

function PhoenixHubAutoCraft()
	while getgenv().PhoenixHubAutoCraft == true do
		game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
		wait(.0001)
	 end
	end

function PhoenixHubWorldBoost()
	while getgenv().PhoenixHubWorldBoost == true do
		game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer("Clover")
		wait(.0001)
	 end
	end

function PhoenixHubAutoCraft()
	while getgenv().PhoenixHubAutoCraft == true do
		game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
		wait(.0001)
	 end
	end

function PhoenixHubAutoBuyPotions()
	while getgenv().PhoenixHubAutoBuyPotions == true do
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Clicks", getgenv().PhoenixHubAmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Gems", getgenv().PhoenixHubAmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Luck", getgenv().PhoenixHubAmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Rebirths", getgenv().PhoenixHubAmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2PetXP", getgenv().PhoenixHubAmountOfPotions)
		game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2HatchSpeed", getgenv().PhoenixHubAmountOfPotions)
		wait(.0001)
	 end
	end

function PhoenixHubAutoBuyPotionsAqua()
while getgenv().PhoenixHubAutoBuyPotionsAqua == true do
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x3Clicks",getgenv().PhoenixHubAmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x3Gems",getgenv().PhoenixHubAmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Luck",getgenv().PhoenixHubAmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x3Rebirths",getgenv().PhoenixHubAmountOfPotions,"aqua")
   game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2PetLevel",getgenv().PhoenixHubAmountOfPotions,"aqua")
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
	Name = "Select Rebirth",
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97},
	CurrentOption = "",
	Flag = "Dropdown1",
	Callback = function(Value)
		getgenv().PhoenixHubSelectRebirths = Value
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Spin Wheel",
	CurrentValue = false,
	Flag = "Toggle3",
	Callback = function(Value)
		getgenv().PhoenixHubAutoSpinWheel = Value
		PhoenixHubAutoSpinWheel()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Draw (Destruction Machine)",
	CurrentValue = false,
	Flag = "Toggle4",
	Callback = function(Value)
		getgenv().PhoenixHubAutoDraw = Value
		PhoenixHubAutoDraw()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Buy Boosts (Normal)",
	CurrentValue = false,
	Flag = "Toggle5",
	Callback = function(Value)
		getgenv().PhoenixHubAutoBuyPotions = Value
		PhoenixHubAutoBuyPotions()
	end,
})

local Toggle = AutoTab:CreateToggle({
	Name = "Auto Buy Boosts (Aqua)",
	CurrentValue = false,
	Flag = "Toggle8",
	Callback = function(Value)
		getgenv().PhoenixHubAutoBuyPotionsAqua = Value
		PhoenixHubAutoBuyPotionsAqua()
	end,
})

local Dropdown = AutoTab:CreateDropdown({
	Name = "Amount Of Boosts",
	Options = {1, 10, 100},
	CurrentOption = "",
	Flag = "Dropdown2",
	Callback = function(Value)
		getgenv().PhoenixHubAmountOfPotions = Value
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Redeem Chests",
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Spawn")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Beach")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Winter")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Nuclear")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hell")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Space")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Galaxy")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Shadow")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hacker")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Clover")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Fantasy")
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Redeem Codes",
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("moon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("heaven")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("nuclear")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("thanksfor50k")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("void")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("spooky")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("cave")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("100kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter2")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("hell")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("50m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("space")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("mars")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("alien")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("galactic")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("60m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("summer")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("150kthanks")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("kraken")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("lab")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fantasy")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("neon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("shadow")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("tutel")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("destruction")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("sun")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("saturn")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("hacker")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("blackhole")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("aqua")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("axolotls")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("update32")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("pixel")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("halloween")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("evil")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("90m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("seacave")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("ancient")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("pirate")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("95m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("christmas")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("santa")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("2023")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fish")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("ocean")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("molten")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("flower")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("100m")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("anniversary")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("jungle")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("dragon")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("clover")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("omgfreex3luck")
		wait(1)
		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fairy")
	end,
})

local Button = AutoTab:CreateButton({
	Name = "Best World Boost",
	Callback = function(Value)
		PhoenixHubWorldBoost()
	end,
})

-- Phoenix Hub Page 2
local EggsTab = Window:CreateTab("Eggs", 4400700509)

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Hatch",
	CurrentValue = false,
	Flag = "Toggle6",
	Callback = function(Value)
		getgenv().PhoenixHubAutoHatch = Value
		PhoenixHubAutoHatch()
	end,
})

local Dropdown = EggsTab:CreateDropdown({
	Name = "Select Egg",
	Options = Eggs_Table,
	CurrentOption = "",
	Flag = "Dropdown3",
	Callback = function(Value)
		getgenv().PhoenixHubSelectEgg = Value
	end,
})

local Toggle = EggsTab:CreateToggle({
	Name = "Auto Craft Pets",
	CurrentValue = false,
	Flag = "Toggle7",
	Callback = function(Value)
		getgenv().PhoenixHubAutoCraft = Value
		PhoenixHubAutoCraft()
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
local Label = SettingsTab:CreateLabel("Owner: qdft")

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




-- Dev Notes:

-- Note To qdft: This Is Not Complete So Get You Ass On And Finish It Already

-- Join Discord Needs To Be Set To Correct Discord Link

-- Rebirth Champions X Nearly Done

-- Whitelist Needs To Be Added To Premium