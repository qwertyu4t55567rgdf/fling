local tween = game:GetService("TweenService")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer

local gui = Instance.new("ScreenGui")

gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.Name = "ScriptHub"
gui.ResetOnSpawn = false

local mainframe = Instance.new("Frame")

mainframe.Parent = gui
mainframe.Name = "Menu"
mainframe.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
mainframe.Size = UDim2.new(0, 310, 0, 522)
mainframe.Position = UDim2.new(0.064, 0, 0.135, 0)
mainframe.Visible = true

local ucmf = Instance.new("UICorner")

ucmf.Parent = mainframe
ucmf.CornerRadius = UDim.new(0, 8)

input.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.Insert then
		if mainframe.Visible == true then
			mainframe.Visible = false
		else
			mainframe.Visible = true
		end
	end
end)

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	local newPosition = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)

	local tween = TweenService:Create(mainframe, TweenInfo.new(0.1), {Position = newPosition})
	tween:Play()
end

mainframe.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = mainframe.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

mainframe.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)

local textname = Instance.new("TextLabel")

textname.Parent = mainframe
textname.Name = "textname"
textname.BackgroundTransparency = 1
textname.Size = UDim2.new(0, 309, 0, 50)
textname.Position = UDim2.new(0.003, 0, 0, 0)
textname.TextScaled = true
textname.TextColor3 = Color3.new(1, 1, 1)
textname.Text = "ScriptHub made by Faisal, d7m, qwertyu4t55567rgdf Team"
textname.Visible = true

local line = Instance.new("Frame")

line.Parent = mainframe
line.Name = "line"
line.Size = UDim2.new(0, 310, 0, 2)
line.Position = UDim2.new(0, 0, 0.096, 0)
line.BackgroundColor3 = Color3.new(1, 1, 1)
line.Visible = true

local scroll = Instance.new("ScrollingFrame")

scroll.Parent = mainframe
scroll.Name = "Scripts"
scroll.BackgroundTransparency = 1
scroll.Size = UDim2.new(0, 303, 0, 457)
scroll.Position = UDim2.new(0.013, 0, 0.111, 0)
scroll.CanvasSize = UDim2.new(0, 0, 10, 0)
scroll.ScrollBarThickness = 5
scroll.Visible = true

local script1 = Instance.new("TextLabel")

script1.Parent = scroll
script1.Name = "script1"
script1.BackgroundColor3 = Color3.new(1, 1, 1)
script1.BackgroundTransparency = 0
script1.Size = UDim2.new(0, 180, 0, 35)
script1.Position = UDim2.new(0.025, 0, 0.002, 0)
script1.TextScaled = true
script1.Text = "Fast pick up and crates"
script1.TextColor3 = Color3.new(0, 0, 0)
script1.Visible = true

local ucs1 = Instance.new("UICorner")

ucs1.Parent = script1
ucs1.CornerRadius = UDim.new(0, 8)

local load1 = Instance.new("TextButton")

load1.Parent = script1
load1.Name = "loads1"
load1.BackgroundColor3 = Color3.new(1, 1, 1)
load1.BackgroundTransparency = 0
load1.Size = UDim2.new(0, 80, 0, 35)
load1.Position = UDim2.new(1.1, 0, 0, 0)
load1.TextScaled = true
load1.Text = "Load"
load1.TextColor3 = Color3.new(0, 0, 0)
load1.Visible = true

local ucl1 = Instance.new("UICorner")

ucl1.Parent = load1
ucl1.CornerRadius = UDim.new(0, 8)

local function script1l()
	local proximityPrompts = {}

	workspace.DescendantAdded:Connect(function(item)
		if item:IsA("ProximityPrompt") then
			proximityPrompts[item] = {
				originalDuration = item.HoldDuration
			}
		end
	end)

	run.RenderStepped:Connect(function()
		for prompt, info in pairs(proximityPrompts) do
			prompt.HoldDuration = 0
		end
	end)
end

load1.MouseButton1Click:Connect(script1l)

local script2 = Instance.new("TextLabel")

