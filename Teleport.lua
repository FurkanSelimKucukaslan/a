print("Made by NexuCore Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local plr = game.Players.LocalPlayer
local screenui = Instance.new("ScreenGui")
local UIS = game:GetService('UserInputService')
local Render
local a = false
local DiedConnection
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil
local UI=script.Parent
local Camera=workspace.CurrentCamera
local Debounce=false
local SpectateSettings={
	["SmoothTransitions"]={
		["Tween"]=nil;
		--[[
		The drawback of turning this true, is that you cannot rotate your camera
		while spectating. Your camera is fixed at a specific position with respect to 
		the player.
		--]]
		["Status"]=false;
		--[[
		If the above setting is set to false, the camera will immediately get fixed
		at the next player to be spectated. In the other case, it will smoothly move towards the
		next player to be spectated.
		--]]
		["Style"]=Enum.EasingStyle.Quad;
		["Direction"]=Enum.EasingDirection.Out;
		["Time"]=0.5;
		--[[
		Increase the time for slower movement of the camera,
		and decrease it for faster movement of the camera to the next player to be spectated.
		--]]
		["DistanceFromPlayer"]=10; -- 10 Studs Distance From Player
		["HeightDistance"]=7; -- 7 Studs Above Their Head
		["InclinationAngle"]=30;
		--[[
		Mess around with the above two settings as per your
		preference. You will get what you prefer only with trial and error.
		=-]]
	};
	--[[
	Dont mess with the settings below.
	--]]
	["SpectateOn"]=false;
}

screenui.Parent = plr.PlayerGui
screenui.Name = math.random(100000, 999999)
screenui.ResetOnSpawn = false

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
textlabel.Text = "🗿 Player Stats 🗿"
textlabel.TextColor3 = Color3.fromRGB(0, 85, 0)
textlabel.Size = UDim2.new(0.938, 0,0.145, 0)
textlabel.BackgroundTransparency = 1
textlabel.Position = UDim2.new(0.029, 0,0.041, 0)

local bobButton = Instance.new("TextButton")
bobButton.Parent = frame
bobButton.Size = UDim2.new(0.194, 0,0.131, 0)
bobButton.TextScaled = true
bobButton.Text = "Teleport"
bobButton.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton.Position = UDim2.new(0.088, 0,0.786, 0)

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
bobButton2.Position = UDim2.new(0.056, 0,0.244, 0)

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
bobButton3.Size = UDim2.new(0.365, 0,0.131, 0)
bobButton3.TextScaled = true
bobButton3.Text = "Loop Teleport: FALSE"
bobButton3.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton3.TextColor3 = Color3.fromRGB(85, 0, 0)
bobButton3.Position = UDim2.new(0.085, 0,0.584, 0)

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

local bobButton4 = Instance.new("TextButton")
bobButton4.Parent = frame
bobButton4.Size = UDim2.new(0.194, 0,0.131, 0)
bobButton4.TextScaled = true
bobButton4.Text = "Move"
bobButton4.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton4.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton4.Position = UDim2.new(0.394, 0,0.786, 0)

local uicorner5 = Instance.new("UICorner")
uicorner5.Parent = bobButton4
uicorner5.CornerRadius = UDim.new(0, 25)

local uistroke5 = Instance.new("UIStroke")
uistroke5.Parent = bobButton4
uistroke5.Color = Color3.fromRGB(0, 85, 0)
uistroke5.Thickness = 2
uistroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local bobButton5 = Instance.new("TextButton")
bobButton5.Parent = frame
bobButton5.Size = UDim2.new(0.194, 0,0.131, 0)
bobButton5.TextScaled = true
bobButton5.Text = "Spectate"
bobButton5.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton5.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton5.Position = UDim2.new(0.717, 0,0.786, 0)

local uicorner6 = Instance.new("UICorner")
uicorner6.Parent = bobButton5
uicorner6.CornerRadius = UDim.new(0, 25)

local uistroke6 = Instance.new("UIStroke")
uistroke6.Parent = bobButton5
uistroke6.Color = Color3.fromRGB(0, 85, 0)
uistroke6.Thickness = 2
uistroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local hhh = Instance.new("TextLabel")
hhh.Parent = frame
hhh.Size = UDim2.new(0.869, 0,0.248, 0)
hhh.TextScaled = true
hhh.TextColor3 = Color3.fromRGB(85, 0, 0)
hhh.Text = "Stop Spectating if you wanna type here something"
hhh.Position = UDim2.new(0.06, 0,0.373, 0)
hhh.BackgroundTransparency = 1
hhh.TextStrokeTransparency = 1
hhh.Visible = false

local function getRandomHumanoidModel()
	local models = workspace:GetChildren()
	local humanoidModels = {}

	for i, model in models do
		if model:IsA("Model") and model:FindFirstChild("Humanoid") then
			table.insert(humanoidModels, model)
		end
	end

	if #humanoidModels > 0 then
		local randomIndex = math.random(1, #humanoidModels)
		local selectedModel = humanoidModels[randomIndex]
		bobButton2.Text = selectedModel.Name
	end
end

local bobButton6 = Instance.new("TextButton")
bobButton6.Parent = frame
bobButton6.Size = UDim2.new(0.365, 0,0.131, 0)
bobButton6.TextScaled = true
bobButton6.Text = "Select Random Humanoid"
bobButton6.BackgroundColor3 = Color3.new(0, 0, 0)
bobButton6.TextColor3 = Color3.fromRGB(0, 85, 0)
bobButton6.Position = UDim2.new(0.523, 0,0.584, 0)

local uicorner7 = Instance.new("UICorner")
uicorner7.Parent = bobButton6
uicorner7.CornerRadius = UDim.new(0, 25)

local uistroke7 = Instance.new("UIStroke")
uistroke7.Parent = bobButton6
uistroke7.Color = Color3.fromRGB(0, 85, 0)
uistroke7.Thickness = 2
uistroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

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

bobButton4.MouseButton1Click:Connect(function()
	if workspace:FindFirstChild(bobButton2.Text) then
		a = not a
		if a == true then
			bobButton4.Text = "Stop Moving"
		else
			bobButton4.Text = "Move"
		end
		if workspace[bobButton2.Text]:FindFirstChild("HumanoidRootPart") then
			repeat
				plr.Character.Humanoid:MoveTo(workspace[bobButton2.Text].HumanoidRootPart.Position)
				wait(0.05)
			until a == false
		else
			repeat
				plr.Character.Humanoid:MoveTo(workspace[bobButton2.Text].Position)
				wait(0.05)
			until a == false
		end
	end
end)

bobButton5.MouseButton1Click:Connect(function()
	if workspace:FindFirstChild(bobButton2.Text) then
		SpectateSettings.SmoothTransitions.Status = not SpectateSettings.SmoothTransitions.Status
		if SpectateSettings.SmoothTransitions.Status==true then
			hhh.Visible = true
			bobButton.Visible = false
			bobButton3.Visible = false
			bobButton4.Visible = false
			bobButton2.Visible = false
			bobButton5.Text = "Stop Spectating"
			Camera.CameraType=Enum.CameraType.Scriptable
			local TargetCFrame
			repeat
				if workspace[bobButton2.Text]:FindFirstChild("Humanoid") then
					TargetCFrame=workspace[bobButton2.Text].HumanoidRootPart.CFrame
				else
					TargetCFrame=workspace[bobButton2.Text].CFrame
				end
				TargetCFrame*=CFrame.new(0,0,SpectateSettings.SmoothTransitions.DistanceFromPlayer)
				TargetCFrame*=CFrame.new(0,SpectateSettings.SmoothTransitions.HeightDistance,0)
				TargetCFrame*=CFrame.Angles(math.rad(-SpectateSettings.SmoothTransitions.InclinationAngle),0,0)
				SpectateSettings.SmoothTransitions.Tween=game.TweenService:Create(Camera,TweenInfo.new(SpectateSettings.SmoothTransitions.Time,SpectateSettings.SmoothTransitions.Style,SpectateSettings.SmoothTransitions.Direction,0,false,0),{CFrame=TargetCFrame})
				SpectateSettings.SmoothTransitions.Tween:Play()
				wait(0.05)
			until SpectateSettings.SmoothTransitions.Status==false
		else
			Camera.CameraType=Enum.CameraType.Custom
			Camera.CameraSubject = plr.Character.Humanoid
			bobButton5.Text = "Spectate"
			hhh.Visible = false
			bobButton.Visible = true
			bobButton3.Visible = true
			bobButton4.Visible = true
			bobButton2.Visible = true
		end
	end
end)

Render=game:GetService("RunService").RenderStepped:Connect(function()
	if workspace:FindFirstChild(bobButton2.Text) then
		if not workspace[bobButton2.Text]:FindFirstChild(bobButton2.Text) then
			local highlight = Instance.new("Highlight")
			highlight.Parent = workspace[bobButton2.Text]
			highlight.Name = highlight.Parent.Name
			repeat
				wait(0.05)
			until not (highlight.Name == bobButton2.Text)
			a = false
			bobButton4.Text = "Move"
			highlight:Destroy()
		end
	end
end)

bobButton6.MouseButton1Click:Connect(function()
	getRandomHumanoidModel()
end)
