while wait(1) do
	if script.Parent.Humanoid:GetState() == Enum.HumanoidStateType.Swimming
	then 
		script.Parent.Humanoid.Health = 0
	end
end
