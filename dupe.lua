local Helper = Instance.new("ScreenGui")
local Menu = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local line = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
local line2 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local MainTextHelper = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local select = Instance.new("TextLabel")
local method1 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local method2 = Instance.new("TextButton")
local UIGradient_3 = Instance.new("UIGradient")
local UICorner_5 = Instance.new("UICorner")
local method3 = Instance.new("TextButton")
local UIGradient_4 = Instance.new("UIGradient")
local UICorner_6 = Instance.new("UICorner")

--Properties:

Helper.Name = "Helper"
Helper.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Helper.Enabled = false
Helper.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Helper.ResetOnSpawn = false

Menu.Name = "Menu"
Menu.Parent = Helper
Menu.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Menu.BorderColor3 = Color3.fromRGB(0, 0, 0)
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0.0350484699, 0, 0.0724234059, 0)
Menu.Size = UDim2.new(0, 434, 0, 236)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Menu

line.Name = "line"
line.Parent = Menu
line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.0161290318, 0, 0.161016956, 0)
line.Size = UDim2.new(0, 420, 0, 2)
line.Font = Enum.Font.SourceSans
line.Text = ""
line.TextColor3 = Color3.fromRGB(0, 0, 0)
line.TextSize = 14.000

UICorner_2.Parent = line

Text.Name = "Text"
Text.Parent = Menu
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0852534547, 0, 0, 0)
Text.Size = UDim2.new(0, 353, 0, 38)
Text.Font = Enum.Font.SourceSans
Text.Text = "Dupe helper"
Text.TextColor3 = Color3.fromRGB(55, 255, 0)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

line2.Name = "line2"
line2.Parent = Menu
line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
line2.BorderColor3 = Color3.fromRGB(0, 0, 0)
line2.BorderSizePixel = 0
line2.Position = UDim2.new(0.00691244239, 0, 0.326271176, 0)
line2.Size = UDim2.new(0, 420, 0, 2)
line2.Font = Enum.Font.SourceSans
line2.Text = ""
line2.TextColor3 = Color3.fromRGB(0, 0, 0)
line2.TextSize = 14.000

UICorner_3.Parent = line2

MainTextHelper.Name = "MainTextHelper"
MainTextHelper.Parent = Menu
MainTextHelper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainTextHelper.BackgroundTransparency = 1.000
MainTextHelper.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainTextHelper.BorderSizePixel = 0
MainTextHelper.Position = UDim2.new(0.00691244239, 0, 0.161016956, 0)
MainTextHelper.Size = UDim2.new(0, 424, 0, 41)
MainTextHelper.Font = Enum.Font.SourceSans
MainTextHelper.TextColor3 = Color3.fromRGB(255, 255, 255)
MainTextHelper.TextScaled = true
MainTextHelper.TextSize = 14.000
MainTextHelper.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(11, 48, 255)), ColorSequenceKeypoint.new(0.38, Color3.fromRGB(0, 47, 255)), ColorSequenceKeypoint.new(0.70, Color3.fromRGB(255, 3, 112)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = MainTextHelper

select.Name = "select"
select.Parent = Menu
select.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
select.BackgroundTransparency = 1.000
select.BorderColor3 = Color3.fromRGB(0, 0, 0)
select.BorderSizePixel = 0
select.Position = UDim2.new(0.260368675, 0, 0.372881353, 0)
select.Size = UDim2.new(0, 200, 0, 25)
select.Font = Enum.Font.SourceSans
select.Text = "Select method"
select.TextColor3 = Color3.fromRGB(255, 255, 255)
select.TextScaled = true
select.TextSize = 14.000
select.TextWrapped = true

method1.Name = "method1"
method1.Parent = Menu
method1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
method1.BorderColor3 = Color3.fromRGB(0, 0, 0)
method1.BorderSizePixel = 0
method1.Position = UDim2.new(0.0460829511, 0, 0.673728824, 0)
method1.Size = UDim2.new(0, 105, 0, 36)
method1.Font = Enum.Font.SourceSans
method1.Text = "Backpack"
method1.TextColor3 = Color3.fromRGB(0, 0, 0)
method1.TextScaled = true
method1.TextSize = 14.000
method1.TextWrapped = true

UICorner_4.Parent = method1

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(80, 135, 255)), ColorSequenceKeypoint.new(0.31, Color3.fromRGB(47, 189, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 255, 3))}
UIGradient_2.Parent = method1

method2.Name = "method2"
method2.Parent = Menu
method2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
method2.BorderColor3 = Color3.fromRGB(0, 0, 0)
method2.BorderSizePixel = 0
method2.Position = UDim2.new(0.373271883, 0, 0.673728824, 0)
method2.Size = UDim2.new(0, 105, 0, 36)
method2.Font = Enum.Font.SourceSans
method2.Text = "Workspace (soon)"
method2.TextColor3 = Color3.fromRGB(0, 0, 0)
method2.TextScaled = true
method2.TextSize = 14.000
method2.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(80, 135, 255)), ColorSequenceKeypoint.new(0.31, Color3.fromRGB(47, 189, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 255, 3))}
UIGradient_3.Parent = method2

