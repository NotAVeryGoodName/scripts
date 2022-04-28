local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Kys central"})
OrionLib:MakeNotification({
	Name = "Welcome",
	Content = "Kys kid",
	Image = "rbxassetid://4335480917",
	Time = 15
})
local Tab = Window:MakeTab({
	Name = "Cotton picker",
	Icon = "rbxassetid://4431163577",
	PremiumOnly = false
})
local FF = Window:MakeTab({
	Name = "recreate 9/11",
	Icon = "rbxassetid://4483363535",
	PremiumOnly = false
})
local WOW = Window:MakeTab({
	Name = "Extra idk",
	Icon = "rbxassetid://4384403555",
	PremiumOnly = false
})
local KAT = Window:MakeTab({
	Name = "Funny shit",
	Icon = "rbxassetid://4335480917",
	PremiumOnly = false
})
Tab:AddColorpicker({
	Name = "I hate this Check f9",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(value)
		print(value)
	end	  
})
FF:AddButton({
	Name = "Dark dex",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/darkdeez.lua", true))()
  	end    
})
FF:AddButton({
	Name = "Inf yield",
	Callback = function()
        loadstring(game:HttpGetAsync("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()", true))()
  	end    
})
FF:AddButton({
	Name = "xd lol chat cringe",
	Callback = function()
        loadstring(game:HttpGet("https://the-shed.xyz/roblox/scripts/ChatBypass", true))()
  	end    
})
FF:AddButton({
	Name = "Spin + noclip + bitchless",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/Spin0.lua", true))()
  	end    
})
FF:AddButton({
	Name = "Shitty animation hub",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/roware.lua", true))()
  	end    
})
WOW:AddButton({
	Name = "Become black",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "OBAMA VERIFIED",
            Content = "NIGGA YOU THOUGHT",
            Image = "rbxassetid://4483345998",
            Time = 30
        })		
  	end    
})
WOW:AddButton({
	Name = "Islands location grabber",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Bukito20/Public-scripts/main/IslandsGrabberGui'))()
  	end    
})
WOW:AddButton({
	Name = "Retard hub (Only use for FE kill)",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/RetardHub.lua'))()
  	end    
})
WOW:AddButton({
	Name = "FE kill",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/fekill1.lua'))()
  	end    
})
WOW:AddButton({
	Name = "Noboline + bedwars virgin1",
	Callback = function()
        loadstring(game:HttpGet'https://dogix.wtf/scripts/noboline/e256f847-5e9f-4319-9a27-17b308dd1319')()
  	end    
})
WOW:AddButton({
	Name = "Vape + bedwars virgin2",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})
WOW:AddButton({
	Name = "Vape + bedwars virgin2",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  	end    
})
WOW:AddButton({
	Name = "Shitty save game1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/SaveSite.lua", true))()
  	end    
})
WOW:AddButton({
	Name = "Shitty save game2",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/saveinstance.lua", true))()
  	end    
})
KAT:AddButton({
	Name = "Aimbot",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cornyllius/ROBLOX/main/AIMBOT%20HUB.lua", true))()
  	end    
})
KAT:AddButton({
	Name = "Sex GUI",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/sexx.lua", true))()
  	end    
})
KAT:AddButton({
	Name = "Fly + noclip",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/FlyNoclip.lua", true))()
  	end    
})
KAT:AddButton({
	Name = "PF kiddies",
	Callback = function()
        loadstring(game:HttpGet("https://projectevo.xyz/script/loader.lua"))()
  	end    
})
KAT:AddButton({
	Name = "Btool",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NotAVeryGoodName/scripts/main/btools.lua"))()
  	end    
})