script2.Parent = scroll
script2.Name = "script2"
script2.BackgroundColor3 = Color3.new(1, 1, 1)
script2.BackgroundTransparency = 0
script2.Size = UDim2.new(0, 180, 0, 35)
script2.Position = UDim2.new(0.025, 0, 0.013, 0)
script2.TextScaled = true
script2.Text = "AimBot V1"
script2.TextColor3 = Color3.new(0, 0, 0)
script2.Visible = true

local ucs2 = Instance.new("UICorner")

ucs2.Parent = script2
ucs2.CornerRadius = UDim.new(0, 8)

local load2 = Instance.new("TextButton")

load2.Parent = script2
load2.Name = "loads2"
load2.BackgroundColor3 = Color3.new(1, 1, 1)
load2.BackgroundTransparency = 0
load2.Size = UDim2.new(0, 80, 0, 35)
load2.Position = UDim2.new(1.1, 0, 0, 0)
load2.TextScaled = true
load2.Text = "Load"
load2.TextColor3 = Color3.new(0, 0, 0)
load2.Visible = true

local ucl2 = Instance.new("UICorner")

ucl2.Parent = load2
ucl2.CornerRadius = UDim.new(0, 8)

local function script2l()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Mick-gordon/Hyper-Escape/main/DeleteMobCheatEngine.lua"))()
end

load2.MouseButton1Click:Connect(script2l)

local script3 = Instance.new("TextLabel")

script3.Parent = scroll
script3.Name = "script3"
script3.BackgroundColor3 = Color3.new(1, 1, 1)
script3.BackgroundTransparency = 0
script3.Size = UDim2.new(0, 180, 0, 35)
script3.Position = UDim2.new(0.025, 0, 0.025, 0)
script3.TextScaled = true
script3.Text = "Fly - can ride down guy"
script3.TextColor3 = Color3.new(0, 0, 0)
script3.Visible = true

local ucs3 = Instance.new("UICorner")

ucs3.Parent = script3
ucs3.CornerRadius = UDim.new(0, 8)

local load3 =  Instance.new("TextButton")

load3.Parent = script3
load3.Name = "loads3"
load3.BackgroundColor3 = Color3.new(1, 1, 1)
load3.BackgroundTransparency = 0
load3.Size = UDim2.new(0, 80, 0, 35)
load3.Position = UDim2.new(1.1, 0, 0, 0)
load3.TextScaled = true
load3.Text = "Load"
load3.TextColor3 = Color3.new(0, 0, 0)
load3.Visible = true

local ucl3 = Instance.new("UICorner")

ucl3.Parent = load3
ucl3.CornerRadius = UDim.new(0, 8)

local function script3l()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:WaitForChild("HumanoidRootPart")

	local wallWalking = false

	local function toggleWallWalk()
		wallWalking = not wallWalking

		if wallWalking then
			humanoid.PlatformStand = true
		else
			humanoid.PlatformStand = false
			rootPart.CFrame = CFrame.new(rootPart.Position)
		end
	end

	game:GetService("UserInputService").InputBegan:Connect(function(input, isProcessed)
		if not isProcessed and input.KeyCode == Enum.KeyCode.Z then
			toggleWallWalk()
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if wallWalking then
			local camera = game.Workspace.CurrentCamera
			local direction = camera.CFrame.LookVector
			local moveDirection = Vector3.new(0, 0, 0)
			if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.W) then
				moveDirection = moveDirection + direction
			end
			if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.S) then
				moveDirection = moveDirection - direction
			end
			if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.A) then
				moveDirection = moveDirection - camera.CFrame.RightVector
			end
			if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.D) then
				moveDirection = moveDirection + camera.CFrame.RightVector
			end

			rootPart.Velocity = moveDirection * 30
		end
	end)
end

load3.MouseButton1Click:Connect(script3l)

local script4 = Instance.new("TextLabel")

script4.Parent = scroll
script4.Name = "script4"
script4.BackgroundColor3 = Color3.new(1, 1, 1)
script4.BackgroundTransparency = 0
script4.Size = UDim2.new(0, 180, 0, 35)
script4.Position = UDim2.new(0.025, 0, 0.037, 0)
script4.TextScaled = true
script4.Text = "Fling V1"
script4.TextColor3 = Color3.new(0, 0, 0)
script4.Visible = true

local ucs4 = Instance.new("UICorner")

ucs4.Parent = script4
ucs4.CornerRadius = UDim.new(0, 8)

