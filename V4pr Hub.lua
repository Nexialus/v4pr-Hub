--welcum messag

local StarterGui = game:GetService("StarterGui")
	StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = "Thank you for using V4pr Hub.";
		Color = Color3.fromRGB(100, 50, 200);
		Font = Enum.Font.SourceSans;TextSize = 30
    })
print("You are using V4pr Hub Version 0.2")

--Gui

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TitleLogo = Instance.new("ImageLabel")
local CMDXbutton = Instance.new("TextButton")
local DarkDexbutton = Instance.new("TextButton")
local SimpleSpybutton = Instance.new("TextButton")
local Stupidbutton = Instance.new("TextButton")

--Gui Properties

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.673913062, 0, 0.62795943, 0)
main.Size = UDim2.new(0, 450, 0, 300)
main.Active = true
main.Draggable = true

Title.Name = "Title"
Title.Parent = main
Title.BackgroundColor3 = Color3.fromRGB(69, 66, 71)
Title.BorderColor3 = Color3.fromRGB(53, 53, 53)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0444444455, 0, 0, 0)
Title.Size = UDim2.new(0, 430, 0, 25)
Title.Font = Enum.Font.SourceSans
Title.Text = "V4pr Hub V0.2  |  Made by vapr.wav#7496"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000

TitleLogo.Name = "Title Logo"
TitleLogo.Parent = main
TitleLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLogo.BorderSizePixel = 0
TitleLogo.Size = UDim2.new(0, 25, 0, 25)
TitleLogo.Image = "https://img.icons8.com/nolan/128/v.png"

CMDXbutton.Name = "CMD-X button"
CMDXbutton.Parent = main
CMDXbutton.BackgroundColor3 = Color3.fromRGB(114, 110, 117)
CMDXbutton.Position = UDim2.new(0.0222222228, 0, 0.116666667, 0)
CMDXbutton.Size = UDim2.new(0, 210, 0, 120)
CMDXbutton.Font = Enum.Font.SourceSans
CMDXbutton.Text = "Launch CMD-X"
CMDXbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
CMDXbutton.TextSize = 39.000
CMDXbutton.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)

DarkDexbutton.Name = "DarkDex button"
DarkDexbutton.Parent = main
DarkDexbutton.BackgroundColor3 = Color3.fromRGB(114, 110, 117)
DarkDexbutton.BorderColor3 = Color3.fromRGB(27, 42, 53)
DarkDexbutton.Position = UDim2.new(0.0222222228, 0, 0.550000012, 0)
DarkDexbutton.Size = UDim2.new(0, 210, 0, 125)
DarkDexbutton.Font = Enum.Font.SourceSans
DarkDexbutton.Text = "Launch DarkDex"
DarkDexbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
DarkDexbutton.TextSize = 34.000
DarkDexbutton.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/S4W77/Dark-Dex-V3/main/Dark%20Dex%20V3.txt", true))()
end)

SimpleSpybutton.Name = "SimpleSpy button"
SimpleSpybutton.Parent = main
SimpleSpybutton.BackgroundColor3 = Color3.fromRGB(114, 110, 117)
SimpleSpybutton.BorderColor3 = Color3.fromRGB(27, 42, 53)
SimpleSpybutton.Position = UDim2.new(0.51111114, 0, 0.116666667, 0)
SimpleSpybutton.Size = UDim2.new(0, 210, 0, 120)
SimpleSpybutton.Font = Enum.Font.SourceSans
SimpleSpybutton.Text = "Launch SimpleSpy"
SimpleSpybutton.TextColor3 = Color3.fromRGB(0, 0, 0)
SimpleSpybutton.TextSize = 29.000
SimpleSpybutton.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
end)

Stupidbutton.Name = "Stupid button"
Stupidbutton.Parent = main
Stupidbutton.BackgroundColor3 = Color3.fromRGB(114, 110, 117)
Stupidbutton.BorderColor3 = Color3.fromRGB(27, 42, 53)
Stupidbutton.Position = UDim2.new(0.51111114, 0, 0.550000012, 0)
Stupidbutton.Size = UDim2.new(0, 210, 0, 125)
Stupidbutton.Font = Enum.Font.SourceSans
Stupidbutton.Text = "Print \"vapr.wav is very cool\""
Stupidbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
Stupidbutton.TextSize = 19.000
Stupidbutton.MouseButton1Down:connect(function()
	print("vapr.wav is very cool")
end)