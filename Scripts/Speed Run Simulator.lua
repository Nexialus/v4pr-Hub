getgenv().autoClick = false;
getgenv().autoRebirth = false;
getgenv().autoCollectRings = false;
getgenv().autoFinishRace = false;

function teleportTo(locationCFrame)
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = locationCFrame
    end
end

spawn(function()
    while wait(0.1) do
        if not getgenv().autoClick then
            break
        end
        game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
    end
end)

spawn(function()
    while wait(1) do
        if not getgenv().autoRebirth then
            break
        end
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
    end
end)

spawn(function()
    while wait(1) do
        if not getgenv().autoCollectRings then
            break
        end
        teleportTo(game:GetService("Workspace").OrbSpawns.Ring.CFrame)
    end
end)

spawn(function()
    while wait(1) do
        if not getgenv().autoFinishRace then
            break
        end
        game:GetService("ReplicatedStorage").Remotes.RaceTrigger:FireServer()
        teleportTo(game:GetService("Workspace").RaceEnd.CFrame)
    end
end)

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = game.Workspace
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 1.000
main.Position = UDim2.new(0.546875, 0, 0.496054113, 0)
main.Size = UDim2.new(0, 380, 0, 230)
main.Image = "rbxassetid://3570695787"
main.ImageColor3 = Color3.fromRGB(62, 52, 66)
main.ScaleType = Enum.ScaleType.Slice
main.SliceCenter = Rect.new(100, 100, 100, 100)
main.SliceScale = 0.120
main.Active = true
main.Draggable = true

  
TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(43, 37, 50)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 380, 0, 25)
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "V4pr Hub V0.3  |  Made by vapr.wav#7496"
TextLabel.TextColor3 = Color3.fromRGB(232, 145, 235)
TextLabel.TextSize = 18.000

TextButton.Parent = main
TextButton.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.51192981, 0, 0.43632865, 0)
TextButton.Size = UDim2.new(0, 175, 0, 54)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Farm Races"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 17.000
TextButton.MouseButton1Down:connect(function()
    if getgenv().autoFinishRace then
        getgenv().autoFinishRace = false
    else
        getgenv().autoFinishRace = true
    end
end)

TextButton_2.Parent = main
TextButton_2.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
TextButton_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0240351632, 0, 0.43632865, 0)
TextButton_2.Size = UDim2.new(0, 175, 0, 54)
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = "Farm Rings"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 17.000

TextButton_3.Parent = main
TextButton_3.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
TextButton_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0224561952, 0, 0.153719798, 0)
TextButton_3.Size = UDim2.new(0, 175, 0, 54)
TextButton_3.Font = Enum.Font.Gotham
TextButton_3.Text = "Auto Click"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 17.000

TextButton_4.Parent = main
TextButton_4.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
TextButton_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.51192981, 0, 0.153719828, 0)
TextButton_4.Size = UDim2.new(0, 175, 0, 54)
TextButton_4.Font = Enum.Font.Gotham
TextButton_4.Text = "Auto Rebirth"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 17.000

TextButton_5.Parent = main
TextButton_5.BackgroundColor3 = Color3.fromRGB(112, 100, 120)
TextButton_5.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.51192981, 0, 0.715942144, 0)
TextButton_5.Size = UDim2.new(0, 175, 0, 54)
TextButton_5.Font = Enum.Font.Gotham
TextButton_5.Text = "Teleport To VIP"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 17.000
TextButton_5.MouseButton1Down:connect(function()
    teleportTo(game:GetService("Workspace").Teleports.VIP.locationCFrame)
end)

TextButton_6.Parent = main
TextButton_6.BackgroundColor3 = Color3.fromRGB(112, 100, 120)
TextButton_6.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.0250876974, 0, 0.715942144, 0)
TextButton_6.Size = UDim2.new(0, 175, 0, 54)
TextButton_6.Font = Enum.Font.Gotham
TextButton_6.Text = "Unlock All Teleports"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 17.000
