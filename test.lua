-- Lấy đối tượng Player
local player = game.Players.LocalPlayer

-- Kiểm tra nếu Player tồn tại
if player then
    -- Lấy đối tượng Character của Player
    local character = player.Character or player.CharacterAdded:Wait()

    -- Kiểm tra nếu Character tồn tại
    if character then
        -- Lấy đối tượng HumanoidRootPart của Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        -- Lấy tọa độ của HumanoidRootPart
        local position = humanoidRootPart.Position

        -- In tọa độ ra Output
        print("Tọa độ của nhân vật: ", position)
    end
end
