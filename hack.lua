-- Gui to Lua
-- Version: 3.2

-- Instances:

local TowerTycoonHack = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local walkspeed = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local jumppower = Instance.new("TextBox")
local TextButton_2 = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")

--Properties:

TowerTycoonHack.Name = "TowerTycoonHack"
TowerTycoonHack.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TowerTycoonHack.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = TowerTycoonHack
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.306697994, 0, 0.173913047, 0)
main.Size = UDim2.new(0, 328, 0, 255)

frame.Name = "frame"
frame.Parent = main
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.Position = UDim2.new(-0.00224149227, 0, -0.00286445022, 0)
frame.Size = UDim2.new(0, 329, 0, 255)

UICorner.Parent = frame

ScrollingFrame.Parent = frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.Position = UDim2.new(0.0212765951, 0, 0.0235294122, 0)
ScrollingFrame.Size = UDim2.new(0, 314, 0, 243)

walkspeed.Name = "walkspeed"
walkspeed.Parent = ScrollingFrame
walkspeed.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
walkspeed.BackgroundTransparency = 1.000
walkspeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
walkspeed.Position = UDim2.new(0.184713379, 0, 0.282352954, 0)
walkspeed.Size = UDim2.new(0, 200, 0, 50)
walkspeed.Font = Enum.Font.SourceSans
walkspeed.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
walkspeed.PlaceholderText = "WALK SPEED"
walkspeed.Text = ""
walkspeed.TextColor3 = Color3.fromRGB(255, 255, 255)
walkspeed.TextSize = 14.000

TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextButton.Position = UDim2.new(0.151224434, 0, 0.0564506054, 0)
TextButton.Size = UDim2.new(0, 220, 0, 78)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "COLLECT MONEY"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

UICorner_2.Parent = TextButton

jumppower.Name = "jumppower"
jumppower.Parent = ScrollingFrame
jumppower.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
jumppower.BackgroundTransparency = 1.000
jumppower.BorderColor3 = Color3.fromRGB(0, 0, 0)
jumppower.Position = UDim2.new(0.184713364, 0, 0.37843141, 0)
jumppower.Size = UDim2.new(0, 200, 0, 50)
jumppower.Font = Enum.Font.SourceSans
jumppower.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
jumppower.PlaceholderText = "JUMP POWER"
jumppower.Text = ""
jumppower.TextColor3 = Color3.fromRGB(255, 255, 255)
jumppower.TextSize = 14.000

TextButton_2.Parent = ScrollingFrame
TextButton_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextButton_2.BackgroundTransparency = 1.000
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.184713364, 0, 0.47647059, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "RESET"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextSize = 14.000

Frame.Parent = ScrollingFrame
Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Frame.BorderColor3 = Color3.fromRGB(67, 67, 67)
Frame.Position = UDim2.new(0.149681538, 0, 0.259259284, 0)
Frame.Size = UDim2.new(0, 220, 0, 170)
Frame.ZIndex = 0

UICorner_3.Parent = Frame

TextButton_3.Parent = main
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BackgroundTransparency = 1.000
TextButton_3.Size = UDim2.new(0, 26, 0, 26)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.TextSize = 25.000

UICorner_4.Parent = main

-- Scripts:

local function UGSWGZ_fake_script() -- main.DraggableGUI 
	local script = Instance.new('LocalScript', main)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			if gui.Visible then
				update(input)
			end
		end
	end)
end
coroutine.wrap(UGSWGZ_fake_script)()
local function QUHINO_fake_script() -- walkspeed.LocalScript 
	local script = Instance.new('LocalScript', walkspeed)

	script.Parent.FocusLost:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = script.Parent.Text
	end)
end
coroutine.wrap(QUHINO_fake_script)()
local function KUZMSLD_fake_script() -- TextButton.base 
	local script = Instance.new('LocalScript', TextButton)
	local canclick = true

	script.Parent.MouseButton1Up:Connect(function()
		if canclick == true then
			canclick = false
			local playerpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			local collectpos = game.Workspace.Tycoons[game.Players.LocalPlayer.Team.Name].Essentials.Giver.CFrame
			game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = collectpos + Vector3.new(0, 0, 0)
			wait(1.5)
			game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = playerpos
			wait(3)
			canclick = true
		end

	end)
end
coroutine.wrap(KUZMSLD_fake_script)()
local function TBUAOHV_fake_script() -- jumppower.LocalScript 
	local script = Instance.new('LocalScript', jumppower)

	script.Parent.FocusLost:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = script.Parent.Text
	end)
end
coroutine.wrap(TBUAOHV_fake_script)()
local function XSCDX_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Up:Connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		script.Parent.Parent.walkspeed.Text = ""
		script.Parent.Parent.jumppower.Text = ""
	end)
end
coroutine.wrap(XSCDX_fake_script)()
local function ABUFNTA_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(ABUFNTA_fake_script)()
