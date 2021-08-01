local INSTANCE_TYPE = "Motor6D"

local Number = {}
Number.__index = Number
Number.__call = function(self, Remain)
	local Result = self:Read()
	if not Remain then
		self.Folder:Destroy()
		self = nil
	end
	return Result
end

function Number.new(Parent)
	return setmetatable({
		Folder = Instance.new("Folder", Parent),
		Sign = "Positive",
		LastCount = nil,
	}, Number)
end

function Number:Count()
	return #self.Folder:GetChildren()
end

function Number:FlipSign()
	if self.Sign == "Positive" then
		self.Sign = "Negative"
	else
		self.Sign = "Positive"
	end
end

function Number:Debug()
	print(self:Count() .. ": " .. self.Sign)
end

function Number:Zero()
	self.Folder:ClearAllChildren()
end

function Number:AddInstance()
	Instance.new(INSTANCE_TYPE, self.Folder)
end

function Number:PositiveToNegative(PosInt)
	PosInt = tostring(PosInt)
	PosInt = "-"..PosInt
	return tonumber(PosInt)
end
function Number:NegativeToPositive(NegInt)
	return tonumber(tostring(NegInt):sub(2))
end

function Number:IsNegative(num)
	return tostring(num):sub(0,1) == "-"
end

function Number:RemoveInstance()
	local Children = self.Folder:GetChildren()
	if #Children > 0 then
		Children[1]:Destroy()
	else
		self:FlipSign()
		self:AddInstance()
	end
end

function Number:AddInstances(count)
	if self:IsNegative(count) then
		for _ = 1, self:NegativeToPositive(count) do
			if self.Sign == "Negative" then
				self:AddInstance()
			else
				self:RemoveInstance()
			end
		end
	else
		for _ = 1, count do
			if self.Sign == "Negative" then
				self:RemoveInstance()
			else
				self:AddInstance()
			end
		end
	end
end

function Number:RemoveInstances(count)
	if self:IsNegative(count) then
		count = self:NegativeToPositive(count)
		for _ = 1, count do
			if self.Sign == "Negative" then
				self:RemoveInstance()
			else
				self:AddInstance()
			end
		end
	else
		for _ = 1, count do
			if self.Sign == "Negative" then
				self:AddInstance()
			else
				self:RemoveInstance()
			end
		end
	end
end

function Number:Read()
	local Count = self:Count()
	if Count == 0 then
		return 0
	end
	if self.Sign == "Negative" then
		return self:PositiveToNegative(Count)
	else
		return Count
	end
end

return Number