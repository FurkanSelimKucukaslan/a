--print("Made by Triackers Hacker Team")
--loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")
screenui.Parent = plr.PlayerGui
screenui.Name = "Triackers_MAIN"
screenui.ResetOnSpawn = false
screenui.DisplayOrder = 9999999999

local open = Instance.new("BoolValue")
open.Parent = screenui
open.Value = true
open.Name = "HackOn"

local button = Instance.new("ImageButton")
button.Parent = screenui
button.Image = "rbxassetid://15827426918"
button.Size = UDim2.new(0.05, 0,0.09, 0)
button.Position = UDim2.new(0.01, 0,0.454, 0)
button.Visible = true
button.Active = true
button.Draggable = true

local uistroke1378 = Instance.new("UIStroke")
uistroke1378.Parent = button

local uicorner6 = Instance.new("UICorner")
uicorner6.Parent = button
uicorner6.CornerRadius = UDim.new(1, 0)

local frame = Instance.new("Frame")
frame.Parent = screenui
frame.Size = UDim2.new(0.68, 0,0.633, 0)
frame.Position = UDim2.new(0.16, 0,0.182, 0)
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.Visible = false
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
textlabel.Text = "THT (Triackers Hacking Team) Hub"
textlabel.TextColor3 = Color3.fromRGB(0, 85, 0)
textlabel.Size = UDim2.new(1, 0,0.087, 0)
textlabel.BackgroundTransparency = 0
textlabel.BackgroundColor3 = Color3.fromRGB(0,0,0)
textlabel.Position = UDim2.new(0, 0,-0, 0)

local uicorner = Instance.new("UICorner")
uicorner.Parent = textlabel
uicorner.CornerRadius = UDim.new(0, 25)

local uistroke = Instance.new("UIStroke")
uistroke.Parent = textlabel
uistroke.Color = Color3.fromRGB(0, 85, 0)
uistroke.Thickness = 5
uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local x = Instance.new("TextButton")
x.Parent = frame
x.Size = UDim2.new(0.049, 0,0.085, 0)
x.TextScaled = true
x.Text = "x"
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.TextColor3 = Color3.fromRGB(255, 0, 0)
x.Position = UDim2.new(0.968, 0,-0.034, 0)

local uicorner7 = Instance.new("UICorner")
uicorner7.Parent = x
uicorner7.CornerRadius = UDim.new(0, 25)

local uistroke7 = Instance.new("UIStroke")
uistroke7.Parent = x
uistroke7.Color = Color3.fromRGB(255, 0, 0)
uistroke7.Thickness = 2
uistroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local buttonsFrame = Instance.new("Frame")
buttonsFrame.Parent = frame
buttonsFrame.BackgroundTransparency = 1
buttonsFrame.BorderColor3 = Color3.fromRGB(0,0,0)
buttonsFrame.Size = UDim2.new(0.962, 0,0.818, 0)
buttonsFrame.Position = UDim2.new(0.018, 0,0.13, 0)
buttonsFrame.BackgroundColor3 = Color3.new(0,0,0)
buttonsFrame.Active = true
buttonsFrame.Draggable = true

local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.Parent = buttonsFrame
UIGridLayout.CellSize = UDim2.new(0.132, 0,0.085, 0)
UIGridLayout.CellPadding = UDim2.new(0, 15,0, 15)
UIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local psu = Instance.new("TextButton")
psu.Parent = buttonsFrame
psu.Size = UDim2.new(0.194, 0,0.131, 0)
psu.TextScaled = true
psu.Text = "Player Stats UI"
psu.BackgroundColor3 = Color3.new(0, 0, 0)
psu.TextColor3 = Color3.fromRGB(0, 85, 0)
psu.Position = UDim2.new(0.717, 0,0.786, 0)

local uicorner6 = Instance.new("UICorner")
uicorner6.Parent = psu
uicorner6.CornerRadius = UDim.new(0, 25)

local uistroke6 = Instance.new("UIStroke")
uistroke6.Parent = psu
uistroke6.Color = Color3.fromRGB(0, 85, 0)
uistroke6.Thickness = 2
uistroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local fyu = Instance.new("TextButton")
fyu.Parent = buttonsFrame
fyu.Size = UDim2.new(0.194, 0,0.131, 0)
fyu.TextScaled = true
fyu.Text = "Flying UI"
fyu.BackgroundColor3 = Color3.new(0, 0, 0)
fyu.TextColor3 = Color3.fromRGB(0, 85, 0)
fyu.Position = UDim2.new(0.717, 0,0.786, 0)

local uicorner6 = Instance.new("UICorner")
uicorner6.Parent = fyu
uicorner6.CornerRadius = UDim.new(0, 25)

local uistroke6 = Instance.new("UIStroke")
uistroke6.Parent = fyu
uistroke6.Color = Color3.fromRGB(0, 85, 0)
uistroke6.Thickness = 2
uistroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local fu = Instance.new("TextButton")
fu.Parent = buttonsFrame
fu.Size = UDim2.new(0.194, 0,0.131, 0)
fu.TextScaled = true
fu.Text = "Fling UI"
fu.BackgroundColor3 = Color3.new(0, 0, 0)
fu.TextColor3 = Color3.fromRGB(0, 85, 0)
fu.Position = UDim2.new(0.717, 0,0.786, 0)

local uicorner6 = Instance.new("UICorner")
uicorner6.Parent = fu
uicorner6.CornerRadius = UDim.new(0, 25)

local uistroke6 = Instance.new("UIStroke")
uistroke6.Parent = fu
uistroke6.Color = Color3.fromRGB(0, 85, 0)
uistroke6.Thickness = 2
uistroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local plrd = Instance.new("TextButton")
plrd.Parent = buttonsFrame
plrd.Size = UDim2.new(0.194, 0,0.131, 0)
plrd.TextScaled = true
plrd.Text = "Player Data/Stats"
plrd.BackgroundColor3 = Color3.new(0, 0, 0)
plrd.TextColor3 = Color3.fromRGB(0, 85, 0)
plrd.Position = UDim2.new(0.717, 0,0.786, 0)

local uicorner6 = Instance.new("UICorner")
uicorner6.Parent = plrd
uicorner6.CornerRadius = UDim.new(0, 25)

local uistroke6 = Instance.new("UIStroke")
uistroke6.Parent = plrd
uistroke6.Color = Color3.fromRGB(0, 85, 0)
uistroke6.Thickness = 2
uistroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

psu.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/FurkanSelimKucukaslan/a/main/Teleport.lua'))()
end)

fyu.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/FurkanSelimKucukaslan/a/main/Flying.lua'))()
end)

fu.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/FurkanSelimKucukaslan/a/main/Fling.lua'))()
end)

plrd.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/FurkanSelimKucukaslan/a/main/PlrData.lua'))()
end)

x.MouseButton1Click:Connect(function()
	open.Value = true
	button.Visible = true
	frame.Visible = false
end)

button.MouseButton1Click:Connect(function()
	open.Value = false
	button.Visible = false
	frame.Visible = true
end)
