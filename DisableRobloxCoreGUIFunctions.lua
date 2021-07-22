local toolbar = plugin:CreateToolbar("DisableCoreGUIFunctions v1.05")
local SP = game:GetService("StarterPlayer")
local SPS = SP.StarterPlayerScripts
local CHS = game:GetService("ChangeHistoryService")
local openUIPanel = toolbar:CreateButton("Disable Function Menu", "This button opens a control panel.", "rbxassetid://4458901886")

local widgetInfo = DockWidgetPluginGuiInfo.new(
	Enum.InitialDockState.Float,
	true,
	true,
	400,
	400,
	50,
	50
)
local ui = plugin:CreateDockWidgetPluginGui("Widget", widgetInfo)
ui.Title = "DisableCoreGUIFunctions"
local fr = Instance.new("Frame")
fr.BackgroundColor3 = Color3.fromRGB(55,55,55)
fr.BorderSizePixel = 0
fr.Size = UDim2.new(1, 0, 1, 0)
fr.Parent = ui
local name = Instance.new("TextLabel")
name.BorderSizePixel = 0
name.BackgroundColor3 = Color3.fromRGB(55,55,55)
name.Name = "Name" -- funniest line of code
name.Position = UDim2.new(0, 0, 0, 0)
name.Size = UDim2.new(1, 0, 0.1, 0)
name.Font = Enum.Font.Nunito
name.Text = "DisableCoreGUIFunctions"
name.TextColor3 = Color3.new(1, 1, 1)
name.TextScaled = true
name.Parent = ui
local chat = Instance.new("TextButton")
chat.BorderSizePixel = 0
chat.BackgroundColor3 = Color3.fromRGB(55,55,55)
chat.Name = "Chat"
chat.Position = UDim2.new(0, 0, 0.15, 0)
chat.Size = UDim2.new(0.45, 0, 0.125, 0)
chat.Font = Enum.Font.Nunito
chat.Text = "Disable Chat"
chat.TextColor3 = Color3.new(1, 1, 1)
chat.TextScaled = true
chat.Parent = ui
local backpack = Instance.new("TextButton")
backpack.BorderSizePixel = 0
backpack.BackgroundColor3 = Color3.fromRGB(55,55,55)
backpack.Name = "Backpack"
backpack.Position = UDim2.new(0, 0, 0.275, 0)
backpack.Size = UDim2.new(0.45, 0, 0.125, 0)
backpack.Font = Enum.Font.Nunito
backpack.Text = "Disable Backpack"
backpack.TextColor3 = Color3.new(1, 1, 1)
backpack.TextScaled = true
backpack.Parent = ui
local emotes = Instance.new("TextButton")
emotes.BorderSizePixel = 0
emotes.BackgroundColor3 = Color3.fromRGB(55,55,55)
emotes.Name = "EmoteList"
emotes.Position = UDim2.new(0, 0, 0.4, 0)
emotes.Size = UDim2.new(0.45, 0, 0.125, 0)
emotes.Font = Enum.Font.Nunito
emotes.Text = "Disable Emotes"
emotes.TextColor3 = Color3.new(1, 1, 1)
emotes.TextScaled = true
emotes.Parent = ui
local health = Instance.new("TextButton")
health.BorderSizePixel = 0
health.BackgroundColor3 = Color3.fromRGB(55,55,55)
health.Name = "Health"
health.Position = UDim2.new(0.55, 0, 0.15, 0)
health.Size = UDim2.new(0.45, 0, 0.125, 0)
health.Font = Enum.Font.Nunito
health.Text = "Disable Health Bar"
health.TextColor3 = Color3.new(1, 1, 1)
health.TextScaled = true
health.Parent = ui
local plrList = Instance.new("TextButton")
plrList.BorderSizePixel = 0
plrList.BackgroundColor3 = Color3.fromRGB(55,55,55)
plrList.Name = "PlayerList"
plrList.Position = UDim2.new(0.55, 0, 0.275, 0)
plrList.Size = UDim2.new(0.45, 0, 0.125, 0)
plrList.Font = Enum.Font.Nunito
plrList.Text = "Disable Leaderboard"
plrList.TextColor3 = Color3.new(1, 1, 1)
plrList.TextScaled = true
plrList.Parent = ui
local reset = Instance.new("TextButton")
reset.BorderSizePixel = 0
reset.BackgroundColor3 = Color3.fromRGB(55,55,55)
reset.Name = "Reset"
reset.Position = UDim2.new(0.55, 0, 0.4, 0)
reset.Size = UDim2.new(0.45, 0, 0.125, 0)
reset.Font = Enum.Font.Nunito
reset.Text = "Disable Reset"
reset.TextColor3 = Color3.new(1, 1, 1)
reset.TextScaled = true
reset.Parent = ui
local shift = Instance.new("TextButton")
shift.BorderSizePixel = 0
shift.BackgroundColor3 = Color3.fromRGB(55,55,55)
shift.Name = "ShiftLock"
shift.Position = UDim2.new(0, 0, 0.54, 0)
shift.Size = UDim2.new(1, 0, 0.125, 0)
shift.Font = Enum.Font.Nunito
shift.Text = "Disable Shift Lock"
shift.TextColor3 = Color3.new(1, 1, 1)
shift.TextScaled = true
shift.Parent = ui
local all = Instance.new("TextButton")
all.BorderSizePixel = 0
all.BackgroundColor3 = Color3.fromRGB(14, 147, 0)
all.Name = "All"
all.Position = UDim2.new(0, 0, 0.712, 0)
all.Size = UDim2.new(1, 0, 0.287, 0)
all.Font = Enum.Font.Nunito
all.Text = "Disable All CoreGUI Functions"
all.TextColor3 = Color3.new(1, 1, 1)
all.TextScaled = true
all.Parent = ui
ui.Enabled = false

