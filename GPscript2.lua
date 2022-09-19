local mps = game:GetService("MarketplaceService")
local gamepassid = 000000 -- Change this to your ID
local debounce = true
local plr = game.Players:FindFirstChild(script.Name)

game.ReplicatedStorage.DoorTouched.OnServerEvent:Connect(function(player)
	if plr==player and debounce == true then
		debounce = false
		mps:PromptGamePassPurchase(player, gamepassid)
	end
end)

mps.PromptGamePassPurchaseFinished:Connect(function(player, id, purchased)
	if player==plr and id==gamepassid and purchased then
		game.ReplicatedStorage.IfBought:FireClient(player)
		script:Destroy()
	elseif player==plr and id==gamepassid then
		debounce = true
	end
end)