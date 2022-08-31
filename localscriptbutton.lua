script.Parent.MouseButton1Down:Connect(function()
	local marketPlaceService = game:GetService("MarketplaceService")
	marketPlaceService:PromptProductPurchase(game.Players.LocalPlayer, 000000)
end)