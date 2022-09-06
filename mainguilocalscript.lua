local MarketplaceService = game:GetService("MarketplaceService")

local MainFrame = script.Parent.MainFrame
local ?Gamepass = MainFrame.Frame.?GamepassFrame.?Gamepass
local OpenShop = MainFrame.Parent.OpenShop

local player = game.Players.LocalPlayer

local ?GamepassID = 000000

?Gamepass.MouseButton1Down:Connect(function()
	local hasPass
	local success, message = pcall(function()
		hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, ?GamepassID)
	end)
	
	if hasPass then
		print("player already has the gamepass")
	else
		MarketplaceService:PromptGamePassPurchase(player, ?GamepassID)
	end
end)

OpenShop.MouseButton1Down:Connect(function()
	MainFrame.Visible = not MainFrame.Visible
end)
