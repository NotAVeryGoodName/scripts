---by lopsidedAD    dwayne_johnson#8095

local player = game.Players.ENTERPLAYERNAMEHERE.Character.HumanoidRootPart --- enter players name there (do it)
local lpr = game.Players.LocalPlayer.Character.HumanoidRootPart


local speed = 8 
local radius = 8 --- orbit size
local eclipse = 1 --- width of orbit
local rotation = CFrame.Angles(0,0,0) --only works for unanchored parts (not localplayer)


local sin, cos = math.sin, math.cos
local rotspeed = math.pi*2/speed
eclipse = eclipse * radius
local runservice = game:GetService('RunService')


local rot = 0
game:GetService('RunService').Stepped:connect(function(t, dt)
rot = rot + dt * rotspeed
lpr.CFrame = rotation * CFrame.new(sin(rot)*eclipse, 0, cos(rot)*radius) + player.Position
end)
