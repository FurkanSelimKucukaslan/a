print("Made by NexuCore Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")
screenui.Parent = plr.PlayerGui
screenui.Name = "HackBattles"

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

local scripd = Instance.new("Script")
scripd.Parent = game:GetService("ServerScriptService")
scripd.Source = "print('Hello!')"
