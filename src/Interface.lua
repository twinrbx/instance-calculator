local partsWithId = {}
local awaitRef = {}

local root = {
	ID = 0;
	Type = "ScreenGui";
	Properties = {
		IgnoreGuiInset = true;
		Name = "Calculator";
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	};
	Children = {
		{
			ID = 1;
			Type = "Frame";
			Properties = {
				Size = UDim2.new(1,0,1,0);
				Name = "Holder";
				BackgroundColor3 = Color3.new(0,0,0);
			};
			Children = {
				{
					ID = 2;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Add1";
						TextSize = 20;
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 1";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(2/51,2/51,2/51);
					};
					Children = {};
				};
				{
					ID = 3;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextSize = 20;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Add2";
						PlaceholderColor3 = Color3.new(178/255,178/255,178/255);
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 2";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(5/51,5/51,5/51);
					};
					Children = {};
				};
				{
					ID = 4;
					Type = "TextButton";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						Selectable = false;
						Text = "Add";
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						BackgroundTransparency = 0.80000001192093;
						Size = UDim2.new(1,0,0.050000000745058,0);
						Name = "ComputeAdd";
						TextSize = 20;
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(1,1,1);
					};
					Children = {};
				};
				{
					ID = 5;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Sub1";
						TextSize = 20;
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 1";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(2/51,2/51,2/51);
					};
					Children = {};
				};
				{
					ID = 6;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextSize = 20;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Sub2";
						PlaceholderColor3 = Color3.new(178/255,178/255,178/255);
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 2";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(5/51,5/51,5/51);
					};
					Children = {};
				};
				{
					ID = 7;
					Type = "TextButton";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						Selectable = false;
						Text = "Subtract";
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						BackgroundTransparency = 0.80000001192093;
						Size = UDim2.new(1,0,0.050000000745058,0);
						Name = "ComputeSub";
						TextSize = 20;
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(1,1,1);
					};
					Children = {};
				};
				{
					ID = 8;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Mul1";
						TextSize = 20;
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 1";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(2/51,2/51,2/51);
					};
					Children = {};
				};
				{
					ID = 9;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextSize = 20;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Mul2";
						PlaceholderColor3 = Color3.new(178/255,178/255,178/255);
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 2";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(5/51,5/51,5/51);
					};
					Children = {};
				};
				{
					ID = 10;
					Type = "TextButton";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						Selectable = false;
						Text = "Multiply";
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						BackgroundTransparency = 0.80000001192093;
						Size = UDim2.new(1,0,0.050000000745058,0);
						Name = "ComputeMul";
						TextSize = 20;
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(1,1,1);
					};
					Children = {};
				};
				{
					ID = 11;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Div1";
						TextSize = 20;
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 1";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(2/51,2/51,2/51);
					};
					Children = {};
				};
				{
					ID = 12;
					Type = "TextBox";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						BorderColor3 = Color3.new(0,0,0);
						Text = "";
						Selectable = false;
						TextSize = 20;
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						Name = "Div2";
						PlaceholderColor3 = Color3.new(178/255,178/255,178/255);
						Size = UDim2.new(1,0,0.050000000745058,0);
						PlaceholderText = "Number 2";
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(5/51,5/51,5/51);
					};
					Children = {};
				};
				{
					ID = 13;
					Type = "TextButton";
					Properties = {
						FontSize = Enum.FontSize.Size24;
						Active = false;
						Selectable = false;
						Text = "Divide";
						TextColor3 = Color3.new(50/51,50/51,50/51);
						Font = Enum.Font.SourceSans;
						BackgroundTransparency = 0.80000001192093;
						Size = UDim2.new(1,0,0.050000000745058,0);
						Name = "ComputeDiv";
						TextSize = 20;
						BorderSizePixel = 0;
						BackgroundColor3 = Color3.new(1,1,1);
					};
					Children = {};
				};
				{
					ID = 14;
					Type = "UIGridLayout";
					Properties = {
						VerticalAlignment = Enum.VerticalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
						CellSize = UDim2.new(1,0,0.083499997854233,0);
						CellPadding = UDim2.new();
					};
					Children = {};
				};
			};
		};
	};
};

local function Scan(item, parent)
	local obj = Instance.new(item.Type)
	if (item.ID) then
		local awaiting = awaitRef[item.ID]
		if (awaiting) then
			awaiting[1][awaiting[2]] = obj
			awaitRef[item.ID] = nil
		else
			partsWithId[item.ID] = obj
		end
	end
	for p,v in pairs(item.Properties) do
		if (type(v) == "string") then
			local id = tonumber(v:match("^_R:(%w+)_$"))
			if (id) then
				if (partsWithId[id]) then
					v = partsWithId[id]
				else
					awaitRef[id] = {obj, p}
					v = nil
				end
			end
		end
		obj[p] = v
	end
	for _,c in pairs(item.Children) do
		Scan(c, obj)
	end
	obj.Parent = parent
	return obj
end

return function() return Scan(root, nil) end
