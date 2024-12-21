-- Hi! Obfuscate this script when your gonna use this.
-- Antware Key System
-- Version 1.0
-- By Ostensibly
-- @Antware-Apps-2024

-- How to use
-- Step 1: Place these in your code:
-- _G.KeyLink = "your key link (e.g. pastebin.com/raw/key_for_my_hub)" (THE PASTEBIN NEEDS TO BE FORMATTED LIKE THIS: "return 'your key'")
-- _G.ValidateFunction = function() end; -- this is where the action happens when you validate the key correctly to the key system/redeem the correct key
-- _G.GetKeyLink = "your get key link" -- this is where like checkpoints happen before you receive the actual key.

local AWUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local KeyInput = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Info = Instance.new("ImageLabel")
local RedeemBtn = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local GetKeyBtn = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Stat = Instance.new("TextLabel")
local KeySystem = Instance.new("Folder")

-- Properties

AWUI.Name = "AWUI"
AWUI.Parent = game.Players.LocalPlayer.PlayerGui
AWUI.Enabled = true
AWUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = AWUI
Main.Active = true
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.new(0.0352941, 0.0352941, 0.0352941)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0, 274, 0, 147)

UICorner.Parent = Main
UICorner.CornerRadius = UDim.new(0, 6)

KeyInput.Name = "KeyInput"
KeyInput.Parent = Main
KeyInput.AnchorPoint = Vector2.new(0.5, 0.5)
KeyInput.BackgroundColor3 = Color3.new(0.0117647, 0.0117647, 0.0117647)
KeyInput.BorderColor3 = Color3.new(0, 0, 0)
KeyInput.BorderSizePixel = 0
KeyInput.Position = UDim2.new(0.5, 0, 0.496598631, 0)
KeyInput.Size = UDim2.new(0, 200, 0, 50)
KeyInput.Font = Enum.Font.Unknown
KeyInput.PlaceholderText = "Paste your key here!"
KeyInput.Text = ""
KeyInput.TextColor3 = Color3.new(1, 1, 1)
KeyInput.TextSize = 14
KeyInput.TextWrapped = true

UICorner_2.Parent = KeyInput
UICorner_2.CornerRadius = UDim.new(0, 6)

Title.Name = "Title"
Title.Parent = Main
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.new(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.498175174, 0, 0.122448981, 0)
Title.Size = UDim2.new(0, 249, 0, 36)
Title.Font = Enum.Font.ArialBold
Title.Text = "Antware"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Info.Name = "Info"
Info.Parent = Main
Info.AnchorPoint = Vector2.new(0.5, 0.5)
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 1
Info.BorderColor3 = Color3.new(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.0583941601, 0, 0.10204082, 0)
Info.Size = UDim2.new(0, 20, 0, 20)
Info.Image = "rbxassetid://10723415903"

RedeemBtn.Name = "RedeemBtn"
RedeemBtn.Parent = Main
RedeemBtn.AnchorPoint = Vector2.new(0.5, 0.5)
RedeemBtn.BackgroundColor3 = Color3.new(0.0117647, 0.0117647, 0.0117647)
RedeemBtn.BorderColor3 = Color3.new(0, 0, 0)
RedeemBtn.BorderSizePixel = 0
RedeemBtn.Position = UDim2.new(0.290145993, 0, 0.833333313, 0)
RedeemBtn.Size = UDim2.new(0, 85, 0, 37)
RedeemBtn.Font = Enum.Font.Arial
RedeemBtn.Text = "Redeem"
RedeemBtn.TextColor3 = Color3.new(1, 1, 1)
RedeemBtn.TextSize = 14
RedeemBtn.TextWrapped = true

UICorner_3.Parent = RedeemBtn
UICorner_3.CornerRadius = UDim.new(0, 6)

GetKeyBtn.Name = "GetKeyBtn"
GetKeyBtn.Parent = Main
GetKeyBtn.AnchorPoint = Vector2.new(0.5, 0.5)
GetKeyBtn.BackgroundColor3 = Color3.new(0.0117647, 0.0117647, 0.0117647)
GetKeyBtn.BorderColor3 = Color3.new(0, 0, 0)
GetKeyBtn.BorderSizePixel = 0
GetKeyBtn.Position = UDim2.new(0.709854007, 0, 0.833333313, 0)
GetKeyBtn.Size = UDim2.new(0, 85, 0, 37)
GetKeyBtn.Font = Enum.Font.Arial
GetKeyBtn.Text = "Get Key"
GetKeyBtn.TextColor3 = Color3.new(1, 1, 1)
GetKeyBtn.TextSize = 14
GetKeyBtn.TextWrapped = true

