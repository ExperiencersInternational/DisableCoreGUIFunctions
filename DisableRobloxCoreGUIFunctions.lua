local toolbar = plugin:CreateToolbar("Disable CoreGUI Functions v1.05 by GamersInternational")

local disablechatbutton = toolbar:CreateButton("Disable Chat", "This button inserts a LocalScript that disables chat.", "rbxassetid://4458901886")
local disablehealthbarbutton = toolbar:CreateButton("Disable Health Bar", "This button inserts a LocalScript that disables the health bar popping up next to the menu button when you take damage in a game.", "rbxassetid://4458901886")
local disablebackpackbutton = toolbar:CreateButton("Disable Backpack", "This button inserts a LocalScript that disables the backpack function in game. When disabling, any tools that go into the backpack will not work unless you have an alternative backpack.", "rbxassetid://4458901886")
local disableplayerlistbutton = toolbar:CreateButton("Disable Leaderboard/PlayerList", "This button inserts a LocalScript that disables the Roblox leaderboard/playerlist.", "rbxassetid://4458901886")
local disableemotesbutton = toolbar:CreateButton("Disable Emotes", "This button inserts a LocalScript that disables the emotes GUI. Players will still be able to use emotes if they type them into the Roblox chat.", "rbxassetid://4458901886")
local disableresetbutton = toolbar:CreateButton("Disable Reset Character", "This button inserts a LocalScript into StarterGUI that disables the reset character button in the Roblox menu.", "rbxassetid://4458901886")
local disableshiftlockbutton = toolbar:CreateButton("Disable Shift Lock Switch", "This button inserts a Script into Workspace that disables the shift lock switch toggle in the Roblox menu.", "rbxassetid://4458901886")
local disableallbutton = toolbar:CreateButton("Disable All CoreGUI Functions","This button inserts a LocalScript that disables every CoreGUI function listed in the other buttons.","rbxassetid://4458901886")
-- local readmedocument = toolbar:CreateButton("ReadMe Information","Inserts a readme document into the Workplace menu.")
--readmedocument.Click:Connect (function()
-- local newreadmescript = Instance.new("Script")
-- newreadmescript.Name = "DisableCoreGUIFunctionsReadMe"
--end)
disablechatbutton.Click:Connect (function()
	if game.StarterPlayer.StarterPlayerScripts:FindFirstChild("DisableChat") then
		return
	else
		local newdisablechatscript = Instance.new("LocalScript")
		newdisablechatscript.Source = "local StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)"
		newdisablechatscript.Parent = game.StarterPlayer.StarterPlayerScripts
		newdisablechatscript.Name = "DisableChat"
	end
end)

disablehealthbarbutton.Click:Connect (function()
	if game.StarterPlayer.StarterPlayerScripts:FindFirstChild("DisableHealthBar") then
		return
	else
		local newdisablehealthscript = Instance.new("LocalScript")
		newdisablehealthscript.Source = "local StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health, false)"
		newdisablehealthscript.Parent = game.StarterPlayer.StarterPlayerScripts
		newdisablehealthscript.Name = "DisableHealthBar"
	end
end)

disablebackpackbutton.Click:Connect (function()
	if game.StarterPlayer.StarterPlayerScripts:FindFirstChild("DisableBackpack") then
		return
	else
		local newdisablebackpackscript = Instance.new("LocalScript")
		newdisablebackpackscript.Source = "local StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)"
		newdisablebackpackscript.Parent = game.StarterPlayer.StarterPlayerScripts
		newdisablebackpackscript.Name = "DisableBackpack"
	end
end)

disableplayerlistbutton.Click:Connect (function()
	if game.StarterPlayer.StarterPlayerScripts:FindFirstChild("DisablePlayerlist") then
		return
	else
		local newdisableplayerlistscript = Instance.new("LocalScript")
		newdisableplayerlistscript.Source = "local StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)"
		newdisableplayerlistscript.Parent = game.StarterPlayer.StarterPlayerScripts
		newdisableplayerlistscript.Name = "DisablePlayerlist"
	end
end)

disableemotesbutton.Click:Connect (function()
	if game.StarterPlayer.StarterPlayerScripts:FindFirstChild("DisableEmotes") then
		return
	else
	local newdisableemotesscript = Instance.new("LocalScript")
	newdisableemotesscript.Source = "local StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu, false)"
	newdisableemotesscript.Parent = game.StarterPlayer.StarterPlayerScripts
	newdisableemotesscript.Name = "DisableEmotes"
	end
end)

disableallbutton.Click:Connect (function()
local newdisableallscript = Instance.new("LocalScript")
	newdisableallscript.Source = "-- Try my new plugin, Roblox Fast Donation Button Creation at https://www.roblox.com/catalog/6016161703/Roblox-Fast-Donation-Button-Creation \n\nlocal StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)"
newdisableallscript.Parent = game.StarterPlayer.StarterPlayerScripts
	newdisableallscript.Name = "DisableAllCoreGUIFunctions"
	local newdisableresetscript = Instance.new("LocalScript")
	local folder = Instance.new('Folder')
	folder.Parent = game.StarterGui
	folder.Name = 'DisableCoreGUIFunctions'
	newdisableresetscript.Source = "local StarterGui = game:GetService('StarterGui') StarterGui:SetCore('ResetButtonCallback',false)"
	newdisableresetscript.Parent = folder
	newdisableresetscript.Name = "DisableResetCharacter"
	local newdisableshiftlockscript = Instance.new("Script")
	local wfolder = Instance.new('Folder')
	wfolder.Parent = game.Workspace
	wfolder.Name = 'DisableCoreGUIFunctions'
	newdisableshiftlockscript.Source = "game.StarterPlayer.EnableMouseLockOption = false"
	newdisableshiftlockscript.Parent = wfolder
	newdisableshiftlockscript.Name = "DisableShiftLockSwitch"
end)

disableresetbutton.Click:Connect (function()
	if game.StarterGui.DisableCoreGUIFunctions:FindFirstChild("DisableResetCharacter") then
		return
	else
		local newdisableresetscript = Instance.new("LocalScript")
		local folder = Instance.new('Folder')
		folder.Parent = game.StarterGui
		folder.Name = 'DisableCoreGUIFunctions'
		newdisableresetscript.Source = "local StarterGui = game:GetService('StarterGui') \nStarterGui:SetCore('ResetButtonCallback',false)"
		newdisableresetscript.Parent = folder
		newdisableresetscript.Name = "DisableResetCharacter"
	end
end)

disableshiftlockbutton.Click:Connect (function()
	if workspace.DisableCoreGUIFunctions:FindFirstChild("DisableShiftLockSwitch") then
		return
	else
		local newdisableshiftlockscript = Instance.new("Script")
		local folder = Instance.new('Folder')
		folder.Parent = game.Workspace
		folder.Name = 'DisableCoreGUIFunctions'
		newdisableshiftlockscript.Source = "game.StarterPlayer.EnableMouseLockOption = false"
		newdisableshiftlockscript.Parent = folder
		newdisableshiftlockscript.Name = "DisableShiftLockSwitch"
	end
end)