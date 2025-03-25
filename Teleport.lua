print("Made by NexuCore Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")
local UIS = game:GetService('UserInputService')
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil


screenui.Parent = plr.PlayerGui
screenui.Name = math.random(100000, 999999)

local frame = Instance.new("Frame")
frame.Parent = screenui
frame.Size = UDim2.new(0.255, 0,0.336, 0)
frame.Position = UDim2.new(0.73, 0,0.332, 0)
frame.BackgroundColor3 = Color3.new(0,0,0)

local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

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
bobButton.Position = UDim2.new(0.064, 0,0.765, 0)

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

local uistroke3 = Instance.new("UIStroke")
uistroke3.Parent = bobButton2
uistroke3.Color = Color3.fromRGB(0, 85, 0)
uistroke3.Thickness = 2
uistroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local bobButton3 = Instance.new("TextButton")
bobButton3.Parent = frame
bobButton3.Size = UDim2.new(0.363, 0,0.131, 0)
bobButton3.TextScaled = true
bobButton3.Text = "Loop Teleport: FALSE"
bobButton3.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton3.TextColor3 = Color3.fromRGB(85, 0, 0)
bobButton3.Position = UDim2.new(0.572, 0,0.765, 0)

local uicorner4 = Instance.new("UICorner")
uicorner4.Parent = bobButton3
uicorner4.CornerRadius = UDim.new(0, 25)

local uistroke4 = Instance.new("UIStroke")
uistroke4.Parent = bobButton3
uistroke4.Color = Color3.fromRGB(85, 0, 0)
uistroke4.Thickness = 2
uistroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local loop = Instance.new("BoolValue")
loop.Parent = screenui
loop.Value = false
loop.Name = "LoopTeleport"

bobButton.MouseButton1Click:Connect(function()
	if workspace:FindFirstChild(bobButton2.Text) then
		if loop.Value == false then
			if workspace[bobButton2.Text]:FindFirstChild("HumanoidRootPart") then
				plr.Character.HumanoidRootPart:PivotTo(workspace[bobButton2.Text].HumanoidRootPart.CFrame)
			else
				plr.Character.HumanoidRootPart:PivotTo(workspace[bobButton2.Text].CFrame)
			end
		else
			repeat
				if workspace[bobButton2.Text]:FindFirstChild("HumanoidRootPart") then
					plr.Character.HumanoidRootPart:PivotTo(workspace[bobButton2.Text].HumanoidRootPart.CFrame)
				else
					plr.Character.HumanoidRootPart:PivotTo(workspace[bobButton2.Text].CFrame)
				end
				task.wait(0.025)
			until loop.Value == false
			if not (loop.Value == true) then
				return
			end
		end
	end
end)

bobButton3.MouseButton1Click:Connect(function()
	loop.Value = not loop.Value
	if loop.Value == true then
		uistroke4.Color = Color3.fromRGB(0, 85, 0)
		bobButton3.TextColor3 = Color3.fromRGB(0, 85, 0)
		bobButton3.Text = "Loop Teleport: TRUE"
	else
		uistroke4.Color = Color3.fromRGB(85, 0, 0)
		bobButton3.TextColor3 = Color3.fromRGB(85, 0, 0)
		bobButton3.Text = "Loop Teleport: FALSE"
	end
end)

frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)
