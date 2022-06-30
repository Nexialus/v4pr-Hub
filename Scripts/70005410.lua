--Blox Hunt

getgenv().tokenFarm = false
getgenv().hiderAutoWin = false

local plrHead = game:GetService("Players").LocalPlayer.Character.Head

function teleportTo(locationCFrame)
    if game.Players.LocalPlayer.Character then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = locationCFrame
    end
end

function tokenFarmFunc()
	spawn(function()
		while tokenFarm do
			firetouchinterest(plrHead,game:GetService("Workspace").Lobby.LobbyObby.Token,0)
			wait()
			firetouchinterest(plrHead,game:GetService("Workspace").Lobby.LobbyObby.Token,1)
		end
	end)
end

function hiderAutoWinFunc()
	spawn(function()
		while hiderAutoWin and wait(1) do
            teleportTo(game:GetService("Workspace").Lobby.River.RiverGrate.Part.CFrame)
		end
	end)
end


local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("ImageLabel")
local HiderAutoWin = Instance.new("TextButton")
local TokenFarm = Instance.new("TextButton")
local TitleCredit = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = game.ScreenGui
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

HiderAutoWin.Name = "HiderAutoWin"
HiderAutoWin.Parent = main
HiderAutoWin.BackgroundColor3 = Color3.fromRGB(166, 83, 91)
HiderAutoWin.BorderColor3 = Color3.fromRGB(27, 42, 53)
HiderAutoWin.BorderSizePixel = 0
HiderAutoWin.Position = UDim2.new(0.514561355, 0, 0.153719828, 0)
HiderAutoWin.Size = UDim2.new(0, 174, 0, 184)
HiderAutoWin.Font = Enum.Font.Gotham
HiderAutoWin.Text = "Auto Win\n(Hider)"
HiderAutoWin.TextColor3 = Color3.fromRGB(0, 0, 0)
HiderAutoWin.TextSize = 24.000
HiderAutoWin.MouseButton1Down:connect(function()
    if getgenv().hiderAutoWin then
        getgenv().hiderAutoWin = false
        FarmRaces.BackgroundColor3 = Color3.fromRGB(166, 83, 91)
    else
        getgenv().hiderAutoWin = true
        FarmRaces.BackgroundColor3 = Color3.fromRGB(82, 166, 85)
    end
    hiderAutoWinFunc()
end)

TokenFarm.Name = "TokenFarm"
TokenFarm.Parent = main
TokenFarm.BackgroundColor3 = Color3.fromRGB(166, 83, 91)
TokenFarm.BorderColor3 = Color3.fromRGB(27, 42, 53)
TokenFarm.BorderSizePixel = 0
TokenFarm.Position = UDim2.new(0.027719276, 0, 0.153719828, 0)
TokenFarm.Size = UDim2.new(0, 174, 0, 184)
TokenFarm.Font = Enum.Font.Gotham
TokenFarm.Text = "Farm Tokens"
TokenFarm.TextColor3 = Color3.fromRGB(0, 0, 0)
TokenFarm.TextSize = 24.000
TokenFarm.MouseButton1Down:connect(function()
    if getgenv().tokenFarm then
        getgenv().tokenFarm = false
        FarmRaces.BackgroundColor3 = Color3.fromRGB(166, 83, 91)
    else
        getgenv().tokenFarm = true
        FarmRaces.BackgroundColor3 = Color3.fromRGB(82, 166, 85)
    end
    tokenFarmFunc()
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
