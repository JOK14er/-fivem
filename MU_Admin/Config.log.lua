--[[
==================================================================================														  
	Admin Support : MU Developer
	DISCORD : https://discord.gg/9EEHzq5CrU
==================================================================================		
]]	

ConfigSv = {}

--==================== Config Server ====================--

ConfigSv["ReviveAll"] = function(source, target, xPlayer)

	-- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ชุปทั้งเซิฟเวอร์ '
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
    -- TriggerClientEvent('mythic_notify:client:SendAlert', -1, { type = 'success', text = 'ชุบทั้งหมดโดยแอดมิน', length = 2500 })

    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' ใช้ reviveall ```',
        color = 'ffbb33'
    })

end

ConfigSv["HealAll"] = function(source, target, xPlayer)

	-- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ฮีลทั้งเซิฟเวอร์ '
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
    -- TriggerClientEvent('mythic_notify:client:SendAlert', -1, { type = 'success', text = 'ฮีลทั้งหมดโดยแอดมิน', length = 2500 })
    
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' ใช้ healall ```',
        color = 'ffbb33'
    })

end

-- ConfigSv["GodAll"] = function(source, target, xPlayer)

-- 	local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' เสกเป็นอมตะทั้งเซิฟ '
--     TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'เสกเป็นอมตะทั้งเซิฟ', length = 2500 })

-- end

-- ConfigSv["SlayAll"] = function(source, target, xPlayer)

-- 	local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ฆ่าผู้เล่นทั้งหมด '
--     TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'ฆ่าผู้เล่นทั้งเซิฟ', length = 2500 })

-- end

ConfigSv["TeleportAll"] = function(source, target, xPlayer)

	-- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ดึงผู้เล่นทั้งหมด '
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
    -- TriggerClientEvent('mythic_notify:client:SendAlert', -1, { type = 'success', text = 'ท่านถูกดึงโดยแอดมิน', length = 2500 })

    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' used bringall ```',
        color = 'ffbb33'
    })

end

-- --==================== Discord log Zone Player ====================--

-- ConfigSv["Revive"] = function(source, target, xPlayer)

-- 	local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ชุป ให้ '..GetPlayerName(target)..''
--     TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = ' ชุป '..GetPlayerName(target)..'', length = 2500 })

-- end

-- ConfigSv["Heal"] = function(source, target, xPlayer)

-- 	local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ฮีล ให้ '..GetPlayerName(target)..''
--     TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = ' ฮีล '..GetPlayerName(target)..'', length = 2500 })

-- end

-- ConfigSv["Skin"] = function(source, target, xPlayer)

-- 	local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' เปิดเมนูสกิน ให้ '..GetPlayerName(target)..''
--     TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = ' เปิดเมนูสกิน ให้ '..GetPlayerName(target)..'', length = 2500 })

-- end

ConfigSv["Freeze"] = function(source, target, xPlayer)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ล็อคขาผู้เล่น '..GetPlayerName(target)..''
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        --description = '```' .. text .. '```',
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' ได้แช่แข็ง ' ..GetPlayerName(target) .. '```',
        color = 'ffbb33'
    })

end

ConfigSv["God"] = function(source, target, xPlayer)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' เสก ให้' ..GetPlayerName(target)..' เป็นอมตะ '
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' เปิด God  ```',
        color = 'ffbb33'
    })

end

ConfigSv["Slay"] = function(source, target, xPlayer)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ฆ่า ' ..GetPlayerName(target)..''
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' slayed ' .. GetPlayerName(target) .. '```',
        color = 'ffbb33'
    })

end

ConfigSv["GiveWeapon"] = function(source, target, xPlayer, weapon, ammo)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' เพิ่ม ' .. weapon .. ' ให้ '.. target.name .. ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^1')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ได้ให้ ' .. GetPlayerName(target) .. ' อาวุธ ' .. ESX.GetWeaponLabel(weapon) .. ' พร้อมกระสุน ' .. ammo .. ' นัด```',
        color = 'ffbb33'
    })    

end

