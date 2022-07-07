local Humanoid = script.Parent.Humanoid
while true do
	local Material = Humanoid.FloorMaterial 
	if Material == Enum.Material.CrackedLava then
		Humanoid:TakeDamage(100)
	end
	wait(0.1) 
end