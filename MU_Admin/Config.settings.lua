--[[
==================================================================================														  
	Admin Support : MU Developer
	DISCORD : https://discord.gg/9EEHzq5CrU
==================================================================================		
]]	

ConfigCL = {}
ConfigJs = {}

--==================== Config JS ====================--
--เชื่อมรูปกระเป๋า nui://nc_inventory/html/img/items/  ----  nui://esx_inventoryhud/html/img/items/
ConfigJs["JS"] = "nui://nc_inventory/html/img/items/"

--==================== Config Client ====================--

--เชื่อมสกิน
ConfigCL["SetSkin"] = function(data)
    TriggerEvent('esx_skin:openSaveableMenu', source) --ตัวอย่าง
end

--เชื่อมแต่งรถ
ConfigCL["SetVehicle"] = function(data)
    exports.Dv_Hunter_customShop:openByMenuAdmin()
end

--เชื่อมกระเป๋า
ConfigCL["Inventory"] = function(data)
    -- TriggerEvent("esx_inventoryhud:openPlayerInventory", data.playerid, data) 
    -- exports.nc_inventory:SearchInventory(data.playerid, data)
    exports.nc_inventory:SearchInventory(data.playerid, 'superadmin')
end

--เชื่อมเพิ่มสุขภาพผู้เล่น
ConfigCL["SetPedHeal"] = '200' -- เลือดผู้เล่น
ConfigCL["heal"] = function(data)
    exports['MU_Status']:status_set("hunger", 1000000)
    exports['MU_Status']:status_set("stress", 0)
end

--เชื่อมชุบผู้เล่นผู้เล่น
ConfigCL["revive"] = function(data)
    TriggerEvent("esx_ambulancejob:revive")
    TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)
    Wait(1500)
    exports['MU_Status']:status_set("hunger", 200000)
    exports['MU_Status']:status_set("stress", 500000)
end
