-- Menu teleport Arise Crossover
local coords = {
    ["Điểm Tele"] = {-16.5845299, 57.9649925, -88.4107285},
    ["Boss 1"] = {x1, y1, z1},
    ["Boss 2"] = {x2, y2, z2}
}

function teleportTo(x, y, z)
    local plr = game.Players.LocalPlayer
    if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)
    end
end

-- Giao diện đơn giản (nếu bạn dùng executor có hỗ trợ UI)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/uilib"))()
local win = library:CreateWindow("Teleport")
local tab = win:CreateTab("Chọn điểm")

for name, pos in pairs(coords) do
    tab:CreateButton(name, function()
        teleportTo(unpack(pos))
    end)
end
