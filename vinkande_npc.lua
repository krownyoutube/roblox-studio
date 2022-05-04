Asset = "http://www.roblox.com/Asset?id="
IDs = {507770239}
Anims = {}
AnimsL = {}
Human = script.Parent:WaitForChild("Humanoid")

for i=1, #IDs do
	local Anim = Instance.new("Animation")
	Anim.AnimationId = (Asset..IDs[math.random(1,#IDs)])
	table.insert(Anims,Anim)
	wait()
end

for i=1, #Anims do
	local AnimL = Human:LoadAnimation(Anims[i])
	table.insert(AnimsL,AnimL)
	wait()
end


while true do
	local Dance = AnimsL[math.random(1,#AnimsL)]
	Dance:Play()
	wait(15)
end