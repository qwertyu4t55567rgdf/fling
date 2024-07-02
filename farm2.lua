local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local plr = Players.LocalPlayer

local config1 = {
    CFrame = CFrame.new(-4475, 3, -363)
}

local speed

local distance = (plr.Character.HumanoidRootPart.Position - Vector3.new(-4475, 3, -363)).Magnitude

if distance < 50 then
    speed = 3
elseif distance < 150 then
    speed = 5
elseif distance < 250 then
    speed = 10
elseif distance < 500 then
    speed = 20
elseif distance < 1000 then
    speed = 30
else
    speed = 40 -- Default speed for distances beyond 1000
end

local info1 = TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

local anim1 = TweenService:Create(plr.Character.HumanoidRootPart, info1, config1)

anim1:Play()

local config2 = {
    CFrame = CFrame.new(-4469, -21, -375)
}

local info2 = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

local anim2 = TweenService:Create(plr.Character.HumanoidRootPart, info2, config2)

anim1.Completed:Connect(function()
    anim2:Play()
end)

local function farm()
    local AutoClaimAllowanceCoolDown = false
    local AutoClaimAllowanceType = "Near"

    RunService.RenderStepped:Connect(function()
        local playerData = ReplicatedStorage.PlayerbaseData2[plr.Name]
        if playerData.NextAllowance.Value == 0 then
            local function GetATM(Studs)
                local Part
                for _, v in ipairs(Workspace.Map.ATMz:GetChildren()) do
                    if v:FindFirstChild("MainPart") then
                        local Distance = (plr.Character.HumanoidRootPart.Position - v.MainPart.Position).Magnitude
                        if Distance < Studs then
                            Studs = Distance
                            Part = v.MainPart
                        end
                    end
                end
                return Part
            end

            if AutoClaimAllowanceType == "Near" then
                local ATM = GetATM(math.huge)
                if ATM and not AutoClaimAllowanceCoolDown then
                    AutoClaimAllowanceCoolDown = true
                    coroutine.wrap(function()
                        while playerData.NextAllowance.Value == 0 do
                            plr.Character.HumanoidRootPart.CFrame = CFrame.new(ATM.Position, ATM.CFrame.LookVector * -5)
                            wait() -- Added wait to prevent infinite loop and improve performance
                        end
                        ReplicatedStorage.Events.CLMZALOW:InvokeServer(ATM)
                        wait(0.5)
                        AutoClaimAllowanceCoolDown = false
                    end)()
                end
            end
        end
    end)
end

anim2.Completed:Connect(function()
    wait(1)
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(-4469, -45, -386)
    farm()
end)

while wait(60) do
    plr.Character.Humanoid.Jump = true
end
