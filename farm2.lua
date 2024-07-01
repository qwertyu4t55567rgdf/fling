local plr = game.Players.LocalPlayer
local tween = game:GetService("TweenService")

local config1 = {
	CFrame = CFrame.new(-4475, 3, -363)
}

local speed = 0

local distance = (plr.Character.HumanoidRootPart.Position - Vector3.new(-4475, 3, -363)).Magnitude

if distance < 50 then
	speed = 3
elseif distance < 150 or distance < 200  then
	speed = 5
elseif distance < 250 or distance < 300 then
	speed = 10
elseif distance < 500 or distance < 700 then
	speed = 20
elseif distance < 1000 then
	speed = 30
end

local info1 = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
local anim1 = tween:Create(plr.Character.HumanoidRootPart, info1, config1)

anim1:Play()

local config2 = {
	CFrame = CFrame.new(-4467, -45, -392)
}

local info2 = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

local anim2 = tween:Create(plr.Character.HumanoidRootPart, info2, config2)

anim1.Completed:Connect(function()
	anim2:Play()
end)

anim2.Completed:Connect(function()
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4474, -22, -371)
	
	
	
	local run = game:GetService("RunService")

	local AutoClaimAllowanceCoolDown = false
	local AutoClaimAllowanceType = "Near"

	run.RenderStepped:Connect(function()
		if game:GetService("ReplicatedStorage").PlayerbaseData2[game:GetService("Players").LocalPlayer.Name].NextAllowance.Value == 0 then
			local function GetATM(Studs)
				local Part;
				for _, v in ipairs(game:GetService("Workspace").Map.ATMz:GetChildren()) do
					if v:FindFirstChild("MainPart") then
						local Distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("MainPart").Position).Magnitude
						if Distance < Studs then
							Studs = Distance
							Part = v:FindFirstChild("MainPart")
							Part.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position + plr.Character.HumanoidRootPart.CFrame.LookVector * 5)
						end
					end
				end
				return Part
			end

			if AutoClaimAllowanceType == "Near" then
				local ATM = GetATM(math.huge)
				if ATM and not AutoClaimAllowanceCoolDown then
					AutoClaimAllowanceCoolDown = true
					coroutine.resume(coroutine.create(function()
						game:GetService("ReplicatedStorage").Events.CLMZALOW:InvokeServer(ATM)
					end))
					wait(0.5)
					AutoClaimAllowanceCoolDown = false
				end
			end
		end
	end)
end)

while wait(600) do
	plr.Character.Humanoid.Jump = true
end
