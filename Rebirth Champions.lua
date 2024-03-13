local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Ksawier Hub │ [🍀X8!] Rebirth Champions X",  HidePremium = true, SaveConfig = true, ConfigFolder = "RebirthChampFolder"})

--Values
_G.autoClick = false;

--Functions
function autoClick()
    while _G.autoClick == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()
	wait(.0001)
    end
end


local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FarmTab:AddButton({
	Name = "Auto Click!",
	Callback = function(Value)
       _G.autoClick == Value
       autoClick()
  	end    
})


OrionLib:Init()
