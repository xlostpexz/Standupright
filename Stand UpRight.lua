local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Winnable Hub | Stand Upright V.1.0.2", 5013109572)
 
 
 
local page = venyx:addPage("Auto Farm", 5012544693)
local farm = page:addSection("Auto Farm")
local farm2 = page:addSection("Auto Equip")
local page = venyx:addPage("Lair Farm", 7251993295)
local lair1 = page:addSection("Lair Farm")
local page = venyx:addPage("Misc", 7252023075)
local misc = page:addSection("Other")
local theme = venyx:addPage("Theme", 7044284832)
local colors = theme:addSection("Colors")

local Weaponlist = {}
local Weapon = nil

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    table.insert(Weaponlist,v.Name)
end

mons = {}

for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
   table.insert(mons,v.Name)
end


farm:addToggle("Auto Farm", _G.Farm1, function(value)
_G.Farm1 = value
end)

    farm:addSlider("Distace Behind",11,-20,120,function(t)
        Disc = t
    end)
    
    farm:addSlider("Distace Above",-5,-20,20,function(t)
        Disc2 = t
    end)


farm:addToggle("Auto Farm Items", _G.Farm3, function(value)
    _G.Farm3 = value
    while _G.Farm3 do wait(1.2)
for i,v in pairs(game:GetService("Workspace").Items:GetDescendants()) do
    
if v.Name == "TouchInterest"  then

local CFrameEnd  = v.Parent.CFrame --ใส่CFrame
local Time = 1 --ใส่เวลาที่จะไปถึง
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()

end
end
end
end)

misc:addButton("Delete Map", function()
    game:GetService("Workspace").Map.Model:Destroy()
end)

farm:addToggle("Auto Attack", _G.Farm2, function(value)
_G.Farm2 = value
end)

farm:addDropdown("Select Mons", mons, function(abc)
    Select = abc
end)

farm:addButton("Refresh", function()
        table.clear(mons)
for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
   table.insert(mons,v.Name)
end
end)

farm:addButton("Tween to Mons", function()
local CFrameEnd = game:GetService("Workspace").Living[Select].HumanoidRootPart.CFrame * CFrame.new(0,10,0) --ใส่CFrame
local Time = 1 --ใส่เวลาที่จะไปถึง
local tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd}) tween:Play()
end)

farm2:addDropdown("Select Weapon", Weaponlist, function(abcd)
    Weapon = abcd
end)

farm2:addButton("Refresh", function()
        table.clear(Weaponlist)
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
   table.insert(Weaponlist,v.Name)
end
end)

farm2:addToggle("Auto Equip", _G.Equip, function(value)
_G.Equip = value
end)