local load4 = Instance.new("TextButton")

load4.Parent = script4
load4.Name = "loads4"
load4.BackgroundColor3 = Color3.new(1, 1, 1)
load4.BackgroundTransparency = 0
load4.Size = UDim2.new(0, 80, 0, 35)
load4.Position = UDim2.new(1.1, 0, 0, 0)
load4.TextScaled = true
load4.Text = "Load"
load4.TextColor3 = Color3.new(0, 0, 0)
load4.Visible = true

local ucl4 = Instance.new("UICorner")

ucl4.Parent = load4
ucl4.CornerRadius = UDim.new(0, 8)

local function script4l()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/qwertyu4t55567rgdf/fling/main/fling"))()
end

load4.MouseButton1Click:Connect(script4l)

local script5 = Instance.new("TextLabel")

script5.Parent = scroll
script5.Name = "script5"
script5.BackgroundColor3 = Color3.new(1, 1, 1)
script5.BackgroundTransparency = 0
script5.Size = UDim2.new(0, 120, 0, 35)
script5.Position = UDim2.new(0.025, 0, 0.048, 0)
script5.TextScaled = true
script5.Text = "Fullbright"
script5.TextColor3 = Color3.new(0, 0, 0)
script5.Visible = true

local ucs5 = Instance.new("UICorner")

ucs5.Parent =  script5
ucs5.CornerRadius = UDim.new(0, 8)

local control = Instance.new("TextBox")

control.Parent = script5
control.Name = "value"
control.BackgroundColor3 = Color3.new(1, 1, 1)
control.BackgroundTransparency = 0
control.Size = UDim2.new(0, 60, 0, 35)
control.Position = UDim2.new(1.067, 0, 0, 0)
control.ClearTextOnFocus = false
control.TextEditable = true
control.ShowNativeInput = true
control.PlaceholderText = "0 - 5"
control.PlaceholderColor3 = Color3.new(0.329412, 0.329412, 0.329412)
control.TextColor3 = Color3.new(0, 0, 0)
control.TextScaled = false
control.Text = ""
control.Visible = true

local uctb1 = Instance.new("UICorner")

uctb1.Parent = control
uctb1.CornerRadius = UDim.new(0, 20)

local save = Instance.new("TextButton")

save.Parent = script5
save.Name = "savebutton"
save.BackgroundColor3 = Color3.new(1, 1, 1)
save.BackgroundTransparency = 0
save.Size = UDim2.new(0, 80, 0, 35)
save.Position = UDim2.new(1.65, 0, 0, 0)
save.TextScaled = true
save.Text = "Save"
save.TextColor3 = Color3.new(0, 0, 0)
save.Visible = true

local ucsb1 = Instance.new("UICorner")

ucsb1.Parent = save
ucsb1.CornerRadius = UDim.new(0, 8)

local function script5l()
	local Atmosphere = game:GetService("Lighting"):FindFirstChild("Atmosphere")
	local CloudedSky = game:GetService("Lighting"):FindFirstChild("Clouded Sky")
	local light = game:GetService("Lighting")

	local value1 = game:GetService("ReplicatedStorage").Values.DayLength
	local value2 = game:GetService("ReplicatedStorage").Values.NightLength

	if Atmosphere then
		Atmosphere:Destroy()
	else
		warn("null")
	end

	if CloudedSky then
		CloudedSky:Destroy()
	else
		warn("null")
	end


	value1.Value = 17
	value2.Value = 0

	value1:GetPropertyChangedSignal("Value"):Connect(function()
		value1.Value = 17
	end)

	value2:GetPropertyChangedSignal("Value"):Connect(function()
		value2.Value = 0
	end)

	local text = control.Text

	if text == "" then
		control.Text = "Error"
	else
		local number = tonumber(text)
		if number == nil then
			control.Text = "Error"
		else
			if number > 5 then
				light.ExposureCompensation = 5
			elseif number < 0 then
				light.ExposureCompensation = 0
			else
				light.ExposureCompensation = number
			end
		end
	end
end

save.MouseButton1Click:Connect(script5l)

local script6 = Instance.new("TextLabel")

