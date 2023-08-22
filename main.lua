repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local UserInputService = game:GetService("UserInputService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		object.Position = pos
	end
	topbarobject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = object.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)
	topbarobject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			Update(input)
		end
	end)
end

function YtPr()
	local YoutubeGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")

	MakeDraggable(Frame,Frame)

	YoutubeGui.Name = "YoutubeGui"
	YoutubeGui.Parent = game.CoreGui
	YoutubeGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = YoutubeGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.Position = UDim2.new(0.0937950909, 0, 0.497589529, 0)
	Frame.Size = UDim2.new(0.259740233, 0, 0.172176316, 0)

	UICorner.Parent = Frame

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Position = UDim2.new(0.057500001, 0, 0.0700000003, 0)
	ImageLabel.Size = UDim2.new(0.295138925, 0, 0.850000024, 0)
	ImageLabel.Image = "http://www.roblox.com/asset/?id=12130059538"

	UICorner_2.CornerRadius = UDim.new(0, 60)
	UICorner_2.Parent = ImageLabel

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.401250005, 0, 0.169999987, 0)
	TextLabel.Size = UDim2.new(0.534722269, 0, 0.310000002, 0)
	TextLabel.Font = Enum.Font.Highway
	TextLabel.Text = " acsu123"
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom

	TextButton.Parent = Frame
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	TextButton.Position = UDim2.new(0.401250005, 0, 0.479999989, 0)
	TextButton.Size = UDim2.new(0.534722269, 0, 0.349999994, 0)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "Subcribe"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	UICorner_3.Parent = TextButton

	local uistroke = Instance.new("UIStroke",ImageLabel)
	uistroke.Color =Color3.fromRGB(255, 0, 0)
	uistroke.Thickness = 3

	game.Debris:AddItem(YoutubeGui,30)

	TextButton.MouseButton1Click:Connect(function()
		game.Debris:AddItem(YoutubeGui,0)
	end)
end

