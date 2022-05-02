-- Pepsi Was Here
getgenv = getgenv or getfenv -- If you don't use getgenv, you'll have to run this a lot.


-- Auto Load Pepsi's Utilites (Uncomment to enable (not required)
-- getgenv().Color3, getgenv().Instance, getgenv().math, getgenv().string, getgenv().table, getgenv().Pepsi = (function()return loadstring(rawget(game:GetObjects[[rbxassetid://3554165973]], 0x1).Source)[[Pepsi Was]][[Here]]end)[[Pepsi Utilites]]


-- Overwrite Outdates
local vers = 1
if shared.compatability_version and shared.compatability_version > vers then
return game:GetService("TestService"):Message("Compatability:Already running a newer version")
else
shared.compatability_version = vers
game:GetService("TestService"):Message("Compatability:Running Version " .. tostring(vers or 1))
end


-- Artificial Functions
local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local ainput = {
   LeftClick = function(num)
       assert(num == nil or num == 1 or num == 2 or num == 3, "bad argument #1 to 'LeftClick' (number (1-3) expected, got " .. type(num) == "number" and num or typeof(num) .. ")")
       return ({
           [0] = mouse1click,
           mouse1press,
           mouse1release
       })[tonumber(num or 0)]()
   end,
   RightClick = function(num)
       assert(num == nil or num == 1 or num == 2 or num == 3, "bad argument #1 to 'RightClick' (number (1-3) expected, got " .. type(num) == "number" and num or typeof(num) .. ")")
       return ({
           [0] = mouse2click,
           mouse2press,
           mouse2release
       })[tonumber(num or 0)]()
   end,
   MoveMouse = mousemoverel,
   ScrollMouse = mousescroll,
   KeyPress = function(code)
       assert(type(code) == "number" and code > 0 and code < 255, "bad argument #1 to 'KeyPress' (key number (1-254) expected, got " .. type(num) == "number" and num or typeof(num) .. ")")
       keypress(code)
       wait(0.03)
       return keyrelease(code)
   end,
   KeyDown = keypress,
   KeyUp = keyrelease
}

local function retfalse()
   return false
end

local function gw()
   return {
       duck = true,
       gay = true,
       croc = true,
       race = "caucasian",
       retarded = true,
       bird = true
   }
end

local function rettrue()
   return true
end

local function makewrite(tab)
   return setreadonly(tab, false)
end

local function makeread(tab)
   return setreadonly(tab, true)
end

local function agetscripts()
   local scr = {}
   for k, v in pairs(game:GetDescendants()) do
       if v and typeof(v) == "Instance" and v.ClassName == "LocalScript" or v.ClassName == "ModuleScript" then
           table.insert(scr, v)
       end
   end
   local gni = getnilinstances or get_nil_instances
   if gni then
       for k, v in pairs(gni()) do
           if typeof(v) == "Instance" and v.ClassName == "LocalScript" or v.ClassName == "ModuleScript" then
               table.insert(scr, v)
           end
       end
   end
   return scr
end

local function gsenvs()
   local gs = getscripts or agetscripts
   local scr, envs = getscripts(), {}
   assert(scr, "Couldn't get scripts")
   for k, v in pairs(scr) do
       local s, env = pcall(getsenv, v)
       if s and "table" == type(env) then
           envs[s] = env
       else
           envs[s] = {}
       end
   end
   return envs or {}
end

local function parseurl(url)
   assert(type(url) == "string", "bad argument #1 to 'parse_url' (url string expected, got " .. url == nil and "no value" or typeof(url) .. "")
   assert(true == pcall(game:HttpGet(url)), "bad argument #1 to 'parse_url' (url string expected, got " .. url == nil and "no value" or typeof(url) .. "")
   return {
       port = url:find("https://", nil, true) and 443 or 80,
       protocol = url:find("https://", nil, true) and "https" or "http",
       domain = url:find("https://", nil, true) and url:sub(#"https://") or url:sub(#"http://"),
       resource = "/",
       query = ""
   }
end

local function artificial_getconstant(func, id)
   local gc = getconstants or getconsts or debug.getconstants
   return rawget(gc(func), id)
end

local function artificial_getupvalue(func, id)
   local gu = getupvalues or getupvals or debug.getupvalues
   return rawget(gu(func), id)
end

local function randomstr(num)
   assert(num and type(num) == "number", "bad argument #1 to 'random' (number expected, got " .. num == nil and "no value" or typeof(num) .. ")")
   assert(num == math.abs(num), "bad argument #1 to 'random' (negative size specified)")
   assert(num <= 1024, "bad argument #1 to 'random' (exceeded maximum size (1024))")
   return ({
       string.rep(".", num):gsub(".", function()
           return string[({
               "upper",
               "lower"
           })[math.random(2)]](string.char(math.random(65, 90)))
       end)
   })[1]
end

local function strenc(message, key)
   local key_bytes
   if type(key) == "string" then
       key_bytes = {}
       for key_index = 1, #key do
           key_bytes[key_index] = string.byte(key, key_index)
       end
   else
       key_bytes = key
   end
   local message_length = #message
   local key_length = #key_bytes
   local message_bytes = {}
   for message_index = 1, message_length do
       message_bytes[message_index] = string.byte(message, message_index)
   end
   local result_bytes = {}
   local random_seed = 0
   for key_index = 1, key_length do
       random_seed = (random_seed + key_bytes[key_index] * key_index) * 37789 + 60061
       random_seed = (random_seed - random_seed % 256) / 256 % 65536
   end
   for message_index = 1, message_length do
       local message_byte = message_bytes[message_index]
       for key_index = 1, key_length do
           local key_byte = key_bytes[key_index]
           local result_index = message_index + key_index - 1
           local result_byte = message_byte + (result_bytes[result_index] or 0)
           if result_byte > 255 then
               result_byte = result_byte - 256
           end
           result_byte = result_byte + key_byte
           if result_byte > 255 then
               result_byte = result_byte - 256
           end
           random_seed = (random_seed * 37789 + 60061) % 65536
           result_byte = result_byte + (random_seed - random_seed % 256) / 256
           if result_byte > 255 then
               result_byte = result_byte - 256
           end
           result_bytes[result_index] = result_byte
       end
   end
   local result_characters = {}
   local result_next_index = 1
   for result_index = 1, #result_bytes do
       local result_byte = result_bytes[result_index]
       if result_byte == 0 then
           result_characters[result_next_index] = "\1"
           result_characters[result_next_index + 1] = "\1"
           result_next_index = result_next_index + 2
       elseif result_byte == 1 then
           result_characters[result_next_index] = "\1"
           result_characters[result_next_index + 1] = "\2"
           result_next_index = result_next_index + 2
       else
           result_characters[result_next_index] = string.char(result_byte)
           result_next_index = result_next_index + 1
       end
   end
   return table.concat(result_characters)
end

local function strdec(message, key)
   local message_length = #message
   local key_length = #key
   local random_seed = 0
   local g = 0
   local message_index = 1
   local message_bytes = {}
   local j = {}
   local result_bytes = {}
   local result_characters = {}
   local key_bytes
   if type(key) == "string" then
       key_bytes = {}
       for key_index = 1, key_length do
           key_bytes[key_index] = string.byte(key, key_index)
       end
   else
       key_bytes = key
   end
   while message_index <= message_length do
       local i = string.byte(message, message_index)
       g = g + 1
       if i == 1 then
           message_index = message_index + 1
           message_bytes[g] = string.byte(message, message_index) - 1
       else
           message_bytes[g] = i
       end
       message_index = message_index + 1
   end
   for key_index = 1, key_length do
       random_seed = (random_seed + key_bytes[key_index] * key_index) * 37789 + 60061
       random_seed = (random_seed - random_seed % 256) / 256 % 65536
   end
   for i = 1, (g - key_length + 1) * key_length do
       random_seed = (random_seed * 37789 + 60061) % 65536
       j[i] = (random_seed - random_seed % 256) / 256
   end
   local l = #j
   local m = key_bytes[key_length]
   for result_index = g, key_length, -1 do
       local result_byte = message_bytes[result_index] - m
       if result_byte < 0 then
           result_byte = result_byte + 256
       end
       result_byte = result_byte - j[l]
       l = l - 1
       if result_byte < 0 then
           result_byte = result_byte + 256
       end
       for q = key_length - 1, 1, -1 do
           result_index = result_index - 1
           local r = message_bytes[result_index] - key_bytes[q]
           if r < 0 then
               r = r + 256
           end
           r = r - result_byte
           if r < 0 then
               r = r + 256
           end
           r = r - j[l]
           l = l - 1
           if r < 0 then
               r = r + 256
           end
           message_bytes[result_index] = r
       end
       result_bytes[result_index] = result_byte
   end
   for result_index = 1, #result_bytes do
       result_characters[result_index] = string.char(result_bytes[result_index])
   end
   return table.concat(result_characters)
end

local function b64enc(data)
   return ((data:gsub(".", function(x)
       local r, chars = "", x:byte()
       for i = 8, 1, -1 do
           r = r .. (chars % 2 ^ i - chars % 2 ^ (i - 1) > 0 and "1" or "0")
       end
       return r
   end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
       if (#x < 6) then
           return ""
       end
       local c = 0
       for i = 1, 6 do
           c = c + (x:sub(i, i) == "1" and 2 ^ (6 - i) or 0)
       end
       return chars:sub(c + 1, c + 1)
   end) .. ({
       "",
       "==",
       "="
   })[#data % 3 + 1])
end

local function b64dec(data)
   data = string.gsub(data, "[^" .. chars .. "=]", "")
   return (data:gsub(".", function(x)
       if (x == "=") then
           return ""
       end
       local r, f = "", (chars:find(x) - 1)
       for i = 6, 1, -1 do
           r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and "1" or "0")
       end
       return r
   end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
       if (#x ~= 8) then
           return ""
       end
       local c = 0
       for i = 1, 8 do
           c = c + (x:sub(i, i) == "1" and 2 ^ (8 - i) or 0)
       end
       return string.char(c)
   end))
end

local function httpreq(tab)
   assert(type(tab) == "table", "bad argument #1 to 'http_request' (table expected, got " .. tab == nil and "no value" or typeof(tab) .. ")")
   assert(true == pcall(rawget, tab, "Url") and type(tab.Url) == "string", "Invalid or no 'Url' field specified in http_request table")
   local result = game:HttpGet(tab.Url)
   local res = {
       Cookies = {},
       StatusMessage = type(result) == "string" and #result > 0 and "OK" or 0,
       Success = type(result) == "string" and #result > 0 and true or false,
       Body = result,
       Headers = {}
   }
end


-- ProtoSmasher
if PROTOSMASHER_LOADED and Input and getgenv and not (secret500 and saveplace and firesignal and setrawmetatable and getregistry and getreg and getupvalues and messageboxasync and messagebox and fireclickdetector and run_secure_function and is_beta and firetouchinterest and getconstants and setconstant and getconstant and dumpstring and getscripts and setupvalue and getupvalue and unlockmodulescript and hookfunction and is_lclosure and isluau and newcclosure and checkcaller and is_synapse_function and getloadedmodules and getnilinstances and getpropvalue and hookfunc and getnamecallmethod and replaceclosure and syn and getgc and elysianexecute and getnspval and Clipboard and isreadonly and setreadonly and islclosure and gethui and keypress and keyrelease and mousescroll and mouse1click and mouse2click and mousemoverel and mouse1press and mouse1release and mouse2press and mouse2release) then
   if not saveplace then
       getgenv().saveplace = saveinstance
   end
   if not secret500 and debug then
       getgenv().secret500 = debug.getupvalues
   end
   if not firesignal then
       getgenv().firesignal = fire_signal
   end
   if not setrawmetatable and debug then
       getgenv().setrawmetatable = debug.setmetatable or setmetatable
   end
   if not getregistry and debug then
       getgenv().getregistry = debug.getregistry
   end
   if not getreg and debug then
       getgenv().getreg = debug.getregistry
   end
   if not getupvalues and debug then
       getgenv().getupvalues = debug.getupvalues
   end
   if not messageboxasync then
       getgenv().messageboxasync = ask_prompt
   end
   if not messagebox then
       getgenv().messagebox = ask_prompt
   end
   if not fireclickdetector then
       getgenv().fireclickdetector = click_detector
   end
   if not run_secure_function then
       getgenv().run_secure_function = pebc_execute
   end
   if not is_beta then
       getgenv().is_beta = retfalse
   end
   if not firetouchinterest then
       getgenv().firetouchinterest = fake_touch
   end
   if not getconstants and debug then
       getgenv().getconstants = debug.getconstants
   end
   if not setconstant and debug then
       getgenv().setconstant = debug.setconstant
   end
   if not getconstant and debug then
       getgenv().getconstant = artificial_getconstant
   end
   if not dumpstring then
       getgenv().dumpstring = string.dump
   end
   if not getscripts then
       getgenv().getscripts = function()
           local scripts = getscriptenvs()
           local new_scripts = {}
           for scr, env in pairs(scripts) do
               table.insert(new_scripts, scr)
           end
           return new_scripts or scripts or {}
       end
   end
   if not setupvalue and debug then
       getgenv().setupvalue = debug.setupvalue
   end
   if not getupvalue and debug then
       getgenv().getupvalue = debug.getupvalue
   end
   if not unlockmodulescript then
       getgenv().unlockmodulescript = unlock_modulescript
   end
   if not hookfunction then
       getgenv().hookfunction = detour_function
   end
   if not is_lclosure then
       getgenv().is_lclosure = is_l_closure
   end
   if not isluau then
       getgenv().isluau = is_luau
   end
   if not newcclosure then
       getgenv().newcclosure = detour_function
   end
   if not checkcaller then
       getgenv().checkcaller = is_protosmasher_caller
   end
   if not is_synapse_function then
       getgenv().is_synapse_function = is_protosmasher_closure
   end
   if not getloadedmodules then
       getgenv().getloadedmodules = get_loaded_modules
   end
   if not getnilinstances then
       getgenv().getnilinstances = get_nil_instances
   end
   if not getpropvalue then
       getgenv().getpropvalue = get_hidden_prop
   end
   if not hookfunc then
       getgenv().hookfunc = detour_function
   end
   if not getnamecallmethod then
       getgenv().getnamecallmethod = get_namecall_method
   end
   if not replaceclosure then
       getgenv().replaceclosure = detour_function
   end
   if not syn and Base64 then
       getgenv().syn = {
           write_clipboard = setclipboard,
           create_secure_function = pebc_create,
           run_secure_function = pebc_load,
           secrun = pebc_execute,
           request = http_request,
           open_web_socket = WebSocket,
           queue_on_teleport = queue_for_teleport,
           crypt = {
               base64 = {
                   encode = Base64.Encode,
                   decode = Base64.Decode
               },
               random = randomstr,
               decrypt = strdec,
               encrypt = strenc
           }
       }
       getgenv().syn.crypto = getgenv().syn.crypt
   end
   if not getgc then
       getgenv().getgc = get_gc_objects
   end
   if not elysianexecute then
       getgenv().elysianexecute = proto_execute
   end
   if not getnspval then
       getgenv().getnspval = get_hidden_prop
   end
   if not Clipboard then
       getgenv().Clipboard = {
           set = setclipboard
       }
   end
   if not isreadonly then
       getgenv().isreadonly = is_readonly
   end
   if not setreadonly then
       getgenv().setreadonly = function(tab, bool)
           assert(tab ~= nil and type(tab) == "table", "bad argument #1 to 'setreadonly' (table expected, got " .. tab == nil and "no value" or typeof(tab) .. ")")
           assert(bool ~= nil and type(bool) == "boolean", "bad argument #2 to 'setreadonly' (boolean expected, got " .. bool == nil and "no value" or typeof(bool) .. ")")
           return bool == true and make_readonly(tab) or make_writeable(tab)
       end
   end
   if not islclosure then
       getgenv().islclosure = is_l_closure
   end
   if not gethui then
       getgenv().gethui = get_hidden_gui
   end
   if not keypress then
       getgenv().keypress = Input.KeyDown
   end
   if not keyrelease then
       getgenv().keyrelease = Input.KeyUp
   end
   if not mousescroll then
       getgenv().mousescroll = Input.ScrollMouse
   end
   if not mouse1click then
       getgenv().mouse1click = Input.LeftClick
   end
   if not mouse2click then
       getgenv().mouse2click = Input.RightClick
   end
   if not mousemoverel then
       getgenv().mousemoverel = Input.MoveMouse
   end
   if not mouse1press then
       getgenv().mouse1press = function()
           return Input.LeftClick(1)
       end
   end
   if not mouse1release then
       getgenv().mouse1release = function()
           return Input.LeftClick(2)
       end
   end
   if not mouse2press then
       getgenv().mouse2press = function()
           return Input.RightClick(1)
       end
   end
   if not mouse2release then
       getgenv().mouse2release = function()
           return Input.RightClick(2)
       end
   end


-- Synapse
elseif syn and getgenv and not (getwally and secret500 and mousemove and saveplace and elysianexecute and getnspval and gethui and getlocals and setlocal and getupvals and setupval and getconsts and setconst and http_request and parse_url and get_calling_script and get_thread_context and getobjects and pebc_execute and pebc_create and pebc_load and unlock_modulescript and getscriptenvs and Clipboard and is_readonly and make_readonly and make_writeable and dump_function and detour_function and get_hidden_gui and get_gc_objects and click_detector and is_l_closure and fake_touch and proto_execute and get_namecall_method and is_luau and get_hidden_prop and ask_prompt and queue_for_teleport and Input and Base64 and WebSocket and MOUSE_CLICK and MOUSE_DOWN and MOUSE_UP and PROTOSMASHER_LOADED) then
if not getwally then
getgenv().wally = gw
end
if not secret500 then
getgenv().secret500 = debug.getupvalues
end
   if not mousemove then
       getgenv().mousemove = mousemoveabs
   end
   if not saveplace then
       getgenv().saveplace = saveinstance
   end
   if not elysianexecute then
       getgenv().elysianexecute = function(str)
           return loadstring(str)()
       end
   end
   if not getnspval then
       getgenv().getnspval = getpropvalue
   end
   if not gethui then
       getgenv().gethui = function()
           return game.CoreGui
       end
   end
   if not getlocals then
       getgenv().getlocals = debug.getlocals
   end
   if not setlocal then
       getgenv().setlocal = debug.setlocal
   end
   if not getupvals then
       getgenv().getupvals = debug.getupvalues
   end
   if not setupval then
       getgenv().setupval = debug.setupvalue
   end
   if not getconsts then
       getgenv().getconsts = debug.getconstants
   end
   if not setconst then
       getgenv().setconst = debug.setconstant
   end
   if not http_request then
       getgenv().http_request = syn.request
   end
   if not parse_url then
       getgenv().parse_url = parseurl
   end
   if not get_calling_script then
       getgenv().get_calling_script = getcallingscript
   end
   if not get_thread_context then
       getgenv().get_thread_context = syn.get_thread_identity
   end
   if not getobjects then
       getgenv().getobjects = function(str)
           return game:GetObjects(str)
       end
   end
   if not pebc_execute then
       getgenv().pebc_execute = syn.secrun
   end
   if not pebc_create then
       getgenv().pebc_create = syn.create_secure_function
   end
   if not pebc_load then
       getgenv().pebc_load = syn.run_secure_function
   end
   if not unlock_modulescript then
       getgenv().unlock_modulescript = unlockmodulescript
   end
   if not getscriptenvs then
       getgenv().getscriptenvs = gsenvs
   end
   if not Clipboard then
       getgenv().Clipboard = {
           set = setclipboard
       }
   end
   if not is_readonly then
       getgenv().is_readonly = isreadonly
   end
   if not make_readonly then
       getgenv().make_readonly = makeread
   end
   if not make_writeable then
       getgenv().make_writeable = makewrite
   end
   if not dump_function then
       getgenv().dump_function = function(fun)
           assert(type(fun) == "string", "bad argument #1 to 'dump_function' (lua function expected, got " .. fun == nil and "no value" or typeof(fun) .. "")
           return dumpstring(string.dump(fun))
       end
   end
   if not detour_function then
       getgenv().detour_function = newcclosure
   end
   if not get_hidden_gui then
       getgenv().get_hidden_gui = function()
           return game.CoreGui
       end
   end
   if not get_gc_objects then
       getgenv().get_gc_objects = getgc
   end
   if not click_detector then
       getgenv().click_detector = fireclickdetector
   end
   if not is_l_closure then
       getgenv().is_l_closure = islclosure
   end
   if not fake_touch then
       getgenv().fake_touch = firetouchinterest
   end
   if not proto_execute then
       getgenv().proto_execute = function(str)
           assert(type(str) == "string", "bad argument #1 to 'proto_execute' (lua string expected, got (" .. str == nil and "no value" or typeof(str) .. ")")
           return loadstring(str)()
       end
   end
   if not get_namecall_method then
       getgenv().get_namecall_method = getnamecallmethod
   end
   if not is_luau then
       getgenv().is_luau = isluau
   end
   if not get_hidden_prop then
       getgenv().get_hidden_prop = getpropvalue
   end
   if not ask_prompt then
       getgenv().ask_prompt = messageboxasync
   end
   if not queue_for_teleport then
       getgenv().queue_for_teleport = queue_on_teleport
   end
   if not Input then
       getgenv().Input = ainput
   end
   if not Base64 then
       getgenv().Base64 = {
           Encode = syn.crypt.base64.encode,
           Decode = syn.crypt.base64.decode
       }
   end
   if not WebSocket then
       getgenv().WebSocket = syn.open_web_socket
   end
   if not MOUSE_CLICK then
       getgenv().MOUSE_CLICK = 0
   end
   if not MOUSE_DOWN then
       getgenv().MOUSE_DOWN = 1
   end
   if not MOUSE_UP then
       getgenv().MOUSE_UP = 2
   end
   if not PROTOSMASHER_LOADED then
       getgenv().PROTOSMASHER_LOADED = true
   end


-- Elysian
elseif elysianexecute and getgenv and not (getwally and secret500 and hookfunc and hookfunction and proto_execute and getconstant and setconstant and getupvalues and getconstants and is_readonly and make_readonly and make_writeable and getregistry and is_luau and isluau and is_l_closure and detour_function and MOUSE_CLICK and MOUSE_DOWN and MOUSE_UP and PROTOSMASHER_LOADED and Input and Base64 and getscriptenvs and getscripts and syn and http_request and parse_url and setclipboard and get_hidden_gui) then
if not getwally then
getgenv().wally = gw
end
if not secret500 then
       getgenv().secret500 = getupvals
   end
if not hookfunc then
       getgenv().hookfunc = newcclosure
   end
   if not hookfunction then
       getgenv().hookfunction = newcclosure
   end
   if not proto_execute then
       getgenv().proto_execute = elysianexecute
   end
   if not getconstant then
       getgenv().getconstant = artificial_getconstant
   end
   if not setconstant then
       getgenv().setconstant = setconst
   end
   if not getupvalues then
       getgenv().getupvalues = getupvals
   end
   if not getconstants then
       getgenv().getconstants = getconsts
   end
   if not is_readonly then
       getgenv().is_readonly = isreadonly
   end
   if not make_readonly then
       getgenv().make_readonly = makeread
   end
   if not make_writeable then
       getgenv().make_writeable = makewrite
   end
   if not getregistry then
       getgenv().getregistry = getreg
   end
   if not is_luau then
       getgenv().is_luau = rettrue
   end
   if not isluau then
       getgenv().isluau = rettrue
   end
   if not is_l_closure then
       getgenv().is_l_closure = islclosure
   end
   if not detour_function then
       getgenv().detour_function = newcclosure
   end
   if not MOUSE_CLICK then
       getgenv().MOUSE_CLICK = 0
   end
   if not MOUSE_DOWN then
       getgenv().MOUSE_DOWN = 1
   end
   if not MOUSE_UP then
       getgenv().MOUSE_UP = 2
   end
   if not PROTOSMASHER_LOADED then
       getgenv().PROTOSMASHER_LOADED = true
   end
   if not Input then
       getgenv().Input = ainput
   end
   if not Base64 then
       getgenv().Base64 = {
           Encode = b64enc,
           Decode = b64dec
       }
   end
   if not getscriptenvs then
       getgenv().getscriptenvs = gsenvs
   end
   if not getscripts then
       getgenv().getscripts = agetscripts
   end
   if not syn then
       getgenv().syn = {
           write_clipboard = Clipboard.set,
           create_secure_function = loadstring,
           request = httpreq,
           crypt = {
               base64 = {
                   encode = b64enc,
                   decode = b64dec
               },
               random = randomstr,
               decrypt = strdec,
               encrypt = strenc
           }
       }
       getgenv().syn.crypto = getgenv().syn.crypt
   end
   if not http_request then
       getgenv().http_request = httpreq
   end
   if not parse_url then
       getgenv().parse_url = parseurl
   end
   if not setclipboard then
       getgenv().setclipboard = Clipboard.set
   end
   if not get_hidden_gui then
       getgenv().get_hidden_gui = gethui
   end
end
shared.compatability_version = vers
