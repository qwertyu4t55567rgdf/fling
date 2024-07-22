local camera = game.Workspace.CurrentCamera
local plrs = game:GetService("Players")
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local plr = plrs.LocalPlayer

local Key = getgenv().Key or Enum.KeyCode.R

local meters = 20
local follow = false
local FollowTo = nil

local function getClosestPlayer()
	local closestPlayer = nil
	local closestDistance = meters

	for _, player in pairs(plrs:GetPlayers()) do
		if player ~= plr and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
			local distance = (plr.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
			if distance < closestDistance then
				closestDistance = distance
				closestPlayer = player
			end
		end
	end

	return closestPlayer
end

run.RenderStepped:Connect(function()
	if follow and FollowTo and FollowTo.Character then
		local followHRP = FollowTo.Character:FindFirstChild("HumanoidRootPart")
		local followHead = FollowTo.Character:FindFirstChild("Head")
		if followHRP and followHead then
			local followPosition = followHRP.Position + followHRP.CFrame.LookVector * -2
			plr.Character.HumanoidRootPart.CFrame = CFrame.new(followPosition, followHRP.Position)
			local targetPosition = followHead.Position + Vector3.new(0, 2.18, 0)  -- Чуть выше головы
			camera.CFrame = CFrame.new(camera.CFrame.Position, targetPosition)
		end
	end
end)

input.InputBegan:Connect(function(key)
	if key.KeyCode == Key then
		if follow == false then
			follow = true
			plr.Character.Humanoid.AutoRotate = false
			FollowTo = getClosestPlayer()
		else
			follow = false
			FollowTo = nil
			plr.Character.Humanoid.AutoRotate = true
		end
	end
end)