function CreateSupportList(list_game)
	local function RainbowText(text)
		spawn(function()
			local add = 10
			wait(1)
			local k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(k/255,0/255,0/255)
				k = k + add
				wait()
			end
			while true do
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255,k/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(0/255,255/255,k/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(k/255,0/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
					k = k + add
					wait()
				end
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
					k = k + add
					wait()
				end
			end
		end)
	end
	
	local Anh_Gai_Alimi = {"rbxassetid://6942501524","rbxassetid://7903531742","rbxassetid://7903522083","rbxassetid://6409799523","rbxassetid://8881175113",
		"rbxassetid://7584008919","rbxassetid://6271530098","rbxassetid://7388383866","rbxassetid://7962732035","rbxassetid://6842416695","rbxassetid://6576447146",
		"rbxassetid://10171317457","rbxassetid://10171317457","rbxassetid://8598068647","rbxassetid://8192162908","rbxassetid://8677814109","rbxassetid://4597457883"
	}
	
	local SupportUi = Instance.new("ScreenGui")
	local BackImg = Instance.new("ImageLabel")
	local Black = Instance.new("Frame")
	local Tittle = Instance.new("TextLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CloseButton = Instance.new("TextButton")
	
	MakeDraggable(BackImg,BackImg)

	SupportUi.Name = "SupportUi"
	SupportUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	SupportUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	BackImg.Name = "BackImg"
	BackImg.Parent = SupportUi
	BackImg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	BackImg.BorderSizePixel = 0
	BackImg.Position = UDim2.new(0.667782426, 0, 0.33959043, 0)
	BackImg.Size = UDim2.new(0, 375, 0, 375)
	BackImg.Image = Anh_Gai_Alimi[math.random(1,#Anh_Gai_Alimi)]

	Black.Name = "Black"
	Black.Parent = BackImg
	Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Black.BackgroundTransparency = 0.4
	Black.BorderSizePixel = 0
	Black.Size = UDim2.new(0, 375, 0, 375)

	Tittle.Name = "Tittle"
	Tittle.Parent = Black
	Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tittle.BackgroundTransparency = 1.000
	Tittle.Position = UDim2.new(0.0399999991, 0, 0, 0)
	Tittle.Size = UDim2.new(0, 265, 0, 39)
	Tittle.Font = Enum.Font.Highway
	Tittle.Text = "Game Suported"
	Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Tittle.TextScaled = true
	Tittle.TextSize = 14.000
	Tittle.TextWrapped = true
	Tittle.TextXAlignment = Enum.TextXAlignment.Left

	ScrollingFrame.Parent = Black
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.0240000002, 0, 0.104000002, 0)
	ScrollingFrame.Size = UDim2.new(0, 366, 0, 329)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 4, 0)
	ScrollingFrame.ScrollBarThickness = 10

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = Black
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0.896000028, 0, 0, 0)
	CloseButton.Size = UDim2.new(0, 39, 0, 39)
	CloseButton.Font = Enum.Font.FredokaOne
	CloseButton.Text = "X"
	CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.TextScaled = true
	CloseButton.TextSize = 14.000
	CloseButton.TextWrapped = true
	
	RainbowText(Tittle)
	RainbowText(CloseButton)

	for i,v in pairs(list_game) do
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Parent = ScrollingFrame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0, 353, 0, 24)
		TextLabel.Font = Enum.Font.Highway
		TextLabel.Text = "		+ " .. v
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextTransparency = 0.500
		TextLabel.TextWrapped = true
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		RainbowText(TextLabel)
	end
	
	CloseButton.MouseButton1Click:Connect(function()
		game.Debris:AddItem(SupportUi, 0)
	end)
end

local list = {
	--BedWars
	[2619619496] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/bedwar.txt'))()",

	--Element Battle Ground
	[224422602] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/elementBattlegr.lua'))()",

	--King Legacy
	[1451439645] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/KingLegacyFree.lua'))()",

	--Blox Fruit
	[994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFreeV3.lua'))()",

	--Pet Simulator X
	[2316994223] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/PetSimXFree.lua'))()",

	--Zombie Attack
	[504035427]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/ZombieAtack.lua'))()",

	--Two Piece
	[5303541547]="loadstring(game:HttpGet('https://raw.githubusercontent.com/AlongNgu/alonebruh/main/twoPiecehoho.lua'))()",

	--Dungeon Quest
	[848145103]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/Paid/DunegonQuest.lua'))()",

	--Tradelands
	[92096286]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TradeLands.lua'))()",

	--Anime Fighters Simulator
	[2324662457]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/anime%20fighters%20simulator.lua'))()",

	--Arsenal
	[111958650]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/Arsenal.lua'))()",

	--Break In
	[1318971886]="loadstring(game:HttpGet('https://pastebin.com/raw/xUGJt9Ry', true))()",

	--Tower of Hell
	[703124385]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TowerOfHell.lua'))()",

	--steve's one piece
	[741590026]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/SteveOnePiece.lua'))()",

	--Murder Mystery 2
	[66654135]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/muder%20mys..2.txt'))()",

	--Giant Survival!
	[1342991001]="loadstring(game:HttpGet('https://pastebin.com/raw/zABEESgr', true))()",

	--Field Trip Z
	[1701332290]="loadstring(game:HttpGet('https://pastebin.com/raw/aY7Z3Nd3', true))()",

	--Mad City
	[498490399]="loadstring(game:HttpGet('https://pastebin.com/raw/EwnNCfin', true))()",

	--vn piece
	[1493595237]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/vn%20Piece%20script-obfuscated.lua', true))()",
	
	--Ro Fruit
	[3904583189]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/RoFruitFree.lua', true))()",

	--Collect All Pets
	[3359505957]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/CollectAllPetsFree.lua', true))()",
	
	--GPO
	[648454481]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/GPOFree.lua', true))()",

	--Anime Defense Simulator
	[4205109410]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/AnimeDefenseSimulatorFree.lua', true))()",

	--Anime Soul Simulator
	[4098816381]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/AnimeSoulSimulatorFree.lua', true))()",
}

local listPre = {
	--BedWars
	[2619619496] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/bedwar.txt'))()",

	--Element Battle Ground
	[224422602] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/elementBattlegr.lua'))()",

	--King Legacy
	[1451439645] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/KingLegacyPre.lua'))()",

	--Blox Fruit
	[994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/BloxFruitPreV3.lua'))()",

	--Pet Simulator X
	[2316994223] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/PetSimXFree.lua'))()",

	--Zombie Attack
	[504035427]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/ZombieAtack.lua'))()",

	--Two Piece
	[5303541547]="loadstring(game:HttpGet('https://raw.githubusercontent.com/AlongNgu/alonebruh/main/twoPiecehoho.lua'))()",

	--Dungeon Quest
	[848145103]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/Paid/DunegonQuest.lua'))()",

	--Tradelands
	[92096286]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TradeLands.lua'))()",

	--Anime Fighters Simulator
	[2324662457]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/anime%20fighters%20simulator.lua'))()",

	--Arsenal
	[111958650]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/Arsenal.lua'))()",

	--Break In
	[1318971886]="loadstring(game:HttpGet('https://pastebin.com/raw/xUGJt9Ry', true))()",

	--Tower of Hell
	[703124385]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TowerOfHell.lua'))()",

	--steve's one piece
	[741590026]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/SteveOnePiece.lua'))()",

	--Murder Mystery 2
	[66654135]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/muder%20mys..2.txt'))()",

	--Giant Survival!
	[1342991001]="loadstring(game:HttpGet('https://pastebin.com/raw/zABEESgr', true))()",

	--Field Trip Z
	[1701332290]="loadstring(game:HttpGet('https://pastebin.com/raw/aY7Z3Nd3', true))()",

	--Mad City
	[498490399]="loadstring(game:HttpGet('https://pastebin.com/raw/EwnNCfin', true))()",

	--vn piece
	[1493595237]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/vn%20Piece%20script-obfuscated.lua', true))()",
	
	--Ro Fruit
	[3904583189]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/RoFruitPre.lua', true))()",
	
	--Collect All Pets
	[3359505957]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/CollectAllPetsPre.lua', true))()",
	
	--GPO
	[648454481]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/GPOPre.lua', true))()",

	--Anime Defense Simulator
	[4205109410]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/AnimeDefenseSimulatorPre.lua', true))()",
	
	--Anime Soul Simulator
	[4098816381]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/AnimeSoulSimulatorPre.lua', true))()",
}

YtPr()
CreateSupportList({"Pet Simulator X","GPO - Grand Piece Online","Blox Fruit","King Legacy","Anime Soul Simulator","Anime Defense Simulator","Ro Fruit","Collect All Pets","Tower of Hell","Break In","Arsenal",
"Mad City","Viet Nam Piece","Field Trip Z","Giant Survival!",
	"Murder Mystery 2","steve's one piece","Anime Fighters Simulator","Tradelands","Dungeon Quest","Two Piece"
})
_G.HoHoLoaded = true
if getgenv().Key and listPre[game.GameId] ~= nil then
	getgenv().messagebox = function()end
	loadstring(listPre[tonumber(game.GameId)])()
elseif not getgenv().Key and list[game.GameId] ~= nil then
	loadstring(list[tonumber(game.GameId)])()
else
	game.Players.LocalPlayer:Kick("game not support, discord.gg/hohohub")
end

if _G["HoHo Hub Auto Bounty V3"] or _G["Fumo Blox Fruit - HoHo Hub Kaitun V3"] then return end

local path = "loadstring(game:HttpGet('https://raw.githubusercontent.com/LebronJack69/RobluxScriptTesing/main/main.lua'))()"
if getgenv().Key then
	path = "getgenv().Key = '"..getgenv().Key.."'\n"..path
end
local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
queueteleport(path)
