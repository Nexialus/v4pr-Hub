getgenv().autoClick = false;
getgenv().autoRebirth = false;
getgenv().autoCollectRings = false;
getgenv().autoFinishRace = false;

function teleportTo(locationCFrame)
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = locationCFrame
    end
end

function autoClick()
    spawn(function()
        while wait(0.1) do
            if not getgenv().autoClick then
                break
            end
            game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
        end
    end)
end

function autoRebirth()
    spawn(function()
        while wait(1) do
            if not getgenv().autoRebirth then
                break
            end
            game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        end
    end)
end

function autoCollectRings()
    spawn(function()
        while wait(1) do
            if not getgenv().autoCollectRings then
                break
            end
            teleportTo(game:GetService("Workspace").OrbSpawns.Ring.CFrame)
        end
    end)
end

function autoFinishRace()
    spawn(function()
        while wait(1) do
            if not getgenv().autoFinishRace then
                break
            end
            game:GetService("ReplicatedStorage").Remotes.RaceTrigger:FireServer()
            teleportTo(game:GetService("Workspace").RaceEnd.CFrame)
        end
    end)
end

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("ImageLabel")
local FarmRaces = Instance.new("TextButton")
local AutoRebirth = Instance.new("TextButton")
local TpToVIP = Instance.new("TextButton")
local AutoClick = Instance.new("TextButton")
local UnlkAllTps = Instance.new("TextButton")
local FarmRings = Instance.new("TextButton")
local TitleCredit = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 1.000
main.Position = UDim2.new(0.65625, 0, 0.435514033, 0)
main.Size = UDim2.new(0, 380, 0, 230)
main.Image = "rbxassetid://3570695787"
main.ImageColor3 = Color3.fromRGB(55, 52, 68)
main.ScaleType = Enum.ScaleType.Slice
main.SliceCenter = Rect.new(100, 100, 100, 100)
main.SliceScale = 0.100
main.Active = true
main.Draggable = true

  
FarmRaces.Name = "FarmRaces"
FarmRaces.Parent = main
FarmRaces.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
FarmRaces.BorderColor3 = Color3.fromRGB(27, 42, 53)
FarmRaces.BorderSizePixel = 0
FarmRaces.Position = UDim2.new(0.51192981, 0, 0.43632865, 0)
FarmRaces.Size = UDim2.new(0, 175, 0, 54)
FarmRaces.Font = Enum.Font.Gotham
FarmRaces.Text = "Farm Races"
FarmRaces.TextColor3 = Color3.fromRGB(0, 0, 0)
FarmRaces.TextSize = 17.000
FarmRaces.MouseButton1Down:connect(function()
    if autoFinishRace then
        autoFinishRace = false
    else
        autoFinishRace = true
    end
    autoFinishRace()
end)

AutoRebirth.Name = "AutoRebirth"
AutoRebirth.Parent = main
AutoRebirth.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
AutoRebirth.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoRebirth.BorderSizePixel = 0
AutoRebirth.Position = UDim2.new(0.51192981, 0, 0.153719828, 0)
AutoRebirth.Size = UDim2.new(0, 175, 0, 54)
AutoRebirth.Font = Enum.Font.Gotham
AutoRebirth.Text = "Auto Rebirth"
AutoRebirth.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoRebirth.TextSize = 17.000
AutoRebirth.MouseButton1Down:connect(function()
    if autoRebirth then
        autoRebirth = false
    else
        autoRebirth = true
    end
    autoRebirth()
end)

TpToVIP.Name = "TpToVIP"
TpToVIP.Parent = main
TpToVIP.BackgroundColor3 = Color3.fromRGB(112, 100, 120)
TpToVIP.BorderColor3 = Color3.fromRGB(27, 42, 53)
TpToVIP.BorderSizePixel = 0
TpToVIP.Position = UDim2.new(0.51192981, 0, 0.715942144, 0)
TpToVIP.Size = UDim2.new(0, 175, 0, 54)
TpToVIP.Font = Enum.Font.Gotham
TpToVIP.Text = "Teleport To VIP"
TpToVIP.TextColor3 = Color3.fromRGB(0, 0, 0)
TpToVIP.TextSize = 17.000
TpToVIP.MouseButton1Down:connect(function()
    teleportTo(game:GetService("Workspace").Teleports.VIP.CFrame)
end)

AutoClick.Name = "AutoClick"
AutoClick.Parent = main
AutoClick.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
AutoClick.BorderColor3 = Color3.fromRGB(27, 42, 53)
AutoClick.BorderSizePixel = 0
AutoClick.Position = UDim2.new(0.0224561952, 0, 0.153719798, 0)
AutoClick.Size = UDim2.new(0, 175, 0, 54)
AutoClick.Font = Enum.Font.Gotham
AutoClick.Text = "Auto Click"
AutoClick.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoClick.TextSize = 17.000
AutoClick.MouseButton1Down:connect(function()
    if autoClick then
        autoClick = false
    else
        autoClick = true
    end
    AutoClick()
end)

UnlkAllTps.Name = "UnlkAllTps"
UnlkAllTps.Parent = main
UnlkAllTps.BackgroundColor3 = Color3.fromRGB(112, 100, 120)
UnlkAllTps.BorderColor3 = Color3.fromRGB(27, 42, 53)
UnlkAllTps.BorderSizePixel = 0
UnlkAllTps.Position = UDim2.new(0.0250876974, 0, 0.715942144, 0)
UnlkAllTps.Size = UDim2.new(0, 175, 0, 54)
UnlkAllTps.Font = Enum.Font.Gotham
UnlkAllTps.Text = "Unlock All Teleports"
UnlkAllTps.TextColor3 = Color3.fromRGB(0, 0, 0)
UnlkAllTps.TextSize = 17.000

FarmRings.Name = "FarmRings"
FarmRings.Parent = main
FarmRings.BackgroundColor3 = Color3.fromRGB(129, 111, 166)
FarmRings.BorderColor3 = Color3.fromRGB(27, 42, 53)
FarmRings.BorderSizePixel = 0
FarmRings.Position = UDim2.new(0.0240351632, 0, 0.43632865, 0)
FarmRings.Size = UDim2.new(0, 175, 0, 54)
FarmRings.Font = Enum.Font.Gotham
FarmRings.Text = "Farm Rings"
FarmRings.TextColor3 = Color3.fromRGB(0, 0, 0)
FarmRings.TextSize = 17.000
FarmRings.MouseButton1Down:connect(function()
    if farmRings then
        farmRings = false
    else
        farmRings = true
    end
    farmRings()
end)

TitleCredit.Name = "Title&Credit"
TitleCredit.Parent = main
TitleCredit.BackgroundColor3 = Color3.fromRGB(43, 37, 50)
TitleCredit.BorderSizePixel = 0
TitleCredit.Size = UDim2.new(0, 380, 0, 25)
TitleCredit.Font = Enum.Font.GothamMedium
TitleCredit.Text = "V4pr Hub V0.3  |  Made by vapr.wav#7496"
TitleCredit.TextColor3 = Color3.fromRGB(232, 145, 235)
TitleCredit.TextSize = 18.000