local function click()
    ui.Enabled = not ui.Enabled
local uiElements = {
	['Chat'] = chat;
	['Health'] = health;
	['Backpack'] = backpack;
	['PlayerList'] = plrList;
	['EmotesMenu'] = emotes;
	['All'] = all
}

local folder, xfolder, yfolder

if not SPS:FindFirstChild("DisableCoreGUIFunctions") or not game.StarterGui:FindFirstChild("DisableCoreGUIFunctions") or not workspace:FindFirstChild("DisableCoreGUIFunctions") then
	folder = SPS:FindFirstChild("DisableCoreGUIFunctions") or Instance.new("Folder")
	folder.Name = "DisableCoreGUIFunctions"
	folder.Parent = SPS
	xfolder = game.StarterGui:FindFirstChild("DisableCoreGUIFunctions") or Instance.new("Folder")
	xfolder.Name = "DisableCoreGUIFunctions"
	xfolder.Parent = game.StarterGui
	yfolder = workspace:FindFirstChild("DisableCoreGUIFunctions") or Instance.new("Folder")
	yfolder.Name = "DisableCoreGUIFunctions"
	yfolder.Parent = workspace
else
    folder = SPS.DisableCoreGUIFunctions
    xfolder = game.StarterGui:FindFirstChild("DisableCoreGUIFunctions")
    yfolder = workspace:FindFirstChild("DisableCoreGUIFunctions")
end

for k, v in pairs(uiElements) do
	v.Activated:Connect(function()
		if folder.Parent == nil then
			folder = Instance.new("Folder")
			folder.Name = "DisableCoreGUIFunctions"
			folder.Parent = SPS
		end
		if xfolder.Parent == nil then
			xfolder = Instance.new("Folder")
			xfolder.Name = "DisableCoreGUIFunctions"
			xfolder.Parent = game.StarterGui
		end
		if yfolder.Parent == nil then
			yfolder = Instance.new("Folder")
			yfolder.Name = "DisableCoreGUIFunctions"
			yfolder.Parent = workspace
		end
		if folder:FindFirstChild("Disable" .. k) then
			return
		else
			CHS:SetWaypoint("Adding disabling scripts")
			local newdisablescript = Instance.new("LocalScript")
			newdisablescript.Source = "-- Try my new plugin, Roblox Fast Donation Button Creation at https://www.roblox.com/catalog/6016161703/Roblox-Fast-Donation-Button-Creation \n\nlocal StarterGui = game:GetService('StarterGui') \ngame.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType." .. k .. ", false)"
			newdisablescript.Parent = folder
			newdisablescript.Name = "Disable" .. k
			if k == "All" then
				local newdisableresetscript = Instance.new("LocalScript")
				newdisableresetscript.Source = "local StarterGui = game:GetService('StarterGui') StarterGui:SetCore('ResetButtonCallback',false)"
				newdisableresetscript.Parent = xfolder
				newdisableresetscript.Name = "DisableResetCharacter"
				local newdisableshiftlockscript = Instance.new("Script")
				newdisableshiftlockscript.Source = "game.StarterPlayer.EnableMouseLockOption = false"
				newdisableshiftlockscript.Parent = yfolder
				newdisableshiftlockscript.Name = "DisableShiftLockSwitch"
			end
			CHS:SetWaypoint("Added disabling scripts")
		end
	end)
end

reset.Activated:Connect(function()
	if folder.Parent == nil then
		folder = Instance.new("Folder")
		folder.Name = "DisableCoreGUIFunctions"
		folder.Parent = SPS
	end
	if xfolder.Parent == nil then
		xfolder = Instance.new("Folder")
		xfolder.Name = "DisableCoreGUIFunctions"
		xfolder.Parent = game.StarterGui
	end
	if yfolder.Parent == nil then
		yfolder = Instance.new("Folder")
		yfolder.Name = "DisableCoreGUIFunctions"
		yfolder.Parent = workspace
	end
	if xfolder:FindFirstChild("DisableResetCharacter") then
		return
	else
		CHS:SetWaypoint("Adding disabling scripts")
		local newdisableresetscript = Instance.new("LocalScript")
		newdisableresetscript.Source = "local StarterGui = game:GetService('StarterGui') StarterGui:SetCore('ResetButtonCallback',false)"
		newdisableresetscript.Parent = xfolder
		newdisableresetscript.Name = "DisableResetCharacter"
		CHS:SetWaypoint("Added disabling scripts")
	end
end)

shift.Activated:Connect(function()
	if folder.Parent == nil then
		folder = Instance.new("Folder")
		folder.Name = "DisableCoreGUIFunctions"
		folder.Parent = SPS
	end
	if xfolder.Parent == nil then
		xfolder = Instance.new("Folder")
		xfolder.Name = "DisableCoreGUIFunctions"
		xfolder.Parent = game.StarterGui
	end
	if yfolder.Parent == nil then
		yfolder = Instance.new("Folder")
		yfolder.Name = "DisableCoreGUIFunctions"
		yfolder.Parent = workspace
	end
	if folder:FindFirstChild("DisableShiftLockSwitch") then
		return
	else
		CHS:SetWaypoint("Adding disabling scripts")
		local newdisableshiftlockscript = Instance.new("Script")
		newdisableshiftlockscript.Source = "game.StarterPlayer.EnableMouseLockOption = false"
		newdisableshiftlockscript.Parent = yfolder
		newdisableshiftlockscript.Name = "DisableShiftLockSwitch"
		CHS:SetWaypoint("Added disabling scripts")
	end
end)
end

openUIPanel.Click:Connect(click)
