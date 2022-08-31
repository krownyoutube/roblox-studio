local marketPlaceService = game:GetService("MarketplaceService")

marketPlaceService.ProcessReceipt = function(receiptInfo)
	local player = game.Players:GetPlayerByUserId(receiptInfo.PlayerId)

	if receiptInfo.ProductId == 000000 then
		player.leaderstats.Stage.Value += 1
		wait(1)
		player:LoadCharacter()
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
end