script6.Parent = scroll
script6.Name = "script6"
script6.BackgroundColor3 = Color3.new(1, 1, 1)
script6.BackgroundTransparency = 0
script6.Size = UDim2.new(0, 180, 0, 35)
script6.Position = UDim2.new(0.025, 0, 0.059, 0)
script6.TextScaled = true
script6.Text = "Wallbang - 2 walls max"
script6.TextColor3 = Color3.new(0, 0, 0)
script6.Visible = true

local ucs6 = Instance.new("UICorner")

ucs6.Parent =  script6
ucs6.CornerRadius = UDim.new(0, 8)

local load6 = Instance.new("TextButton")

load6.Parent = script6
load6.Name = "loads6"
load6.BackgroundColor3 = Color3.new(1, 1, 1)
load6.BackgroundTransparency = 0
load6.Size = UDim2.new(0, 80, 0, 35)
load6.Position = UDim2.new(1.1, 0, 0, 0)
load6.TextScaled = true
load6.Text = "Load"
load6.TextColor3 = Color3.new(0, 0, 0)
load6.Visible = true

local ucl6 = Instance.new("UICorner")

ucl6.Parent = load6
ucl6.CornerRadius = UDim.new(0, 8)

local function script6l()
	game:service[[Workspace]]:FindFirstChild('Map'):FindFirstChild('Parts'):FindFirstChild('M_Parts').Parent = game:service[[Workspace]]:FindFirstChild('Characters')
end

load6.MouseButton1Click:Connect(script6l)

local script7 = Instance.new("TextLabel")

script7.Parent = scroll
script7.Name = "script7"
script7.BackgroundColor3 = Color3.new(1, 1,1)
script7.BackgroundTransparency = 0
script7.Size = UDim2.new(0, 180, 0, 35)
script7.Position = UDim2.new(0.025, 0, 0.07, 0)
script7.TextScaled = true
script7.Text = "No anim - can`t equipe guns \n (reset for back)"
script7.TextColor3 = Color3.new(0, 0, 0)
script7.Visible = true

local ucs7 = Instance.new("UICorner")

ucs7.Parent = script7
ucs7.CornerRadius = UDim.new(0, 8)

local load7 = Instance.new("TextButton")

load7.Parent = script7
load7.Name = "loads7"
load7.BackgroundColor3 = Color3.new(1, 1, 1)
load7.BackgroundTransparency = 0
load7.Size = UDim2.new(0, 80, 0, 35)
load7.Position = UDim2.new(1.1, 0, 0, 0)
load7.TextScaled = true
load7.Text = "Load"
load7.TextColor3 = Color3.new(0, 0, 0)
load7.Visible = true

local ucl7 = Instance.new("UICorner")

ucl7.Parent = load7
ucl7.CornerRadius = UDim.new(0, 8)

local function script7l()
	plr.Character.Humanoid:FindFirstChild("Animator"):Destroy()
end

load7.MouseButton1Click:Connect(script7l)

local script8 = Instance.new("TextLabel")

script8.Parent = scroll
script8.Name = "script8"
script8.BackgroundColor3 = Color3.new(1, 1,1)
script8.BackgroundTransparency = 0
script8.Size = UDim2.new(0, 180, 0, 35)
script8.Position = UDim2.new(0.025, 0, 0.081, 0)
script8.TextScaled = true
script8.Text = "No fall damage"
script8.TextColor3 = Color3.new(0, 0, 0)
script8.Visible = true

local ucs8 = Instance.new("UICorner")

ucs8.Parent = script8
ucs8.CornerRadius = UDim.new(0, 8)

local load8 = Instance.new("TextButton")

load8.Parent = script8
load8.Name = "loads8"
load8.BackgroundColor3 = Color3.new(1, 1, 1)
load8.BackgroundTransparency = 0
load8.Size = UDim2.new(0, 80, 0, 35)
load8.Position = UDim2.new(1.1, 0, 0, 0)
load8.TextScaled = true
load8.Text = "Load"
load8.TextColor3 = Color3.new(0, 0, 0)
load8.Visible = true

local ucl8 = Instance.new("UICorner")

ucl8.Parent = load8
ucl8.CornerRadius = UDim.new(0, 8)

local function script8l()
	local force = Instance.new("ForceField")

	force.Parent = plr.Character
	force.Visible = false
end

load8.MouseButton1Click:Connect(script8l)