UICorner_4.Parent = GetKeyBtn
UICorner_4.CornerRadius = UDim.new(0, 6)

Stat.Name = "Stat"
Stat.Parent = Main
Stat.AnchorPoint = Vector2.new(0.5, 0.5)
Stat.BackgroundColor3 = Color3.new(1, 1, 1)
Stat.BackgroundTransparency = 1
Stat.BorderColor3 = Color3.new(0, 0, 0)
Stat.BorderSizePixel = 0
Stat.Position = UDim2.new(0.498175174, 0, 0.285714298, 0)
Stat.Size = UDim2.new(0, 249, 0, 12)
Stat.Visible = false
Stat.Font = Enum.Font.ArialBold
Stat.Text = "STATUS"
Stat.TextColor3 = Color3.new(1, 1, 1)
Stat.TextScaled = true
Stat.TextSize = 14
Stat.TextWrapped = true

KeySystem.Name = "KeySystem"
KeySystem.Parent = AWUI

-- Module Scripts

local fake_module_scripts = {}

do -- KeySystem.KSM
	local script = Instance.new('ModuleScript', KeySystem)
	script.Name = "KSM"
	local function module_script()
		-- Key System Module/KSM
		-- By Ostensibly
		-- How to use: require(script.KSM):new():resetDefaults():validate(1234567890)
		
		local KSM = {}
		KSM.__index = KSM
		
		if not _G.GetKeyLink then
			game.Players.LocalPlayer:Kick("ERROR: Please put your 'Get Key Link' global on your script (example: _G.GetKeyLink = 'https://example.com')")
		end
		
		if not _G.ValidateFunction then
			game.Players.LocalPlayer:Kick("ERROR: Please put your 'Validate Function' global function on your script (example: _G.ValidateFunction = function() end;)")
		end

		if not _G.KeyLink then
			game.Players.LocalPlayer:Kick("ERROR: Please put your 'Key Link' global on your script (example: _G.KeyLink = 'https://something.com/raw/test')")
		end;
		
		function KSM:new()
			return setmetatable({
				["Validated"] = false,
				
			}, KSM)
		end
		
		function KSM:checkGlobalValues()
			if not _G.GetKeyLink then
				game.Players.LocalPlayer:Kick("ERROR: Please put your 'Get Key Link' global on your script (example: _G.GetKeyLink = 'https://example.com')")
			end
			
			if not _G.ValidateFunction then
				game.Players.LocalPlayer:Kick("ERROR: Please put your 'Validate Function' global function on your script (example: _G.ValidateFunction = function() end;)")
			end
		end
		
		function KSM:resetDefaults()
			self["Validated"] = false;
		end
		
		function KSM:setValue(property, value)
			self[property] = value
		end
		
		function KSM:loadRealKey()
			return loadstring(game:HttpGet(_G.KeyLink))()
		end
		
		function KSM:validate(key, realKey)
			realKey = realKey or self:loadRealKey()
			
			if key == realKey then
				self:setValue("Validated", true)
				
				_G.ValidateFunction()
			end
		end
		
		return KSM;
	end
	fake_module_scripts[script] = module_script
end


-- Scripts

local function INPIH_fake_script() -- Main.DragProperty 
	local script = Instance.new('LocalScript', Main)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(INPIH_fake_script)()
local function NEMB_fake_script() -- Main.KSMFunc 
	local script = Instance.new('LocalScript', Main)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local KeyInput = script.Parent.KeyInput
	local RedeemBtn = script.Parent.RedeemBtn
	local GKBtn = script.Parent.GetKeyBtn
	local Info = script.Parent.Info
	local Stat = script.Parent.Stat
	
	local OG_STAT_VAL = Stat.Text
	
	local KSM = require(script.Parent.Parent.KeySystem.KSM)
	
	function modifyStat(value)
		Stat.Text = value;
		Stat.Visible = true	
	end
	
	function resetStat()
		Stat.Visible = false
		Stat.Text = OG_STAT_VAL
	end
	
	function genericStatMod(value)
		modifyStat(value)
		task.wait(3)
		resetStat()
	end
	
	Info.MouseEnter:Connect(function()
		modifyStat("Key System by Ostensibly")
	end)
	
	Info.MouseLeave:Connect(function()
		resetStat()
	end)
	
	GKBtn.MouseButton1Click:Connect(function()
		setclipboard(_G.GetKeyLink);
		genericStatMod("Copied link")
	end)
	
	RedeemBtn.MouseButton1Click:Connect(function()
		local rawKey = KeyInput.Text
		local KSMClass = KSM:new()
		KSMClass:checkGlobalValues()
		KSMClass:validate(rawKey)
	end)
end
coroutine.wrap(NEMB_fake_script)()
