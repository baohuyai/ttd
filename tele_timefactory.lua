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
        local targetPosition = Vector3.new(0, 10, 0)  -- Thay đổi tọa độ đích theo yêu cầu của bạn

        -- Dịch chuyển nhân vật đến tọa độ đích
        humanoidRootPart.CFrame = CFrame.new(targetPosition)

        -- Đợi một chút trước khi bắt đầu wave
        wait(1)

        -- Bắt đầu wave
        -- Giả sử có một đối tượng hoặc hàm cụ thể để bắt đầu wave
        -- Ví dụ: game.Workspace.WaveStarter:FireServer() hoặc tương tự
        local waveStarter = game.Workspace:FindFirstChild("WaveStarter")  -- Thay đổi theo yêu cầu của bạn
        if waveStarter then
            waveStarter:FireServer()  -- Gọi hàm bắt đầu wave
        else
            print("Không tìm thấy đối tượng để bắt đầu wave")
        end
    end
end
