local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")

local ?GamepassID = 000000

game.Players.PlayerAdded:Connect(function(player)
	
	local hasPass
	
	local success, message = pcall(function()
		hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, ?GamepassID)
	end)
	
	if hasPass then
		print("player has the gamepass")
		
		local ? = game.ReplicatedStorage.?:Clone()
		?.Parent = player.Backpack
	end
end)

local function onPromtGamePassPurchaseFinished(player, purchasedPassID, purchaseSuccess)
	
	if purchaseSuccess == true and purchasedPassID == ?GamepassID then
		print(player.Name .. " purchased the gamepass!")
		
		local ? = game.ReplicatedStorage.?:Clone()
		?.Parent = player.Backpack 
	end
end

MarketplaceService.PromptGamePassPurchaseFinished:Connect(onPromtGamePassPurchaseFinished)