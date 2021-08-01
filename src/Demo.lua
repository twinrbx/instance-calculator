local interface = require(script:WaitForChild("Interface"))()
interface.ResetOnSpawn = false
interface.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local math = require(game:GetService("ReplicatedStorage"):WaitForChild("InstanceCalculator"))
local main = interface:WaitForChild("Holder")

local function bind(operation, computeFunc, symbol)
	local input1 = main:WaitForChild(operation .. "1")
	local input2 = main:WaitForChild(operation .. "2")
	local outputBtn = main:WaitForChild("Compute" .. operation)
	
	local debounce = false
	local title = outputBtn.Text
	input1:GetPropertyChangedSignal("Text"):Connect(function()
		input1.Text = input1.Text:gsub("%.","")
	end)
	input2:GetPropertyChangedSignal("Text"):Connect(function()
		input2.Text = input2.Text:gsub("%.","")
	end)
	outputBtn.MouseButton1Click:Connect(function()
		if debounce then return end
		local num1 = tonumber(input1.Text)
		local num2 = tonumber(input2.Text)
		
		if not num1 then
			debounce = true
			outputBtn.Text = "Input 1 is not a valid number"
			wait(.75)
			outputBtn.Text = title
			debounce = false
			return
		end
		if not num2 then
			debounce = true
			outputBtn.Text = "Input 2 is not a valid number"
			wait(.75)
			outputBtn.Text = title
			debounce = false
			return
		end
		debounce = true
		outputBtn.Text = "Processing... if this is here for a long time there's probably a script timeout; check console"
		local result = computeFunc(num1, num2)
		outputBtn.Text = ("(%s) %s (%s) = (%s)"):format(input1.Text, symbol, input2.Text, tostring(result))
		wait(1.5)
		outputBtn.Text = title
		debounce = false
	end)
end

bind("Add", math.add, "+")
bind("Sub", math.subtract, "-")
bind("Mul", math.multiply, "*")
bind("Div", math.divide, "/")

local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)