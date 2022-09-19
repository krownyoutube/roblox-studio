game.ReplicatedStorage.DoorTouched.OnClientEvent:Connect(function()
	game.ReplicatedStorage.DoorTouched:FireServer()
end)

game.ReplicatedStorage.IfBought.OnClientEvent:Connect(function()
	game.Workspace.GamepassDoor.Sensor:Destroy()
end)
