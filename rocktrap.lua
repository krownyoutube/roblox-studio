local trap = script.Parent
local trigger = trap.Trigger
local door = trap.Door
local rock = trap.Rock

local resetPart = trap.Reset

local rolling = false

local function reset()
	door.Transparency = 0 -- Change to 1 for door transparency after player hits the trigger
	door.CanCollide = true
	rock.Position = resetPart.Position + Vector3.new(0, rock.Size.Y/2,0)
	rock.Anchored = true
	rock.Velocity = Vector3.new(0,0,0)
end

local function release (otherPart)
	local humanoid = otherPart.Parent:FindFirstChild('Humanoid')
	if humanoid and not rolling then
		rolling = true
		door.Transparency = 1
		door.CanCollide = false
		rock.Anchored = false
		wait(3) -- Number of seconds before rock resets
		reset()
		rolling = false
	end
end

local function crush(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild('Humanoid')
	if humanoid then
		humanoid.Health = 0
		wait(1)
		reset()
	end
end

trigger.Touched:Connect(release)
rock.Touched:Connect(crush)
