local plrName = game:GetService("Players").LocalPlayer.Name;
local gameCheck = 1;
local stopWhile = 0;
local supportedGames = {
	7047488135,  --Speed Run Simulator
	0  --do not load
}

while supportedGames[gameCheck] ~= 0 and stopWhile == 0 do
	if supportedGames[gameCheck] == game.PlaceId then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexialus/v4pr-Hub/main/Scripts/" .. game.PlaceId .. ".lua"))()
		stopWhile = 1
	else
		gameCheck = (gameCheck + 1)
	end
end

if supportedGames[gameCheck] == 0 then
	game:GetService("StarterGui")
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "No Supported Game Found.";
			Color = Color3.fromRGB(200, 50, 100);
			Font = Enum.Font.SourceSansBold;TextSize = 30
	})
else
	game:GetService("StarterGui")
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "Thank You For Using V4pr Hub, " .. plrName .. ".";
			Color = Color3.fromRGB(100, 50, 200);
			Font = Enum.Font.SourceSans;TextSize = 30
	})
end
