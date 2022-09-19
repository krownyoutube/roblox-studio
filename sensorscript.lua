local debounce = true

script.Parent.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") and debounce==true then
		debounce = false
		print(hit.Parent.Name)
		local player = game.Players:GetPlayerFromCharacter(hit.Parent)
		game.ReplicatedStorage.DoorTouched:FireClient(player)
		wait(0.1)
		debounce = true
	end
end)