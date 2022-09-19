local mps = game:GetService("MarketplaceService")
local gamepassid = 000000 -- Change this to your ID

game.Players.PlayerAdded:Connect(function(player)
	if not mps:UserOwnsGamePassAsync(player.UserId, gamepassid) then
		local clone = script.Script2:Clone()
		clone.Parent = game.ServerScriptService
		clone.Name = player.Name
		clone.Disabled = false
	else
		game.ReplicatedStorage.IfBought:FireClient(player)
	end
end)


game.Players.PlayerRemoving:Connect(function(player)
	if game.ServerScriptService:FindFirstChild(player.Name) then
		game.ServerScriptService:FindFirstChild(player.Name):Destroy()
	end
end)