ConfigSv["GiveItem"] = function(source, target, xPlayer, selectedItem, amount)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' เพิ่ม ' .. selectedItem .. ' จำนวน ' .. ESX.Math.GroupDigits(amount) .. ' ให้ '.. target.name .. ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^5')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ให้ของกับ ' .. GetPlayerName(target) .. ' ไอเทม ' .. ESX.GetItemLabel(selectedItem) .. ' จำนวน ' .. amount .. '```',
        color = 'ffbb33'
    })

end

ConfigSv["GiveCash"] = function(source, target, xPlayer, amount)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' เพิ่ม เงินสด จำนวน ' .. amount .. ' ให้แก่ ผู้เล่นชื่อ ' .. target.name .. ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^2')
    -- TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = ' เพิ่ม เงินสด จำนวน ' .. amount .. ' ให้แก่ ผู้เล่นชื่อ ' .. target.name .. ' โดยเมนู ADMIN ', length = 2500 })

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' เพิ่มเงินให้ ' .. GetPlayerName(target) .. ' จำนวน ' .. amount .. '```',
        color = 'ffbb33'
    })
    
end

ConfigSv["GiveBlackCash"] = function(source, target, xPlayer, amount)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' เพิ่ม เงินแดง จำนวน ' .. amount .. ' ให้แก่ ผู้เล่นชื่อ ' .. target.name .. ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' เพิ่มเงินแดง '..GetPlayerName(target).. ' จำนวน '..amount.. '```',
        color = 'ffbb33'
    })

end

ConfigSv["GiveCashBank"] = function(source, target, xPlayer, amount)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' เพิ่ม เงินธนาคาร จำนวน ' .. amount .. ' ให้แก่บัญชี ผู้เล่นชื่อ ' .. target.name .. ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' เพิ่มเงินธนาคาร '..GetPlayerName(target).. ' จำนวน '..amount.. '```',
        color = 'ffbb33'
    })

end

ConfigSv["Kick"] = function(source, target, xPlayer, reason)
    -- Azael Logs
	-- local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' เตะผู้เล่นชื่อ ' .. target.name .. ' สาเหตุจาก ' .. reason ..  ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^6')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' เตะผู้เล่น ' .. GetPlayerName(target) .. ' ด้วยเหตุผล: ' .. reason .. '```',
        color = 'ffbb33'
    })

end

-- ConfigSv["Ban"] = function(source, target, xPlayer, reason)

-- 	local sendToDiscord = ' แอดมิน '.. xPlayer.name .. ' แบนผู้เล่นชื่อ ' .. target.name .. ' โดยเมนู ADMIN ' 
--     TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^1')
--     TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = ' แบนผู้เล่นชื่อ ' .. target.name .. ' โดยเมนู ADMIN ', length = 2500 })

-- end

ConfigSv["setJob"] = function(source, target, xPlayer, targetPlayer, jobLabel, rankLabel)
    -- Azael Logs
	-- local sendToDiscord = 'Admin '.. xPlayer.name .. ' แต่งตั้งอาชีพให้ ' .. targetPlayer.name .. ' เป็น ' ..jobLabel.. ' ตำแหน่ง ' ..rankLabel..  ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^4')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```'.. GetPlayerName(source) .. ' ตั้งหน่วยงานให้กับ '..GetPlayerName(target)..' เป็น ' ..jobLabel.. ' ('..rankLabel..')```',
        color = 'ffbb33'
    })
end


ConfigSv["Clearinvitem"] = function(source, target, xPlayer, removedItems)

    local removedItemsDescription = ''
    for _, item in ipairs(removedItems) do
        removedItemsDescription = removedItemsDescription .. item.label .. ' จำนวน ' .. item.count .. '\n'
    end
    -- Azael Logs
	-- local sendToDiscord = 'Admin '.. xPlayer.name .. ' ลบไอเทมทั้งหมดจาก ' .. targetPlayer.name .. ' โดยเมนู ADMIN ' 
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, xPlayer.source, '^4')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ลบไอเทมทั้งหมดจาก ' .. GetPlayerName(target) .. ':\n' .. removedItemsDescription .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["ClearinvWeapon"] = function(source, target, xPlayer, removedWeapons)
    local removedWeaponsDescription = table.concat(removedWeapons, '\n')
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ลบอาวุธทั้งหมดจาก ' .. GetPlayerName(target) .. ':\n' .. removedWeaponsDescription .. ''
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ลบอาวุธทั้งหมดจาก ' .. GetPlayerName(target) .. ':\n' .. removedWeaponsDescription .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["Promote"] = function(source, target, xPlayer, group)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ตั้งยศแอดมินกับ '..GetPlayerName(playerID)
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ตั้งยศแอดมินกับ ' .. GetPlayerName(target) .. ' เป็น ' .. group .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["ShowAnn"] = function(source, xPlayer, message)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ประกาศ '..message
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ประกาศ: ' .. message .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["Teleport"] = function(source, target, xPlayer, action)
    local actionDescription = action == "bring" and "ดึงตัวผู้เล่น" or "วาปไปหา"
    
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ' .. actionDescription .. ' ' .. GetPlayerName(target) .. ''
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ' .. actionDescription .. ' ' .. GetPlayerName(target) .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["CommandHealAll"] = function(source, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ healall'
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่ง healall```',
        color = 'ffbb33'
    })
