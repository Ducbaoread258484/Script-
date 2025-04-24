-- Arise Crossover - Teleport Script with Menu
-- Vị trí 3D gốc: -16.58, 57.96, -88.41
-- Tọa độ màn hình giả định: 950, 540 (bạn cần chỉnh theo thực tế)

local teleportPoints = {
    ["Boss1"] = {x = 950, y = 540},
    -- Thêm các tọa độ khác vào đây
}

function teleport(name)
    local pos = teleportPoints[name]
    if pos then
        touchDown(0, pos.x, pos.y)
        usleep(120000)
        touchUp(0, pos.x, pos.y)
        toast("Teleported to " .. name)
    end
end

-- GUI menu
ui = {}
for name, _ in pairs(teleportPoints) do
    table.insert(ui, {name, "button", name})
end

function callback(name)
    teleport(name)
end

uiShow("Teleport Menu", ui)