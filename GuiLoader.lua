Testing = false
if table.find(getgenv().alts,game.Players.LocalPlayer.UserId) then
	print("Loading GUI!")
elseif game.Players.LocalPlayer.Name == getgenv().controller then
    Testing = true
else
    print("Huh?")
end

if Testing == false then
	main = Instance.new("ScreenGui")
	Frame = Instance.new("Frame")
	TextLabel = Instance.new("TextLabel")
	TextLabel_2 = Instance.new("TextLabel")
	TextLabel_3 = Instance.new("TextLabel")
	Gradient = Instance.new("UIGradient")

	main.Name = "RenderScreen"
	main.Parent = game.CoreGui
	main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main.IgnoreGuiInset = true

	Frame.Parent = main
	Frame.Active = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 1, 0)

	TextLabel.Parent = Frame
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, 0.419999987, 0)
	TextLabel.Size = UDim2.new(0, 279, 0, 34)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = getgenv().welcomescreen
	TextLabel.TextScaled = false
	TextLabel.TextSize = 50.000
	TextLabel.TextWrapped = false
	_G.TextLabel = TextLabel
	repeat wait(.1) until game:IsLoaded() 
	end
	local vu = game:GetService("VirtualUser")
	warn("Pass")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	game:GetService("RunService"):Set3dRenderingEnabled(false)
	setfpscap(getgenv().fps)
	warn("pass")
	local r = {
	Color3.fromRGB(254, 0, 0);
	Color3.fromRGB(255, 127, 0);
	Color3.fromRGB(255, 221, 1);
	Color3.fromRGB(0, 200, 0);
	Color3.fromRGB(0, 160, 199);
	Color3.fromRGB(0, 55, 230);
	Color3.fromRGB(129, 16, 210)}
	local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
	TextLabel.TextColor3 = r[1]
	i = 1
	while true do
		local tween = game:GetService("TweenService"):Create(TextLabel, info, {TextColor3 = r[i]})
		tween:Play()
		repeat wait() until tween.Completed
		wait()
		if i == #r then i = 1 else i = i + 1 end
	end
