--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
    local env = getfenv(func)
    local newenv = setmetatable({},{
        __index = function(self,k)
            if k=="script" then
                return var
            else
                return env[k]
            end
        end,
    })
    setfenv(func,newenv)
    return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
SpecialMesh2 = Instance.new("SpecialMesh")
LocalScript3 = Instance.new("LocalScript")
Part4 = Instance.new("Part")
SpecialMesh5 = Instance.new("SpecialMesh")
Tool0.Name = "Shotgun"
Tool0.Parent = mas
Tool0.TextureId = "http://www.roblox.com/asset/?id=19339420"
Tool0.GripPos = Vector3.new(0, 0, 0.5)
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.BrickColor = BrickColor.new("Black")
Part1.Rotation = Vector3.new(0, -90, 0)
Part1.FormFactor = Enum.FormFactor.Symmetric
Part1.Size = Vector3.new(1, 1, 5)
Part1.CFrame = CFrame.new(-6.63999891, 0.500003994, -11.4400177, 0, 0, -1, 0, 1, 0, 1, 0, 0)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part1.Position = Vector3.new(-6.63999891, 0.500003994, -11.4400177)
Part1.Orientation = Vector3.new(0, -90, 0)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
SpecialMesh2.Parent = Part1
SpecialMesh2.MeshId = "http://www.roblox.com/asset/?id=94219391"
SpecialMesh2.Scale = Vector3.new(0.75, 0.75, 0.75)
SpecialMesh2.TextureId = "http://www.roblox.com/asset/?id=94219470"
SpecialMesh2.MeshType = Enum.MeshType.FileMesh
SpecialMesh2.Scale = Vector3.new(0.75, 0.75, 0.75)
LocalScript3.Name = "Main"
LocalScript3.Parent = Tool0
table.insert(cors,sandbox(LocalScript3,function()
--Made by Ahtoh13131423144235
--GUN SETTINGS
local char=nil--Do not change this
local damage=50--Bullet Damage
local maxAmmo=9--Max Ammo
local clip=9
local ammo=32--Stored Ammo
local debounce=true--Do not change this
--WELDS
local rightArmWeld=nil
local leftArmWeld=nil
local flameWeld=Instance.new("Weld")
flameWeld.Parent=script.Parent.Handle
flameWeld.Name="FlameWeld"
flameWeld.Part0=script.Parent.Handle
flameWeld.Part1=script.Parent.Flame
flameWeld.C0=CFrame.new(0,0.3,-3.5)*CFrame.fromEulerAnglesXYZ(0,80.1,0)
--ANIMATIONS
function equip()
for i=1,16 do
rightArmWeld.C0=rightArmWeld.C0*CFrame.fromEulerAnglesXYZ(0.1,0,0)
leftArmWeld.C0=leftArmWeld.C0*CFrame.fromEulerAnglesXYZ(0.1,0,0)
wait()
end
for i=1,7 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.fromEulerAnglesXYZ(0,0,0.1)
wait()
end
for i=1,7 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(0.1,0,0)
wait()
end
for i=1,15 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(0,-0.1,0)
wait()
end
for i=1,7 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(-0.1,-0.1,0)
wait()
end
end
 
function shoot()
for i=1,2 do
rightArmWeld.C0=rightArmWeld.C0*CFrame.fromEulerAnglesXYZ(0.1,0,0)
leftArmWeld.C0=leftArmWeld.C0*CFrame.fromEulerAnglesXYZ(0.1,0,0)
script.Parent.Flame.Transparency=script.Parent.Flame.Transparency-0.4
wait()
end
for i=1,2 do
rightArmWeld.C0=rightArmWeld.C0*CFrame.fromEulerAnglesXYZ(-0.1,0,0)
leftArmWeld.C0=leftArmWeld.C0*CFrame.fromEulerAnglesXYZ(-0.1,0,0)
script.Parent.Flame.Transparency=script.Parent.Flame.Transparency+0.4
wait()
end
for i=1,5 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(-0.1,-0.1,0)
wait()
end
for i=1,5 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(0.1,0.1,0)
wait()
end
end
function reload()
for i=1,7 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(0.1,0.1,0)
wait()
end
for i=1,14 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.fromEulerAnglesXYZ(-0.1,0,-0.1)
wait()
end
wait()
for i=1,14 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.fromEulerAnglesXYZ(0.1,0,0.1)
wait()
end
for i=1,7 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(-0.1,-0.1,0)
wait()
end
for i=1,5 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(-0.1,-0.1,0)
wait()
end
for i=1,5 do
leftArmWeld.C0=leftArmWeld.C0*CFrame.new(0.1,0.1,0)
wait()
end
end
--SCRIPT
script.Parent.Activated:connect(function()
if debounce==false and clip>0 then
debounce=true
local mouse=game.Players.LocalPlayer:GetMouse()
if mouse.Target~=nil then
if mouse.Target.Parent:FindFirstChild("Humanoid")~=nil then
mouse.Target.Parent.Humanoid.Health=mouse.Target.Parent.Humanoid.Health-damage
end
end
shoot()
local shell=Instance.new("Part")
shell.Parent=game.Workspace
shell.Name="Shell"
shell.Size=Vector3.new(0.1,0.2,0.1)
shell.Position=script.Parent.Handle.Position+Vector3.new(0.4,0,0)
shell.CanCollide=true
shell.BrickColor=BrickColor.new("Bright red")
local mesh=Instance.new("SpecialMesh")
mesh.Parent=shell
mesh.MeshType="Head"
game.Debris:AddItem(shell,4)
clip=clip-1
debounce=false
elseif debounce==false and clip<=0 and ammo>0 then
debounce=true
reload()
clip=maxAmmo
ammo=ammo-maxAmmo
debounce=false
end
end)
script.Parent.Equipped:connect(function()
char=script.Parent.Parent
rightArmWeld=Instance.new("Weld")
rightArmWeld.Parent=char.Torso
rightArmWeld.Part0=char.Torso
rightArmWeld.Part1=char["Right Arm"]
rightArmWeld.Name="RightWeld"
rightArmWeld.C0=CFrame.new(1.5,0.5,0)
rightArmWeld.C1=CFrame.new(0,0.5,0)
leftArmWeld=Instance.new("Weld")
leftArmWeld.Parent=char.Torso
leftArmWeld.Name="LeftWeld"
leftArmWeld.Part0=char.Torso
leftArmWeld.Part1=char["Left Arm"]
leftArmWeld.C0=CFrame.new(-1.5,0.5,0)
leftArmWeld.C1=CFrame.new(0,0.5,0)
equip()
debounce=false
end)
script.Parent.Unequipped:connect(function()
char=nil
rightArmWeld:Remove()
leftArmWeld:Remove()
rightArmWeld=nil
leftArmWeld=nil
end)
end))
Part4.Name = "Flame"
Part4.Parent = Tool0
Part4.BrickColor = BrickColor.new("Bright red")
Part4.Transparency = 1
Part4.Size = Vector3.new(1.97999871, 0.640000284, 0.510000348)
Part4.CFrame = CFrame.new(-3.19277, 0.801472008, -11.4081182, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part4.Color = Color3.new(0.768628, 0.156863, 0.109804)
Part4.Position = Vector3.new(-3.19277, 0.801472008, -11.4081182)
Part4.Color = Color3.new(0.768628, 0.156863, 0.109804)
SpecialMesh5.Parent = Part4
SpecialMesh5.MeshType = Enum.MeshType.Sphere
for i,v in pairs(mas:GetChildren()) do
    v.Parent = game.Players.LocalPlayer.Backpack
    pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
    spawn(function()
        pcall(v)
    end)
end
