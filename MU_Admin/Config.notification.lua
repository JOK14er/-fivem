--[[
==================================================================================														  
	Admin Support : MU Developer
	DISCORD : https://discord.gg/9EEHzq5CrU
==================================================================================		
]]	

Config.Notify_Client = function(Massage,Alert)
    TriggerEvent("pNotify:SendNotification", {
        text = Massage,
        type = Alert,
        timeout = 3000,
        layout = "topRight",
        queue = "global"
    })
end


Config.Notify_Server = function(source, Massage, Alert )
    
    TriggerClientEvent("pNotify:SendNotification", source, {
        text = Massage,
        type = Alert,
        timeout = 3000,
        layout = "topRight",
        queue = "global"
    })

end