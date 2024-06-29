local run = game:GetService("RunService")

AutoClaimAllowanceCoolDown = false
AutoClaimAllowanceType = "Near"

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