end

ConfigSv["CommandHeal"] = function(source, target, xPlayer)
    
    local targetName = GetPlayerName(target)
    local action = target == source and 'ใช้ heal' or 'ใช้ heal กับ ' .. targetName
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ heal กับ '..GetPlayerName(target)
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ heal '
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ' .. action .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["KickAll"] = function(source, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ kickall'
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')
    
    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่ง kickall```',
        color = 'ffbb33'
    })
end

ConfigSv["CommandReviveAll"] = function(source, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ reviveall'
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่ง reviveall```',
        color = 'ffbb33'
    })
end

ConfigSv["FixVehicle"] = function(source, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ fix'
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่ง fix```',
        color = 'ffbb33'
    })
end

ConfigSv["HijackVehicle"] = function(source, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ hij'
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่ง hij```',
        color = 'ffbb33'
    })
end

ConfigSv["Goto"] = function(source, targetId, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้คำสั่งวาปไปยัง ' ..GetPlayerName(args[1])
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่งวาปไปยัง ' .. GetPlayerName(targetId) .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["Bring"] = function(source, targetId, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ได้ดึงผู้เล่นเข้าหาตัว ' ..GetPlayerName(args[1])
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ได้ดึงผู้เล่นเข้าหาตัว ' .. GetPlayerName(targetId) .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["TeleportToMarker"] = function(source, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = ' แอดมิน ' .. GetPlayerName(source) .. ' ใช้คำสั่ง tpm'
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้คำสั่ง tpm```',
        color = 'ffbb33'
    })
end

ConfigSv["Revive"] = function(source, target, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = ' แอดมิน ' .. xPlayer.name .. ' ชุป ให้ '..GetPlayerName(target)..''
    -- TriggerEvent('azael_discordlogs:sendToDiscord', 'AdminCommands', sendToDiscord, source, '^2')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้ revive กับ ' .. GetPlayerName(target) .. '```',
        color = 'ffbb33'
    })
end

ConfigSv["Heal"] = function(source, target, xPlayer)
    -- Azael Logs
    -- local sendToDiscord = '' .. GetPlayerName(source) .. ' ใช้ heal '..GetPlayerName(target)
    -- TriggerEvent('azael_dc-serverlogs:insertData', 'admin', sendToDiscord, source, '^3')

    -- NC Logs
    exports.nc_discordlogs:Discord({
        webhook = 'admin',
        xPlayer = xPlayer,
        message = '[' .. xPlayer.source .. ']',
        description = '```' .. GetPlayerName(source) .. ' ใช้ heal กับ ' .. GetPlayerName(target) .. '```',
        color = 'ffbb33'
    })
end

-- --============================================================--