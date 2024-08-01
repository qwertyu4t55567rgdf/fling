local tween = game:GetService("TweenService")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer
local camera = game.Workspace.CurrentCamera

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

local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	mainframe.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

mainframe.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch then
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
	if input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		update(input)
	end
end)

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
script2.Text = "use only esp"
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
	local main = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local up = Instance.new("TextButton")
	local down = Instance.new("TextButton")
	local onof = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local plus = Instance.new("TextButton")
	local speed = Instance.new("TextLabel")
	local mine = Instance.new("TextButton")
	local closebutton = Instance.new("TextButton")
	local mini = Instance.new("TextButton")
	local mini2 = Instance.new("TextButton")

	main.Name = "main"
	main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main.ResetOnSpawn = false

	Frame.Parent = main
	Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
	Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
	Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
	Frame.Size = UDim2.new(0, 190, 0, 57)

	up.Name = "up"
	up.Parent = Frame
	up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
	up.Size = UDim2.new(0, 44, 0, 28)
	up.Font = Enum.Font.SourceSans
	up.Text = "UP"
	up.TextColor3 = Color3.fromRGB(0, 0, 0)
	up.TextSize = 14.000

	down.Name = "down"
	down.Parent = Frame
	down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
	down.Position = UDim2.new(0, 0, 0.491228074, 0)
	down.Size = UDim2.new(0, 44, 0, 28)
	down.Font = Enum.Font.SourceSans
	down.Text = "DOWN"
	down.TextColor3 = Color3.fromRGB(0, 0, 0)
	down.TextSize = 14.000

	onof.Name = "onof"
	onof.Parent = Frame
	onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
	onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
	onof.Size = UDim2.new(0, 56, 0, 28)
	onof.Font = Enum.Font.SourceSans
	onof.Text = "fly"
	onof.TextColor3 = Color3.fromRGB(0, 0, 0)
	onof.TextSize = 14.000

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
	TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 100, 0, 28)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "FLY GUI V3"
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	plus.Name = "plus"
	plus.Parent = Frame
	plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
	plus.Position = UDim2.new(0.231578946, 0, 0, 0)
	plus.Size = UDim2.new(0, 45, 0, 28)
	plus.Font = Enum.Font.SourceSans
	plus.Text = "+"
	plus.TextColor3 = Color3.fromRGB(0, 0, 0)
	plus.TextScaled = true
	plus.TextSize = 14.000
	plus.TextWrapped = true

	speed.Name = "speed"
	speed.Parent = Frame
	speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
	speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
	speed.Size = UDim2.new(0, 44, 0, 28)
	speed.Font = Enum.Font.SourceSans
	speed.Text = "1"
	speed.TextColor3 = Color3.fromRGB(0, 0, 0)
	speed.TextScaled = true
	speed.TextSize = 14.000
	speed.TextWrapped = true

	mine.Name = "mine"
	mine.Parent = Frame
	mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
	mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
	mine.Size = UDim2.new(0, 45, 0, 29)
	mine.Font = Enum.Font.SourceSans
	mine.Text = "-"
	mine.TextColor3 = Color3.fromRGB(0, 0, 0)
	mine.TextScaled = true
	mine.TextSize = 14.000
	mine.TextWrapped = true

	closebutton.Name = "Close"
	closebutton.Parent = main.Frame
	closebutton.BackgroundColor3 = Color3.fromRGB(225, 25, 0)
	closebutton.Font = "SourceSans"
	closebutton.Size = UDim2.new(0, 45, 0, 28)
	closebutton.Text = "X"
	closebutton.TextSize = 30
	closebutton.Position =  UDim2.new(0, 0, -1, 27)

	mini.Name = "minimize"
	mini.Parent = main.Frame
	mini.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
	mini.Font = "SourceSans"
	mini.Size = UDim2.new(0, 45, 0, 28)
	mini.Text = "-"
	mini.TextSize = 40
	mini.Position = UDim2.new(0, 44, -1, 27)

	mini2.Name = "minimize2"
	mini2.Parent = main.Frame
	mini2.BackgroundColor3 = Color3.fromRGB(192, 150, 230)
	mini2.Font = "SourceSans"
	mini2.Size = UDim2.new(0, 45, 0, 28)
	mini2.Text = "+"
	mini2.TextSize = 40
	mini2.Position = UDim2.new(0, 44, -1, 57)
	mini2.Visible = false

	speeds = 1

	local speaker = game:GetService("Players").LocalPlayer

	local chr = game.Players.LocalPlayer.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

	nowe = false

	game:GetService("StarterGui"):SetCore("SendNotification", { 
		Title = "FLY GUI V3";
		Text = "BY XNEO";
		Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
	Duration = 5;

	Frame.Active = true -- main = gui
	Frame.Draggable = true

	onof.MouseButton1Down:connect(function()

		if nowe == true then
			nowe = false

			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
		else 
			nowe = true



			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			local Char = game.Players.LocalPlayer.Character
			local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

			for i,v in next, Hum:GetPlayingAnimationTracks() do
				v:AdjustSpeed(0)
			end
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		end




		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



			local plr = game.Players.LocalPlayer
			local torso = plr.Character.Torso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				game:GetService("RunService").RenderStepped:Wait()

				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end
				--	game.Players.LocalPlayer.Character.Animate.Disabled = true
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false




		else
			local plr = game.Players.LocalPlayer
			local UpperTorso = plr.Character.UpperTorso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", UpperTorso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = UpperTorso.CFrame
			local bv = Instance.new("BodyVelocity", UpperTorso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				wait()

				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
					speed = speed+.5+(speed/maxspeed)
					if speed > maxspeed then
						speed = maxspeed
					end
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
					speed = speed-1
					if speed < 0 then
						speed = 0
					end
				end
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				else
					bv.velocity = Vector3.new(0,0,0)
				end

				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false



		end





	end)

	local tis

	up.MouseButton1Down:connect(function()
		tis = up.MouseEnter:connect(function()
			while tis do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
			end
		end)
	end)

	up.MouseLeave:connect(function()
		if tis then
			tis:Disconnect()
			tis = nil
		end
	end)

	local dis

	down.MouseButton1Down:connect(function()
		dis = down.MouseEnter:connect(function()
			while dis do
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
			end
		end)
	end)

	down.MouseLeave:connect(function()
		if dis then
			dis:Disconnect()
			dis = nil
		end
	end)


	game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
		wait(0.7)
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false

	end)


	plus.MouseButton1Down:connect(function()
		speeds = speeds + 1
		speed.Text = speeds
		if nowe == true then


			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end)
	mine.MouseButton1Down:connect(function()
		if speeds == 1 then
			speed.Text = 'cannot be less than 1'
			wait(1)
			speed.Text = speeds
		else
			speeds = speeds - 1
			speed.Text = speeds
			if nowe == true then
				tpwalking = false
				for i = 1, speeds do
					spawn(function()

						local hb = game:GetService("RunService").Heartbeat	


						tpwalking = true
						local chr = game.Players.LocalPlayer.Character
						local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
						while tpwalking and hb:Wait() and chr and hum and hum.Parent do
							if hum.MoveDirection.Magnitude > 0 then
								chr:TranslateBy(hum.MoveDirection)
							end
						end

					end)
				end
			end
		end
	end)

	closebutton.MouseButton1Click:Connect(function()
		main:Destroy()
	end)

	mini.MouseButton1Click:Connect(function()
		up.Visible = false
		down.Visible = false
		onof.Visible = false
		plus.Visible = false
		speed.Visible = false
		mine.Visible = false
		mini.Visible = false
		mini2.Visible = true
		main.Frame.BackgroundTransparency = 1
		closebutton.Position =  UDim2.new(0, 0, -1, 57)
	end)

	mini2.MouseButton1Click:Connect(function()
		up.Visible = true
		down.Visible = true
		onof.Visible = true
		plus.Visible = true
		speed.Visible = true
		mine.Visible = true
		mini.Visible = true
		mini2.Visible = false
		main.Frame.BackgroundTransparency = 0 
		closebutton.Position =  UDim2.new(0, 0, -1, 27)
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
	local button_aim = Instance.new("TextButton", gui)
	
	button_aim.BackgroundColor3 = Color3.new(0, 0, 0)
	button_aim.BackgroundTransparency = 0
	button_aim.Size = UDim2.new(0, 45, 0, 45)
	button_aim.Position = UDim2.new(0.691, 0, 0.35, 0)
	button_aim.Text = "Aim"
	button_aim.TextColor3 = Color3.new(1, 1, 1)
	button_aim.Visible = true
	
	local ucba = Instance.new("UICorner")
	
	ucba.Parent = button_aim
	ucba.CornerRadius = UDim.new(8, 8)
	
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

	button_aim.MouseButton1Click:Connect(function()
		pcall(function()
			if MousePressed ~= true then MousePressed = true end 
			local Target;Target = GetNearestTarget()
			if Target ~= nil then 
				AimlockTarget = Target
				Notify("Legitinality", "Aimlock Target: "..tostring(AimlockTarget), "", 3)
			end
		end)
	end)
	button_aim.MouseButton1Click:Connect(function() 
		if AimlockTarget ~= nil then AimlockTarget = nil end
			if MousePressed ~= false then 
			MousePressed = false 
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
