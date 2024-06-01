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

        -- Xác định tọa độ đích
        local targetPosition = Vector3.new(529.7452392578125, -56.917850494384766, -916.18798828125)  -- Thay đổi tọa độ đích theo yêu cầu của bạn

        -- Dịch chuyển nhân vật đến tọa độ đích
        humanoidRootPart.CFrame = CFrame.new(targetPosition)
    end
end
