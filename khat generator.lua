-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.Position = UDim2.new(0.138495922, 0, 0.13754648, 0)
Main.Size = UDim2.new(0, 280, 0, 390)

UICorner.Parent = Main

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 280, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "a randomly generated cat"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

ImageLabel.Parent = Main
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0, 0, 0.128205135, 0)
ImageLabel.Size = UDim2.new(0, 280, 0, 340)
ImageLabel.Image = "rbxassetid://0"

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(81, 255, 0)
TextButton.Position = UDim2.new(0, 0, 1.01538467, 0)
TextButton.Size = UDim2.new(0, 280, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "generate cat"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner_2.Parent = TextButton

-- Scripts:

local function GQTAUZW_fake_script() -- Main.Draggable 
	local script = Instance.new('LocalScript', Main)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(GQTAUZW_fake_script)()
local function LWTCYK_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		writefile("khat.png", game:HttpGet(game:GetService("HttpService"):JSONDecode(game:HttpGet("http://meme-api.herokuapp.com/gimme/cats"))["url"]))
		script.Parent.Parent.ImageLabel.Image = getcustomasset("khat.png")
	end)
	
end
coroutine.wrap(LWTCYK_fake_script)()