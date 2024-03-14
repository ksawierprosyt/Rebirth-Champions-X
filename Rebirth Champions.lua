local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[🍀X8!] Rebirth Champions X", HidePremium = true,IntroEnabled = false,IntroText = "Ksawier Hub", SaveConfig = true, ConfigFolder = "RebirthChampionsX"})

--Variables
_G.autoTap = true

--Functions
function autoTap()
	while _G.autoTap == true  do
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()
	end
end

-- Tabs
local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
FarmTab:AddToggle({
	Name = "Auto Tap!",
	Default = false,
	Callback = function(Value)
		_G.autoTap == Value
		autoTap()
		print(Value)
	end    
})


OrionLib:Init()
