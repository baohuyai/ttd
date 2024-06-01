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
        local targetPosition = Vector3.new(x, y, z)  -- Thay đổi tọa độ đích theo yêu cầu của bạn

        -- Dịch chuyển nhân vật đến tọa độ đích
        humanoidRootPart.CFrame = CFrame.new(targetPosition)

        -- Đợi một chút trước khi nhấn nút "Bắt đầu"
        wait(1)

        -- Tìm đối tượng nút "Bắt đầu"
        local startButton = game.Workspace:FindFirstChild("Bắt đầu")  -- Thay đổi tên đối tượng theo yêu cầu của bạn
        if startButton then
            -- Kích hoạt sự kiện nhấn nút
            startButton:FireServer()
        else
            print("Không tìm thấy đối tượng nút 'Bắt đầu'")
        end
    end
end
