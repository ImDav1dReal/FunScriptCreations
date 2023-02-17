-- GUI By Yrnu, GUI turned into lua by the help of gui2lua
-- Chatspammer v1 By Yrnu <3



local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Exit = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local DontSpam = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Spam = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(106, 106, 106)
Frame.Position = UDim2.new(0.578926265, 0, 0.477241844, 0)
Frame.Size = UDim2.new(0, 247, 0, 106)

UICorner.Parent = Frame

Exit.Name = "Exit"
Exit.Parent = Frame
Exit.BackgroundColor3 = Color3.fromRGB(255, 83, 83)
Exit.Position = UDim2.new(0.96347034, 0, -0.0849056616, 0)
Exit.Size = UDim2.new(0, 17, 0, 17)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000

UICorner_2.Parent = Exit

DontSpam.Name = "DontSpam"
DontSpam.Parent = Frame
DontSpam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DontSpam.Position = UDim2.new(0.551424682, 0, 0.60140872, 0)
DontSpam.Size = UDim2.new(0, 80, 0, 21)
DontSpam.Font = Enum.Font.SourceSans
DontSpam.TextColor3 = Color3.fromRGB(0, 0, 0)
DontSpam.Text = "Disable Spam"
DontSpam.TextScaled = true
DontSpam.TextSize = 14.000
DontSpam.TextWrapped = true

UICorner_3.Parent = DontSpam

Spam.Name = "Spam"
Spam.Parent = Frame
Spam.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spam.Position = UDim2.new(0.550613463, 0, 0.372154415, 0)
Spam.Size = UDim2.new(0, 81, 0, 20)
Spam.Font = Enum.Font.SourceSans
Spam.TextColor3 = Color3.fromRGB(0, 0, 0)
Spam.Text = "Enable Spam"
Spam.TextScaled = true
Spam.TextSize = 14.000
Spam.TextWrapped = true

UICorner_4.Parent = Spam

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(203, 203, 203)
TextBox.Position = UDim2.new(0.0645875484, 0, 0.491027534, 0)
TextBox.Size = UDim2.new(0, 92, 0, 19)
TextBox.Font = Enum.Font.GothamBold
TextBox.Text = "Enter text to spam"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_5.Parent = TextBox

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
TextLabel.Position = UDim2.new(0.0302800313, 0, 0.00554371625, 0)
TextLabel.Size = UDim2.new(0, 150, 0, 25)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "ChatSpammer v1 By Yrnu"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_6.Parent = TextLabel

Frame.Active = true
Frame.Draggable = true

local Spammer = false
local SpamBox = ""

Exit.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

Spam.MouseButton1Click:Connect(function()
	SpamBox = TextBox.Text
    Spammer = true
    print("Spammer is now on.")

end)

DontSpam.MouseButton1Click:Connect(function()
    Spammer = false
    print("Spammer is now off.")
end)

while true do
if Spammer then
    local args = {
    [1] = SpamBox,
    [2] = "All"
    }
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    wait(0.1)
    end
    wait(0.1)
end