UICorner_5.Parent = method2

method3.Name = "method3"
method3.Parent = Menu
method3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
method3.BorderColor3 = Color3.fromRGB(0, 0, 0)
method3.BorderSizePixel = 0
method3.Position = UDim2.new(0.721198142, 0, 0.673728824, 0)
method3.Size = UDim2.new(0, 105, 0, 36)
method3.Font = Enum.Font.SourceSans
method3.Text = "Leave Method (soon)"
method3.TextColor3 = Color3.fromRGB(0, 0, 0)
method3.TextScaled = true
method3.TextSize = 14.000
method3.TextWrapped = true

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(80, 135, 255)), ColorSequenceKeypoint.new(0.31, Color3.fromRGB(47, 189, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 255, 3))}
UIGradient_4.Parent = method3

UICorner_6.Parent = method3

-- Scripts:

local function SGKKGT_fake_script() -- MainTextHelper.Better 
	local script = Instance.new('LocalScript', MainTextHelper)

	local label = script.Parent
	local run = game:GetService("RunService")
	local plr = game:GetService("Players").LocalPlayer
	local hum = plr.Character:WaitForChild("Humanoid")
	local backpack = plr.Backpack
	local backpack2 = game.Players.LocalPlayer.PlayerGui.CoreGUI.Backpack
	local ragdoll = game:GetService("ReplicatedStorage").CharStats[plr.Name].RagdollTime.RagdollSwitch
	local btn1 = script.Parent.Parent.method1
	
	local text = "Hi! i will help you dupe"
	local ChangeText = false
	
	local SelectedItem = nil
	
	local function Text()
		for i = 1, #text do
			label.Text = string.sub(text, 1, i)
			wait(0.2)
		end
	end
	
	Text()
	
	local function Items()
		for i, a in pairs(backpack:GetChildren()) do
			if a:IsA("Tool") then
				local select1 = a.Equipped:Connect(function()
					SelectedItem = a
				end)
			end
		end
		backpack.ChildAdded:Connect(function(added)
			if added:IsA("Tool") then
				local select2 = added.Equipped:Connect(function()
					SelectedItem = added
				end)
			end
		end)
	end
	
	local function Method1()
			repeat wait() until ChangeText == true
			text = "Choose item"
			Text()
			if SelectedItem == nil then
				Items()
				repeat wait() until SelectedItem ~= nil
				text = "Please now Unequipe tool or auto in 5 sec"
				Text()
				SelectedItem.Unequipped:Connect(function()
					if ChangeText == true then
						text = "Starting dupe..."
						Text()
						wait(1)
						ragdoll.Value = true
						backpack2.Visible = true
						local e1 = hum:EquipTool(SelectedItem)
						task.wait(2)
						local find1 = plr.Character:FindFirstChild(SelectedItem)
						if find1 then
							local clone1 = find1:Clone()
							clone1.Parent = backpack
							wait(5)
							ragdoll.Value = false
							hum:UnequipTools()
							local name = clone1.Name
							if name == SelectedItem.Name then
								for i, itemF in pairs(backpack:GetChildren()) do
									if itemF.Name == name then
										local howMuch = (#itemF)
										if howMuch ~= 1 then
											if ChangeText == true then
												text = "Successfully duped"
												Text()
											else
												return Method1()
											end
										end
									end
								end
							end
						end
					end
				end)
			wait(5)
			hum:UnequipTools()
		end
	end
	
	local updater = run.RenderStepped:Connect(function()
		if label.Text ~= text then
			ChangeText = false
		else
			ChangeText = true
		end
	end)
	
	repeat wait() until ChangeText == true
	wait(5)
	text = "Select Method"
	Text()
	
	btn1.MouseButton1Click:Connect(function()
		repeat wait() until ChangeText == true
		text = "Selected Method: Backpack"
		Text()
		repeat wait() until ChangeText == true
		Method1()
	end)
	
	local mt = getrawmetatable(game)
	local oldNamecall = mt.__namecall
	setreadonly(mt, false)
	
	mt.__namecall = newcclosure(function(self, ...)
		local method = getnamecallmethod()
		if tostring(self):find("Tool") and method == "Destroy" then
			print("Destroy prevented on a Tool:", self)
			return nil -- Прекращаем выполнение метода Destroy
		end
		return oldNamecall(self, ...)
	end)
	
	setreadonly(mt, true)
end
coroutine.wrap(SGKKGT_fake_script)()