misc:addButton("Walk Speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

misc:addButton("Thai Language", function()
game:GetService("Players").LocalPlayer.PlayerGui.rokaUse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.rokaUse.NoOption.Value = "ไม่"
game:GetService("Players").LocalPlayer.PlayerGui.rokaUse.NameOfItem.Value = "โลกากะ"
game:GetService("Players").LocalPlayer.PlayerGui.rokaUse.Text.Value = "คุณต้องการที่จะกิน โลกากะ มั้ย?"

game:GetService("Players").LocalPlayer.PlayerGui.arrowUse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.arrowUse.NoOption.Value = "ไม่"
game:GetService("Players").LocalPlayer.PlayerGui.arrowUse.NameOfItem.Value = "ธนู"
game:GetService("Players").LocalPlayer.PlayerGui.arrowUse.Text.Value = "คุณต้องการที่จะใช้ ธนู มั้ย"

game:GetService("Players").LocalPlayer.PlayerGui.LairClear.Clear.Text = "เคลีย์ ดัน สำเร็จ!"

game:GetService("Players").LocalPlayer.PlayerGui.udiaryUse.NameOfItem.Value = "สุดยอดไดอารี่ [เลเวล 100+]"
game:GetService("Players").LocalPlayer.PlayerGui.udiaryUse.NoOption.Value = "ไม่"
game:GetService("Players").LocalPlayer.PlayerGui.udiaryUse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.udiaryUse.Text.Value = "คุณต้องการที่จะใช้ สุดยอดไดอารี่ มั้ย?"

game:GetService("Players").LocalPlayer.PlayerGui.diaryUse.NameOfItem.Value = "ไดอารี่ [เลเวล 75+]"
game:GetService("Players").LocalPlayer.PlayerGui.diaryUse.NoOption.Value = "ไม่"
game:GetService("Players").LocalPlayer.PlayerGui.diaryUse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.diaryUse.Text.Value = "คุณต้องการที่จะใช้ ไดอารี่ มั้ย?"

game:GetService("Players").LocalPlayer.PlayerGui.curseduse.NameOfItem.Value = "ลุกตา ต้องคำสาป [เลเวล 35+]"
game:GetService("Players").LocalPlayer.PlayerGui.curseduse.Text.Value = "คุณต้องการที่จะใช้ ลูกตา ต้องคำสาป มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.curseduse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.curseduse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.limbuse.NameOfItem.Value = "แขนขานักบุญ [เลเวล 45+]"
game:GetService("Players").LocalPlayer.PlayerGui.limbuse.Text.Value = "คุณต้องการที่จะใช้ แขนขานักบุญ มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.limbuse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.limbuse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.torsouse.NameOfItem.Value = "ตัวนักบุญ [เลเวล 45+]"
game:GetService("Players").LocalPlayer.PlayerGui.torsouse.Text.Value = "คุณต้องการที่จะใช้ ตัวนักบุญ มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.torsouse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.torsouse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.skullUse.NameOfItem.Value = "หัวนักบุญ [เลเวล 45+]"
game:GetService("Players").LocalPlayer.PlayerGui.skullUse.Text.Value = "คุณต้องการที่จะใช้ หัวนักบุญ มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.skulluse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.skulluse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.requse.NameOfItem.Value = "ธนูเรเควี่ยม [เลเวล 60+]"
game:GetService("Players").LocalPlayer.PlayerGui.requse.Text.Value = "คุณต้องการที่จะใช้ ธนูเรเควี่ยม มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.requse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.requse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.karsmaskuse.NameOfItem.Value = "หน้ากากแห่งกรรม [เลเวล 45+]"
game:GetService("Players").LocalPlayer.PlayerGui.karsmaskuse.Text.Value = "คุณต้องการที่จะใช้ หน้ากากแห่งกรรม มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.karsmaskuse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.karsmaskuse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.maskuse.NameOfItem.Value = "หน้ากากแวมไพร์ [เลเวล 25+]"
game:GetService("Players").LocalPlayer.PlayerGui.maskuse.Text.Value = "คุณต้องการที่จะใช้ หน้ากากแวมไพร์ มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.maskuse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.maskuse.NoOption.Value = "ไม่"

game:GetService("Players").LocalPlayer.PlayerGui.greenuse.NameOfItem.Value = "ตุ๊กตาเขียว [เลเวล 30+]"
game:GetService("Players").LocalPlayer.PlayerGui.greenuse.Text.Valie = "คุณต้องการที่จะใช้ ตุ๊กตาเขียว มั้ย?"
game:GetService("Players").LocalPlayer.PlayerGui.greenuse.YesOption.Value = "ใช่"
game:GetService("Players").LocalPlayer.PlayerGui.greenuse.NoOption.Value = "ไม่"
end)

lair1:addToggle("Auto All Lair Ez Lair", "Bitch", function(value)
_G.lair15 = value
while _G.lair15 do wait()
_G.MON = "Boss" -- NAME MONSTER

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Living[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,7,10)
end
end)

farm:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)


spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.Farm1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Living[Select].HumanoidRootPart.CFrame * CFrame.new(0,Disc2,Disc)
        end
    end)
   end)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Farm1 then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 0
                LOL.Size = Vector3.new(5,-0.5,5)
                LOL.Material = "Neon"
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
        end
    end
   end)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.Farm3 then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 0
                LOL.Size = Vector3.new(5,-0.5,5)
                LOL.Material = "Neon"
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
        end
    end
   end)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.lair15 then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 0
                LOL.Size = Vector3.new(5,-0.5,5)
                LOL.Material = "Neon"
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3.5,0)
        end
    end
   end)
end)

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.Equip then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Weapon))
        end
    end)
   end)
end)

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.Farm2 then
game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
        end
    end)
end) 
end)

spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.lair15 then
game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
        end
    end)
end) 
end)



spawn(function()
  while game:GetService("RunService").Stepped:wait(10) do
      character = game.Players.LocalPlayer.Character 
      if _G.lair15 then
          pcall(function()
              for _, v in pairs(character:GetDescendants()) do
                  pcall(function()
                      if v:IsA("BasePart") then
                          pcall(function()
                          v.CanCollide = false
                          end)
                      end
                  end)
              end
          end)
      end
  end
end)

spawn(function()
  while game:GetService("RunService").Stepped:wait(10) do
      character = game.Players.LocalPlayer.Character 
      if _G.Farm3 then
          pcall(function()
              for _, v in pairs(character:GetDescendants()) do
                  pcall(function()
                      if v:IsA("BasePart") then
                          pcall(function()
                          v.CanCollide = false
                          end)
                      end
                  end)
              end
          end)
      end
  end
end)


local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(60, 0, 200),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(241, 146, 255)
}
 
 
for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
 
-- load
venyx:SelectPage(venyx.pages[1], true)
