local checkpoints = workspace:WaitForChild("Checkpoints")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local stage = Instance.new("IntValue")
	stage.Name = "Stage"
	stage.Value = 1
	stage.Parent = leaderstats

	player.CharacterAdded:Connect(function(char)
		local hum = char:WaitForChild("Humanoid")
		wait()
		char:MoveTo(checkpoints[stage.Value].Position)

		hum.Touched:Connect(function(hit)
			if hit.Parent == checkpoints then
				if tonumber(hit.Name) == stage.Value + 1 then
					stage.Value = stage.Value + 1
				end
			end
		end)
	end)
end)