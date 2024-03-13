-- variables --
getgenv().autoClick = false;

local RemoteEventPath = game:GetService("ReplicatedStorage").Events;

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Tapping Masters!")

local a = w:CreateFolder("Main")

local b = w:CreateFolder("Farm")

a:DestroyGui()

---Toggles

b:Toggle("Auto Click",function(bool)
    getgenv().autoClick = bool
    print('Auto Click is:', bool);
    if bool then
        doClick();
    end
end)

--Functions

function doClick()
    spawn(function ()
        while autoClick == true do
            local args = {[1] = 1}
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()
            wait()
           end
        end)
    end
