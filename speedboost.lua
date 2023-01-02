local player = game:GetService("Players").LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")

local speed = 10

game:GetService("UserInputService").InputBegan:Connect(function(inputObject)
    if inputObject.KeyCode == Enum.KeyCode.E then
        humanoid.WalkSpeed = humanoid.WalkSpeed + speed
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Speed Increased";
            Text = "You got +" .. tostring(speed) .. " speed.";
        })
    end
end)
