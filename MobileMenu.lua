local tween = game:GetService("TweenService")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer

local SpeedSpin = 0

local gui = Instance.new("ScreenGui")

gui.Parent = plr.PlayerGui
gui.Name = "ScriptHub"
gui.ResetOnSpawn = false

local mainframe = Instance.new("Frame")

mainframe.Parent = gui
mainframe.Name = "Menu"
mainframe.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
mainframe.BackgroundTransparency = 0
mainframe.Size = UDim2.new(0, 310, 0, 522)
mainframe.Position = UDim2.new(0.064, 0, 0.135, 0)
mainframe.Visible = true

local ucmf = Instance.new("UICorner")

ucmf.Parent = mainframe
ucmf.CornerRadius = UDim.new(0, 8)

mainframe.Draggable = true

local UIscale = Instance.new("UIScale")

UIscale.Parent = mainframe
UIscale.Scale = 0.5

local menubutton = Instance.new("TextButton")

menubutton.Parent = gui
menubutton.Name = "MenuOpen"
menubutton.BackgroundColor3 = Color3.new(0, 0, 0)
menubutton.BackgroundTransparency = 0
menubutton.Size = UDim2.new(0, 35, 0, 35)
menubutton.Position = UDim2.new(0.881, 0, 0.043, 0)
menubutton.TextScaled = true
menubutton.Text = "Menu"
menubutton.TextColor3 = Color3.new(1, 1, 1)
menubutton.Visible = true

local ucob = Instance.new("UICorner")

ucob.Parent = menubutton
ucob.CornerRadius = UDim.new(0, 8)

