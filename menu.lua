local tween = game:GetService("TweenService")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")


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
script1.Text = "Fast pick up"
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
script2.Text = "AimBot V1 \n (ban risk)"
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
script3.Text = "Fly \n (ban risk)"
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

			rootPart.Velocity = moveDirection * 20
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
script4.Text = "Fling \n (ban risk)"
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
