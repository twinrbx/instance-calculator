local Number = require(script.Number)
local Calculator = {}

Calculator.add = function(x, y)
	local Value = Number.new()
	Value:AddInstances(x)
	Value:AddInstances(y)
	return Value()
end
Calculator.subtract = function(x, y)
	local Value = Number.new()
	Value:AddInstances(x)
	Value:RemoveInstances(y)
	return Value()
end
Calculator.multiply = function(x, y)
	local Value = Number.new()
	if Value:IsNegative(y) then
		if Value:IsNegative(x) then
			x = Value:NegativeToPositive(x)
			y = Value:NegativeToPositive(y)
			for i = 1, y do
				Value:AddInstances(x)
			end
			return Value()
		else
			y = Value:NegativeToPositive(y)
			for i = 1, y do
				Value:AddInstances(x)
			end
			Value:FlipSign()
			return Value()
		end
	else
		for i = 1, y do
			Value:AddInstances(x)
		end
		return Value()
	end
end
Calculator.divide = function(x, y)
	if y == 0 then
		return ("Undefined")
	end
	if x == 0 then
		return (0)
	end
	local Value = Number.new()
	local Count = Number.new()
	Value:AddInstances(x)
	local Sign = (Value:IsNegative(x) == Value:IsNegative(y) and "Positive" or "Negative")
	if Value:IsNegative(x) then
		x = Value:NegativeToPositive(x)
	end
	if Value:IsNegative(y) then
		y = Value:NegativeToPositive(y)
	end
	Value.Sign = Sign
	Count.Sign = Sign
	if x < y then
		return ("Fractional answers are not currently supported")
	end
	while Value(true) >= y do
		Count:AddInstances(1)
		Value:RemoveInstances(y)
	end
	local Remaining = Value()
	local Fit = Count()
	if Remaining ~= 0 then
		return (("%s and %s"):format(Fit, ("%s/%s"):format(Remaining, y)))
	else
		return Fit
	end
end

return Calculator