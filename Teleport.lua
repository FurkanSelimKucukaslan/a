print("Made by NexuCore Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")
screenui.Parent = plr.PlayerGui
screenui.Name = math.random(100000, 999999)

local frame = Instance.new("Frame")
frame.Parent = screenui
frame.Size = UDim2.new(0.255, 0,0.336, 0)
frame.Position = UDim2.new(0.73, 0,0.332, 0)
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
textlabel.Text = "🗿 Teleport Player 🗿"
textlabel.TextColor3 = Color3.fromRGB(0, 85, 0)
textlabel.Size = UDim2.new(0.938, 0,0.145, 0)
textlabel.BackgroundTransparency = 1
textlabel.Position = UDim2.new(0.029, 0,0.041, 0)

local bobButton = Instance.new("TextButton")
bobButton.Parent = frame
bobButton.Size = UDim2.new(0.363, 0,0.131, 0)
bobButton.TextScaled = true
bobButton.Text = "Teleport"
bobButton.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton.Position = UDim2.new(0.318, 0,0.77, 0)

local uicorner2 = Instance.new("UICorner")
uicorner2.Parent = bobButton
uicorner2.CornerRadius = UDim.new(0, 25)

local uistroke2 = Instance.new("UIStroke")
uistroke2.Parent = bobButton
uistroke2.Color = Color3.fromRGB(0, 85, 0)
uistroke2.Thickness = 2
uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local bobButton2 = Instance.new("TextBox")
bobButton2.Parent = frame
bobButton2.Size = UDim2.new(0.869, 0,0.248, 0)
bobButton2.TextScaled = true
bobButton2.Text = ""
bobButton2.PlaceholderText = "Players Username that you wanna teleport or a Part's Name"
bobButton2.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton2.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton2.Position = UDim2.new(0.06, 0,0.373, 0)

local uicorner3 = Instance.new("UICorner")
uicorner3.Parent = bobButton2
uicorner3.CornerRadius = UDim.new(0, 25)

local uistroke2 = Instance.new("UIStroke")
uistroke2.Parent = bobButton2
uistroke2.Color = Color3.fromRGB(0, 85, 0)
uistroke2.Thickness = 2
uistroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

bobButton.MouseButton1Click:Connect(function()
	if workspace:FindFirstChild(bobButton2.Text) then
		if workspace[bobButton2.Text]:FindFirstChild("HumanoidRootPart") then
			plr.Character.HumanoidRootPart:PivotTo(workspace[bobButton2.Text].HumanoidRootPart.CFrame)
		else
			plr.Character.HumanoidRootPart:PivotTo(workspace[bobButton2.Text].CFrame)
		end
	end
end)