menubutton.MouseButton1Click:Connect(function()
	if mainframe.Visible == true then
		mainframe.Visible = false
	else
		mainframe.Visible = true
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

	input.InputBegan:Connect(function(input, isProcessed)
		if not isProcessed and input.KeyCode == Enum.KeyCode.Z then
			toggleWallWalk()
		end
	end)

	run.RenderStepped:Connect(function()
		if wallWalking then
			local camera = game.Workspace.CurrentCamera
			local direction = camera.CFrame.LookVector
			local moveDirection = Vector3.new(0, 0, 0)
			if input:IsKeyDown(Enum.KeyCode.W) then
				moveDirection = moveDirection + direction
			end
			if input:IsKeyDown(Enum.KeyCode.S) then
				moveDirection = moveDirection - direction
			end
			if input:IsKeyDown(Enum.KeyCode.A) then
				moveDirection = moveDirection - camera.CFrame.RightVector
			end
			if input:IsKeyDown(Enum.KeyCode.D) then
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

local control1 = Instance.new("TextBox")

control1.Parent = script5
control1.Name = "value"
control1.BackgroundColor3 = Color3.new(1, 1, 1)
control1.BackgroundTransparency = 0
control1.Size = UDim2.new(0, 60, 0, 35)
control1.Position = UDim2.new(1.067, 0, 0, 0)
control1.ClearTextOnFocus = false
control1.TextEditable = true
control1.ShowNativeInput = true
control1.PlaceholderText = "0 - 5"
control1.PlaceholderColor3 = Color3.new(0.329412, 0.329412, 0.329412)
control1.TextColor3 = Color3.new(0, 0, 0)
control1.TextScaled = false
control1.Text = ""
control1.Visible = true

local uctb1 = Instance.new("UICorner")

uctb1.Parent = control1
uctb1.CornerRadius = UDim.new(0, 20)

local save1 = Instance.new("TextButton")

save1.Parent = script5
save1.Name = "savebutton"
save1.BackgroundColor3 = Color3.new(1, 1, 1)
save1.BackgroundTransparency = 0
save1.Size = UDim2.new(0, 80, 0, 35)
save1.Position = UDim2.new(1.65, 0, 0, 0)
save1.TextScaled = true
save1.Text = "Save"
save1.TextColor3 = Color3.new(0, 0, 0)
save1.Visible = true

local ucsb1 = Instance.new("UICorner")

ucsb1.Parent = save1
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

	local text1 = control1.Text

	if text1 == "" then
		control1.Text = "Error"
	else
		local number1 = tonumber(text1)
		if number1 == nil then
			control1.Text = "Error"
		else
			if number1 > 5 then
				light.ExposureCompensation = 5
			elseif number1 < 0 then
				light.ExposureCompensation = 0
			else
				light.ExposureCompensation = number1
			end
		end
	end
end

save1.MouseButton1Click:Connect(script5l)

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
script10.Text = "inf pepper spray \n (use after buy)"
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

local script11 = Instance.new("TextLabel")

script11.Parent = scroll
script11.Name = "script11"
script11.BackgroundColor3 = Color3.new(1, 1, 1)
script11.BackgroundTransparency = 0
script11.Size = UDim2.new(0, 180, 0, 35)
script11.Position = UDim2.new(0.025, 0, 0.114, 0)
script11.TextScaled = true
script11.Text = "Lockpick farm"
script11.TextColor3 = Color3.new(0, 0, 0)
script11.Visible = true

local ucs11 = Instance.new("UICorner")

ucs11.Parent = script11
ucs11.CornerRadius = UDim.new(0, 8)

local load11 = Instance.new("TextButton")

load11.Parent =  script11
load11.Name = "loads11"
load11.BackgroundColor3 = Color3.new(1, 1, 1)
load11.BackgroundTransparency = 0
load11.Size = UDim2.new(0, 80, 0, 35)
load11.Position = UDim2.new(1.1, 0, 0, 0)
load11.TextScaled = true
load11.Text = "Load"
load11.TextColor3 = Color3.new(0, 0, 0)
load11.Visible = true

local ucl11 = Instance.new("UICorner")

ucl11.Parent = load11
ucl11.CornerRadius = UDim.new(0, 8)

local function script11l()
	local config = {
		Position = UDim2.new(0.5, 0, 0.5, 0)
	}

	local info = TweenInfo.new(0.001, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1)

	for i, a in pairs(game:GetDescendants()) do
		if a.Name == "LockpickBars" then
			a.Value = 1
		end
	end

	plr.PlayerGui.ChildAdded:Connect(function(object)
		if object:IsA("ScreenGui") and object.Name == "LockpickGUI" then
			for i, a in pairs(object:GetDescendants()) do
				if a:IsA("NumberValue") and a.Name == "PosV" then
					a.Value = 0
				end
				for _, bar in pairs(object:GetDescendants()) do
					if bar:IsA("ImageLabel") and bar.Name == "Bar" then
						local anim = tween:Create(bar, info, config)
						anim:Play()
					end
				end
			end
		end
	end)
end

load11.MouseButton1Click:Connect(script11l)

local script12 = Instance.new("TextLabel")

script12.Parent = scroll
script12.Name =  "script12"
script12.BackgroundColor3 = Color3.new(1, 1, 1)
script12.BackgroundTransparency = 0
script12.Size = UDim2.new(0, 120, 0, 35)
script12.Position = UDim2.new(0.025, 0, 0.125, 0)
script12.TextScaled = true
script12.Text = "Stomp speed"
script12.TextColor3 = Color3.new(0, 0, 0)
script12.Visible = true

local ucs12 = Instance.new("UICorner")

ucs12.Parent = script12
ucs12.CornerRadius = UDim.new(0, 8)

local control2 = Instance.new("TextBox")

control2.Parent = script12
control2.Name = "value"
control2.BackgroundColor3 = Color3.new(1, 1, 1)
control2.BackgroundTransparency = 0
control2.Size = UDim2.new(0, 60, 0, 35)
control2.Position = UDim2.new(1.067, 0, 0, 0)
control2.Text = ""
control2.TextColor3 = Color3.new(0, 0, 0)
control2.PlaceholderText = "0.1 - 3"
control2.PlaceholderColor3 = Color3.new(0.290196, 0.290196, 0.290196)
control2.Visible = true

local uctb2 = Instance.new("UICorner")

uctb2.Parent = control2
uctb2.CornerRadius = UDim.new(0, 20)

local save2 = Instance.new("TextButton")

save2.Parent = script12
save2.Name = "savebutton"
save2.BackgroundColor3 =  Color3.new(1, 1, 1)
save2.BackgroundTransparency = 0
save2.Size = UDim2.new(0, 80, 0, 35)
save2.Position = UDim2.new(1.65, 0, 0, 0)
save2.TextScaled = true
save2.Text = "Save"
save2.TextColor3 = Color3.new(0, 0, 0)
save2.Visible = true

local ucsb2 = Instance.new("UICorner")

ucsb2.Parent = save2
ucsb2.CornerRadius = UDim.new(0, 8)

local function script12l()
	local stomp = game:GetService("ReplicatedStorage").Values.FinishSpeedMulti

	local text2 = control2.Text

	if text2 == "" then
		control2.Text = "Error"
	else
		local number2 = tonumber(text2)

		if number2 == nil then
			control2.Text = "Error"
		else
			if number2 > 3 then
				stomp.Value = 3
			elseif number2 < 0.1 then
				stomp.Value = 0.1
			else
				stomp.Value = number2
			end
		end
	end
end

save2.MouseButton1Click:Connect(script12l)

local script13 = Instance.new("TextLabel")

script13.Parent = scroll
script13.Name = "script13"
script13.BackgroundColor3 = Color3.new(1, 1, 1)
script13.BackgroundTransparency = 0
script13.Size = UDim2.new(0, 220, 0, 35)
script13.Position = UDim2.new(0.134, 0, 0.136, 0)
script13.TextScaled = true
script13.Text = "Aimbot v2 - key Y to activate"
script13.TextColor3 = Color3.new(0, 0, 0)
script13.Visible = true

local ucs13 = Instance.new("UICorner")

ucs13.Parent = script13
ucs13.CornerRadius = UDim.new(0, 8)

local target = Instance.new("TextBox")

target.Parent = script13
target.Name = "target"
target.BackgroundColor3 = Color3.new(1, 1, 1)
target.BackgroundTransparency = 0
target.Size = UDim2.new(0, 180, 0, 35)
target.Position = UDim2.new(-0.155, 0, 1.657, 0)
target.TextScaled = true
target.Text = ""
target.PlaceholderText = "Select target"
target.TextColor3 = Color3.new(0, 0, 0)
target.PlaceholderColor3 = Color3.new(0.290196, 0.290196, 0.290196)
target.Visible = true

local uct = Instance.new("UICorner")

uct.Parent = target
uct.CornerRadius = UDim.new(0, 20)

local save3 = Instance.new("TextButton")

save3.Parent = script13
save3.Name = "savebutton"
save3.BackgroundColor3 = Color3.new(1, 1, 1)
save3.BackgroundTransparency = 0
save3.Size = UDim2.new(0, 80, 0, 35)
save3.Position = UDim2.new(0.745, 0, 1.657, 0)
save3.TextScaled = true
save3.Text = "Save"
save3.TextColor3 = Color3.new(0, 0, 0)
save3.Visible = true

local ucsb3 = Instance.new("UICorner")

ucsb3.Parent = save3
ucsb3.CornerRadius = UDim.new(0, 8)

local function script13l()
	local text = target.Text

	getgenv().AimPart = ""
	getgenv().AimlockToggleKey = "Y"
	getgenv().AimRadius = 50
	getgenv().ThirdPerson = false
	getgenv().FirstPerson = true
	getgenv().TeamCheck = false
	getgenv().PredictMovement = true
	getgenv().PredictionVelocity = 15

	if text == "Head" or text == "head" then
		getgenv().AimPart = "Head"
	else
		text = "Error"
		getgenv().AimPart = "Head"
		wait(1)
		text = "Head"
		if text == "HumanoidRootPart" or text == "humanoidrootpart" then
			getgenv().AimPart = "Head"
		else
			text = "Error"
			getgenv().AimPart = "HumanoidRootPart"
			wait(1)
			text = "HumanoidRootPart"
		end
	end

	local Players, Uis, RService, SGui = game:GetService"Players", game:GetService"UserInputService", game:GetService"RunService", game:GetService"StarterGui";
	local Client, Mouse, Camera, CF, RNew, Vec3, Vec2 = Players.LocalPlayer, Players.LocalPlayer:GetMouse(), workspace.CurrentCamera, CFrame.new, Ray.new, Vector3.new, Vector2.new;
	local Aimlock, MousePressed, CanNotify = true, false, false;
	local AimlockTarget;
	getgenv().CiazwareUniversalAimbotLoaded = true

	getgenv().SeparateNotify = function(title, text, icon, time) 
		SGui:SetCore("SendNotification",{
			Title = title;
			Text = text;
			Duration = time;
		})
	end

	getgenv().Notify = function(title, text, icon, time)
		if CanNotify == true then 
			if not time or not type(time) == "number" then time = 3 end
			SGui:SetCore("SendNotification",{
				Title = title;
				Text = text;
				Duration = time;
			}) 
		end
	end

	getgenv().WorldToViewportPoint = function(P)
		return Camera:WorldToViewportPoint(P)
	end

	getgenv().WorldToScreenPoint = function(P)
		return Camera.WorldToScreenPoint(Camera, P)
	end

	getgenv().GetObscuringObjects = function(T)
		if T and T:FindFirstChild(getgenv().AimPart) and Client and Client.Character:FindFirstChild("Head") then 
			local RayPos = workspace:FindPartOnRay(RNew(
				T[getgenv().AimPart].Position, Client.Character.Head.Position)
			)
			if RayPos then return RayPos:IsDescendantOf(T) end
		end
	end

	getgenv().GetNearestTarget = function()
		-- Credits to whoever made this, i didnt make it, and my own mouse2plr function kinda sucks
		local players = {}
		local PLAYER_HOLD  = {}
		local DISTANCES = {}
		for i, v in pairs(Players:GetPlayers()) do
			if v ~= Client then
				table.insert(players, v)
			end
		end
		for i, v in pairs(players) do
			if v.Character ~= nil then
				local AIM = v.Character:FindFirstChild("Head")
				if getgenv().TeamCheck == true and v.Team ~= Client.Team then
					local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
					local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i] = {}
					PLAYER_HOLD[v.Name .. i].dist= DISTANCE
					PLAYER_HOLD[v.Name .. i].plr = v
					PLAYER_HOLD[v.Name .. i].diff = DIFF
					table.insert(DISTANCES, DIFF)
				elseif getgenv().TeamCheck == false and v.Team == Client.Team then 
					local DISTANCE = (v.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local RAY = Ray.new(game.Workspace.CurrentCamera.CFrame.p, (Mouse.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * DISTANCE)
					local HIT,POS = game.Workspace:FindPartOnRay(RAY, game.Workspace)
					local DIFF = math.floor((POS - AIM.Position).magnitude)
					PLAYER_HOLD[v.Name .. i] = {}
					PLAYER_HOLD[v.Name .. i].dist= DISTANCE
					PLAYER_HOLD[v.Name .. i].plr = v
					PLAYER_HOLD[v.Name .. i].diff = DIFF
					table.insert(DISTANCES, DIFF)
				end
			end
		end

		if unpack(DISTANCES) == nil then
			return nil
		end

		local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
		if L_DISTANCE > getgenv().AimRadius then
			return nil
		end

		for i, v in pairs(PLAYER_HOLD) do
			if v.diff == L_DISTANCE then
				return v.plr
			end
		end
		return nil
	end

	Uis.InputBegan:Connect(function(Key)
		if not (Uis:GetFocusedTextBox()) then 
			if Key.UserInputType == Enum.UserInputType.MouseButton2 then 
				pcall(function()
					if MousePressed ~= true then MousePressed = true end 
					local Target;Target = GetNearestTarget()
					if Target ~= nil then 
						AimlockTarget = Target
						Notify("Legitinality", "Aimlock Target: "..tostring(AimlockTarget), "", 3)
					end
				end)
			end
			if Key.KeyCode == Enum.KeyCode[AimlockToggleKey] then 
				Aimlock = not Aimlock
				Notify("Legitinality", "Aimlock: "..tostring(Aimlock), "", 3)
			end
		end
	end)
	Uis.InputEnded:Connect(function(Key)
		if not (Uis:GetFocusedTextBox()) then 
			if Key.UserInputType == Enum.UserInputType.MouseButton2 then 
				if AimlockTarget ~= nil then AimlockTarget = nil end
				if MousePressed ~= false then 
					MousePressed = false 
				end
			end
		end
	end)

	RService.RenderStepped:Connect(function()
		if getgenv().FirstPerson == true and getgenv().ThirdPerson == false then 
			if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then 
				CanNotify = true 
			else 
				CanNotify = false 
			end
		elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then 
			if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then 
				CanNotify = true 
			else 
				CanNotify = false 
			end
		end
		if Aimlock == true and MousePressed == true then 
			if AimlockTarget and AimlockTarget.Character and AimlockTarget.Character:FindFirstChild(getgenv().AimPart) then 
				if getgenv().FirstPerson == true then
					if CanNotify == true then
						if getgenv().PredictMovement == true then 
							Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
						elseif getgenv().PredictMovement == false then 
							Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
						end
					end
				elseif getgenv().ThirdPerson == true then 
					if CanNotify == true then
						if getgenv().PredictMovement == true then 
							Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position + AimlockTarget.Character[getgenv().AimPart].Velocity/PredictionVelocity)
						elseif getgenv().PredictMovement == false then 
							Camera.CFrame = CF(Camera.CFrame.p, AimlockTarget.Character[getgenv().AimPart].Position)
						end
					end 
				end
			end
		end
	end)
end

save3.MouseButton1Click:Connect(script13l)

local script14 = Instance.new("TextLabel")

script14.Parent = scroll
script14.Name = "script14"
script14.BackgroundColor3 = Color3.new(1, 1, 1)
script14.BackgroundTransparency = 0
script14.Size = UDim2.new(0, 220, 0, 35)
script14.Position = UDim2.new(0.135, 0, 0.16, 0)
script14.TextScaled = true
script14.Text = "Spiner"
script14.TextColor3 = Color3.new(0, 0, 0)
script14.Visible = true

local ucs14 = Instance.new("UICorner")

ucs14.Parent = script14
ucs14.CornerRadius = UDim.new(0, 8)

local control3 = Instance.new("TextBox")

control3.Parent = script14
control3.Name = "value"
control3.BackgroundColor3 = Color3.new(1, 1, 1)
control3.BackgroundTransparency = 0
control3.Size = UDim2.new(0, 80, 0, 35)
control3.Position = UDim2.new(-0.159, 0, 1.543, 0)
control3.Text = ""
control3.TextColor3 = Color3.new(0, 0, 0)
control3.PlaceholderText = "1 - 1000"
control3.PlaceholderColor3 = Color3.new(0.290196, 0.290196, 0.290196)
control3.Visible = true

local uctb3 = Instance.new("UICorner")

uctb3.Parent = control3
uctb3.CornerRadius = UDim.new(0, 20)

local start = Instance.new("TextButton")

start.Parent = script14
start.Name = "start"
start.BackgroundColor3 = Color3.new(1, 1, 1)
start.BackgroundTransparency = 0
start.Size = UDim2.new(0, 92, 0, 35)
start.Position = UDim2.new(0.241, 0, 1.543, 0)
start.TextScaled = true
start.Text = "Start"
start.TextColor3 = Color3.new(0, 0, 0)
start.Visible = true

local ucstart = Instance.new("UICorner")

ucstart.Parent = start
ucstart.CornerRadius = UDim.new(0, 8)

local stop = Instance.new("TextButton")

stop.Parent = script14
stop.Name = "stop"
stop.BackgroundColor3 = Color3.new(1, 1, 1)
stop.BackgroundTransparency = 0
stop.Size = UDim2.new(0, 92, 0, 35)
stop.Position = UDim2.new(0.7, 0, 1.543, 0)
stop.TextScaled = true
stop.Text = "Stop"
stop.TextColor3 = Color3.new(0, 0, 0)
stop.Visible = true

local ucstop = Instance.new("UICorner")

ucstop.Parent = stop
ucstop.CornerRadius = UDim.new(0, 8)

local function spin()
	repeat task.wait() until plr.Character
	local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
	plr.Character:WaitForChild("Humanoid").AutoRotate = false
	local velocity = humRoot:FindFirstChild("Spinbot")
	if not velocity then
		velocity = Instance.new("AngularVelocity")
		velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
		velocity.MaxTorque = math.huge
		velocity.Parent = humRoot
		velocity.Name = "Spinbot"
	end
	velocity.AngularVelocity = Vector3.new(0, SpeedSpin, 0)
	stop.MouseButton1Click:Connect(function()
		velocity:Destroy()
		plr.Character.Humanoid.AutoRotate = true
	end)
end

local function script14l()
	local gettext = control3.Text
	local number3 = tonumber(gettext)

	if not number3 then
		control3.Text = "Error"
		return
	elseif number3 > 500 then
		SpeedSpin = 500
	elseif number3 < 1 then
		SpeedSpin = 1
	else
		SpeedSpin = number3
	end

	spin()
	print(SpeedSpin)
end

start.MouseButton1Click:Connect(script14l)

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