local script9 = Instance.new("TextLabel")

script9.Parent = scroll
script9.Name = "script9"
script9.BackgroundColor3 = Color3.new(1, 1, 1)
script9.BackgroundTransparency = 0
script9.Size = UDim2.new(0, 180, 0, 35)
script9.Position = UDim2.new(0.025, 0, 0.092, 0)
script9.TextScaled = true
script9.Text = "No Barriers"
script9.TextColor3 = Color3.new(0, 0, 0)
script9.Visible = true

local ucs9 = Instance.new("UICorner")

ucs9.Parent = script9
ucs9.CornerRadius = UDim.new(0, 8)

local load9 = Instance.new("TextButton")

load9.Parent = script9
load9.Name = "loads9"
load9.BackgroundColor3 = Color3.new(1, 1, 1)
load9.BackgroundTransparency = 0
load9.Size = UDim2.new(0, 80, 0, 35)
load9.Position = UDim2.new(1.1, 0, 0, 0)
load9.TextScaled = true
load9.Text = "Load"
load9.TextColor3 = Color3.new(0, 0, 0)
load9.Visible = true

local ucl9 = Instance.new("UICorner")

ucl9.Parent = load9
ucl9.CornerRadius = UDim.new(0, 8)

local function script9l()
	local function disableTouchAndQuery(part)
		if part:IsA("BasePart") then
			part.CanTouch = false
			part.CanQuery = false
		end
	end

	local function findAndDisableParts()
		local partNames = {"BarbedWire", "RG_Part", "Spike"}

		for _, partName in ipairs(partNames) do
			for _, part in pairs(game.Workspace:GetDescendants()) do
				if part.Name == partName then
					disableTouchAndQuery(part)
				end
			end
		end
	end

	findAndDisableParts()
end

load9.MouseButton1Click:Connect(script9l)

local script10 = Instance.new("TextLabel")

script10.Parent = scroll
script10.Name = "script10"
script10.BackgroundColor3 = Color3.new(1, 1, 1)
script10.BackgroundTransparency = 0
script10.Size = UDim2.new(0, 180, 0, 35)
script10.Position = UDim2.new(0.025, 0, 0.103, 0)
script10.TextScaled = true
script10.Text = "inf pepper spray"
script10.TextColor3 = Color3.new(0, 0, 0)
script10.Visible = true

local ucs10 = Instance.new("UICorner")

ucs10.Parent = script10
ucs10.CornerRadius = UDim.new(0, 8)

local load10 = Instance.new("TextButton")

load10.Parent = script10
load10.Name = "loads10"
load10.BackgroundColor3 = Color3.new(1, 1, 1)
load10.BackgroundTransparency = 0
load10.Size = UDim2.new(0, 80, 0, 35)
load10.Position = UDim2.new(1.1, 0, 0, 0)
load10.TextScaled = true
load10.Text = "Load"
load10.TextColor3 = Color3.new(0, 0, 0)
load10.Visible = true

local ucl10 = Instance.new("UICorner")

ucl10.Parent = load10
ucl10.CornerRadius = UDim.new(0, 8)

local function script10l()
	local psb = game.Players.LocalPlayer.Backpack:FindFirstChild("Pepper-spray")
	local psc = game.Players.LocalPlayer.Character:FindFirstChild("Pepper-spray")

	if psb then
		psb.Ammo.MaxValue = math.huge
		psb.Ammo.Value = math.huge
	else
		psc.Ammo.MaxValue = math.huge
		psc.Ammo.Value = math.huge
	end
end

load10.MouseButton1Click:Connect(script10l)

local colors = {
	Color3.new(0.133333, 1, 0),
	Color3.new(0, 0.0666667, 1),
	Color3.new(1, 0, 0),
	Color3.new(1, 0, 0.917647),
	Color3.new(0, 0.815686, 1),
	Color3.new(1, 0.882353, 0),
	Color3.new(1, 1, 1)
}

local tweenInfo = TweenInfo.new(
	1,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.InOut
)

local function animateRainbow()
	while true do
		for _, color in ipairs(colors) do
			local tween = tween:Create(textname, tweenInfo, {TextColor3 = color})
			tween:Play()
			tween.Completed:Wait()
		end
	end
end

animateRainbow()
