local plrName = game:GetService("Players").LocalPlayer.Name;
local supportedGames = {
	7047488135,  --Speed Run Simulator  |  https://www.roblox.com/games/7047488135/Speed-Run-Simulator
	70005410,  --Blox Hunt  |  https://www.roblox.com/games/70005410/Blox-Hunt-v2-7-25
	0  --do not load
}


for _,v in pairs(supportedGames) do
	if v == game.PlaceId then
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "Thank You For Using V4pr Hub, " .. plrName .. ".";
			Color = Color3.fromRGB(150, 70, 250);
			Font = Enum.Font.SourceSans;TextSize = 30
		})
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Nexialus/v4pr-Hub/main/Scripts/" .. game.PlaceId .. ".lua"))()
	else
		if v == 0 then
			game.StarterGui:SetCore("ChatMakeSystemMessage", {
				Text = "No Supported Game Found.";
				Color = Color3.fromRGB(200, 50, 100);
				Font = Enum.Font.SourceSansBold;TextSize = 30
			})
			break
		end
	end
end
