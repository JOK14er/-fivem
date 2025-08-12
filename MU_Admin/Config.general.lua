--[[
==================================================================================														  
	Admin Support : MU Developer
	DISCORD : https://discord.gg/9EEHzq5CrU
==================================================================================		
]]	

Config = {}
Config.Keys = {["ESC"] = 322,["F1"] = 288,["F2"] = 289,["F3"] = 170,["F5"] = 166,["F6"] = 167,["F7"] = 168,["F8"] = 169,["F9"] = 56,["F10"] = 57,["~"] = 243,["1"] = 157,["2"] = 158,["3"] = 160,["4"] = 164,["5"] = 165,["6"] = 159,["7"] = 161,["8"] = 162,["9"] = 163,["-"] = 84,["="] = 83,["BACKSPACE"] = 177,["TAB"] = 37,["Q"] = 44,["W"] = 32,["E"] = 38,["R"] = 45,["T"] = 245,["Y"] = 246,["U"] = 303,["P"] = 199,["["] = 39,["]"] = 40,["ENTER"] = 18,["CAPS"] = 137,["A"] = 34,["S"] = 8,["D"] = 9,["F"] = 23,["G"] = 47,["H"] = 74,["K"] = 311,["L"] = 182,["LEFTSHIFT"] = 21,["Z"] = 20,["X"] = 73,["C"] = 26,["V"] = 0,["B"] = 29,["N"] = 249,["M"] = 244,[","] = 82,["."] = 81,["LEFTCTRL"] = 36,["LEFTALT"] = 19,["SPACE"] = 22,["RIGHTCTRL"] = 70,["HOME"] = 213,["PAGEUP"] = 10,["PAGEDOWN"] = 11,["DELETE"] = 178,["LEFT"] = 174,["RIGHT"] = 175,["TOP"] = 27,["DOWN"] = 173,["NENTER"] = 201,["N4"] = 108,["N5"] = 60,["N6"] = 107,["N+"] = 96,["N-"] = 97,["N7"] = 117,["N8"] = 61,["N9"] = 118
}

Config.CoreDefineTrigger = "esx:getSharedObject" -- หากมีการเปลี่ยน esx:getSharedObject ให้แก้ไขตรงนี้ หากไม่ได้กำหนดหรือเว้นว่าง "" หรือใส่ nil ไว้ จะใช้งานในส่วนของ Config.CoreExport แทน
Config.CoreExport = function()
    return exports['es_extended']:getSharedObject()
    -- [   ESX   ] -- return exports['es_extended']:getSharedObject()
end

Config.EventESX = {
    Skin = 'skinchanger:loadSkin',
    LoadedPlayer = 'esx:playerLoaded',
    DroppedPlayer = 'esx:playerDropped',
}

--การอัพเดทBlip
-- once every 5 seconds | during 256-1024 players
-- once every 4 seconds | during 128-256 players
-- once every 3 seconds | during 96-128 players
-- once every 2 seconds | during 64-96 players

---------------- ตั้งค่า ทั่วไป---------------------------------
-----------------------------------------------------------------

Config.SettingSystem = {
    KeyOpen = 'HOME',  --เมนู HOME
    CommandOpen = 'admin',
    WeatherandBlackOut = true -- ระบบอากาศและปิดไฟของเมือง
}
-----------------------------------------------------------------
-----------------------------------------------------------------


---------------- ตั้งค่า Noclip---------------------------------
-----------------------------------------------------------------
Config.Noclip = {
    CommandNoclip = 'Noclip',
    NoclipKey = 'PAGEUP',
    { text = 'slow' , speed = 0.1},
    { text = 'normal' , speed = 0.5},
    { text = 'fast' , speed = 3},
    { text = 'super' , speed = 10.5},
    { text = 'superfast' , speed = 15},
}
-----------------------------------------------------------------
-----------------------------------------------------------------


---------------- ตั้งค่า โชว์ชื่อบนหัว---------------------------------
-----------------------------------------------------------------
-- Config.SettingDisplayOnlyAdmin = {  -- กำหนดชื่อบนหัว
--     Distance = 20.0,  -- ระยะห่าง
--     DrawText = true,  -- ข้อความบนหัว
--     Scale = 1.0,  -- ขนาดข้อความ
--     Health = true -- โชว์เลือก
-- }
Config.SettingDisplayOnlyAdmin = {
    Radius   = 40,     
    TagHPBar = true, 
    TagName  = true,  
    TagAudio = true,  
    Command = 'name_name',
    Key = 'F10',
}
-- Config.Radius   = 40        
-- Config.TagHPBar = true   
-- Config.TagName  = true     
-- Config.TagAudio = true      
-- Config.Command = 'name_name'  
-- Config.Key = 'F10'  
-----------------------------------------------------------------
-----------------------------------------------------------------


-------- ต้องเปิด WeatherandBlackOut หากจะใช้งาน ------------------
-----------------------------------------------------------------
Config.DynamicWeather = false -- เปลี่ยนสภาพอากาศอัตโนมัติ.
Config.NewWeatherTimer = 30 -- ระยะเวลาในการเปลี่ยนสภาพอากาศ
Config.Blackout = false  --  ตั้งค่าเริ่มต้น เปิด/ปิด ไฟในเมือง
Config.StartWeather = 'EXTRASUNNY' -- สภาพเริ่มต้นเมื่อเปิดเซิฟ
Config.BaseTime = 8 -- เวลาเริ่มต้นเมื่อเปิดเซิฟ
-----------------------------------------------------------------
-----------------------------------------------------------------

Config.Command = {
    HealAllCommand = 'healall',
    HealCommand = 'heal',
    KickAllCommand = 'kickall',
    ReviveAllCommand = 'reviveall',
    FixCommand = 'fix',
    HijCommand = 'hij',
    GotoCommand = 'goto',
    BringCommand = 'bring',
    TpmCommand = 'tpm',
    CopyCommand = 'copy',
    FreezeWeatherCommand = 'freezeweather',
    WeatherCommand = 'weather',
    BlackoutCommand = 'blackout',
    FreezetimeCommand = 'freezetime',
    TimeCommand = 'time',
}