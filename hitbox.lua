-- hitbox.lua

local Hitbox = {}

function Hitbox:Apply(size)
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local root = v.Character.HumanoidRootPart
            pcall(function()
                root.Size = Vector3.new(size, size, size)
                root.Transparency = 0.7
                root.Material = Enum.Material.ForceField
            end)
        end
    end
end

function Hitbox:Reset()
    for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local root = v.Character.HumanoidRootPart
            pcall(function()
                root.Size = Vector3.new(2, 2, 1) -- default size
                root.Transparency = 1
                root.Material = Enum.Material.Plastic
            end)
        end
    end
end

return Hitbox
