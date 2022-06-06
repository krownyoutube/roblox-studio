local CarMain = script.Parent.Parent.Parent
local delayTime = .1
script.parent.CD.MouseClick:Connect(function()
	script.Parent.Parent.Parent.Car:Destroy()
	wait(delayTime)
	local car = game.ServerStorage.Regen.Car:Clone()
	car.Parent = CarMain

end)