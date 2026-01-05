
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function bot()
    local player = Players.LocalPlayer
    local character = player and player.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local root = character:FindFirstChild("HumanoidRootPart")
    if not humanoid or not root then return end

    humanoid.WalkSpeed = 10
    humanoid.JumpPower = 50

    RunService.RenderStepped:Connect(function()
        root.CFrame = root.CFrame * CFrame.new(0, 0, 0.1)  -- avanza un poco cada frame
    end)
end

bot()
```
- 
