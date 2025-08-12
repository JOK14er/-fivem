local script = GetCurrentResourceName()

if Config.SettingSystem.WeatherandBlackOut then
    admin = {}
    CurrentWeather = Config.StartWeather
    local baseTime, timeOffset, freezeTime, blackout = Config.BaseTime, 0, false, Config.Blackout
    local newWeatherTimer = Config.NewWeatherTimer

    RegisterServerEvent(script..':requestSync')
    AddEventHandler(script..':requestSync', function()
        TriggerClientEvent(script..':updateWeather', -1, CurrentWeather, blackout)
        TriggerClientEvent(script..':updateTime', -1, baseTime, timeOffset, freezeTime)
    end)

    function ShiftToMinute(minute)
        timeOffset = timeOffset - ( ( (baseTime+timeOffset) % 60 ) - minute )
    end

    function ShiftToHour(hour)
        timeOffset = timeOffset - ( ( ((baseTime+timeOffset)/60) % 24 ) - hour ) * 60
    end

    admin.freezeTime = function(source)
        if source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)
            local playerGroup = xPlayer.getGroup()
            if Config.Perms[playerGroup] and Config.Perms[playerGroup].CanFreezeTime then
                freezeTime = not freezeTime
                if freezeTime then
                    Config.Notify_Server(source, Config.locale.FreezeTimeByAdmin, "success")
                else
                    Config.Notify_Server(source, Config.locale.UnFreezeTimeByAdmin, "error")
                end
            else
                Config.Notify_Server(source, Config.locale.Permission, "error")
            end
        end
    end

    admin.Time = function(source, args)
        if source == 0 then
            if tonumber(args[1]) ~= nil then
                local argh = tonumber(args[1])
                if argh < 24 then
                    ShiftToHour(argh)
                else
                    ShiftToHour(0)
                end
                ShiftToMinute(0)
                TriggerEvent(script..':requestSync')
            else
                --print("invalid time")
            end
        elseif source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)
            local playerGroup = xPlayer.getGroup()
            if Config.Perms[playerGroup] and Config.Perms[playerGroup].CanChangeTime then
                if tonumber(args[1]) ~= nil then
                    local argh = tonumber(args[1])
                    if argh < 24 then
                        ShiftToHour(argh)
                    else
                        ShiftToHour(0)
                    end
                    ShiftToMinute(0)
                    local newtime = math.floor(((baseTime+timeOffset)/60)%24) .. ":00"
                    Config.Notify_Server(source, Config.locale.ChangedTimeByAdmin.. ' ' ..newtime, "success")
                    TriggerEvent(script..':requestSync')
                else
                    Config.Notify_Server(source, Config.locale.InvalidTimeByAdmin, "error")
                end
            else
                Config.Notify_Server(source, Config.locale.Permission, "error")
            end
        end
    end

    admin.freezeWeather = function(source)
        if source ~= 0 then
            local xPlayer = ESX.GetPlayerFromId(source)
            local playerGroup = xPlayer.getGroup()
            if Config.Perms[playerGroup] and Config.Perms[playerGroup].CanFreezeWeather then
                Config.DynamicWeather = not Config.DynamicWeather
                if not Config.DynamicWeather then
                    Config.Notify_Server(source, Config.locale.UnFreezeWeatherByAdmin, "error")
                else
                    Config.Notify_Server(source, Config.locale.FreezeWeatherByAdmin, "success")
                end
            else
                Config.Notify_Server(source, Config.locale.Permission, "error")
            end
        end
    end

    admin.Weather = function(source, args, invokeMethod)
        if source == 0 then
            local validWeatherType = false
            if args[1] == nil then
                --print("invalid weather syntax")
                return
            else
                for i,wtype in ipairs(Config.AvailableWeatherTypes) do
                    if wtype == string.upper(args[1]) then
                        validWeatherType = true
                    end
                end
                if validWeatherType then
                    CurrentWeather = string.upper(args[1])
                    newWeatherTimer = 10
                    TriggerEvent(script..':requestSync')
                else
                    --print("weather invalid")
                end
            end
        else
            local xPlayer = ESX.GetPlayerFromId(source)
            local playerGroup = xPlayer.getGroup()
            if Config.Perms[playerGroup] and Config.Perms[playerGroup].CanChangeWeather then
                if invokeMethod == "command" then
                    if args[1] == nil then
                        Config.Notify_Server(source, Config.locale.InvalidWeatherByAdmin, "error")
                    else
                        Config.Notify_Server(source, Config.locale.ChangeWeatherByAdmin .. ' '.. string.lower(args[1]), "success")
                        CurrentWeather = string.upper(args[1])
                        newWeatherTimer = 10
                        TriggerEvent(script..':requestSync')
                    end
                elseif invokeMethod == "gui" then
                    Config.Notify_Server(source, Config.locale.ChangeWeatherByAdmin .. ' '.. string.lower(args), "success")
                    CurrentWeather = args
                    newWeatherTimer = 10
                    TriggerEvent(script..':requestSync')
                end
            else
                Config.Notify_Server(source, Config.locale.Permission, "error")
            end
        end
    end

    admin.Blackout = function(source)
        if source == 0 then
            blackout = not blackout
            if blackout then
                --('blackout enabled')
            else
                --print('blackout disabled')
            end
        else
            local xPlayer = ESX.GetPlayerFromId(source)
            local playerGroup = xPlayer.getGroup()
            if Config.Perms[playerGroup] and Config.Perms[playerGroup].CanBlackout then
                blackout = not blackout
                if blackout then
                    Config.Notify_Server(source, Config.locale.BlackoutByAdmin, "success")
                else
                    Config.Notify_Server(source, Config.locale.UnBlackoutByAdmin, "error")
                end
                TriggerEvent(script..':requestSync')
            end
        end
    end

    RegisterNetEvent(script..':blackoutonline')
    AddEventHandler(script..':blackoutonline', function(onoff)
        blackout = onoff
        TriggerEvent(script..':requestSync')
    end)

    RegisterNetEvent(script..':freezeWeather')
    AddEventHandler(script..':freezeWeather', function(weather)
        admin.freezeWeather(source)
    end)

    RegisterCommand(Config.Command.FreezeWeatherCommand, function(source, args)
        admin.freezeWeather(source)
    end)

    RegisterNetEvent(script..':Weather')
    AddEventHandler(script..':Weather', function(weather)
        admin.Weather(source, weather, "gui")
    end)

    RegisterCommand(Config.Command.WeatherCommand, function(source, args)
        admin.Weather(source, args, "command")
    end)

    RegisterNetEvent(script..':Blackout')
    AddEventHandler(script..':Blackout', function()
        admin.Blackout(source)
    end)

    RegisterCommand(Config.Command.BlackoutCommand, function(source)
        admin.Blackout(source)
    end)

    RegisterNetEvent(script..':freezeTime')
    AddEventHandler(script..':freezeTime', function()
        admin.freezeTime(source)
    end)

    RegisterCommand(Config.Command.FreezetimeCommand, function(source, args)
        admin.freezeTime(source)
    end)

    RegisterNetEvent(script..':Time')
    AddEventHandler(script..':Time', function(args)
        args = split(args, ':')
        admin.Time(source, args)
    end)

    RegisterCommand(Config.Command.TimeCommand, function(source, args, rawCommand)
        admin.Time(source, args)
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            local newBaseTime = os.time(os.date("!*t"))/2 + 360
            if freezeTime then
                timeOffset = timeOffset + baseTime - newBaseTime            
            end
            baseTime = newBaseTime
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(10000)
            TriggerClientEvent(script..':updateTime', -1, baseTime, timeOffset, freezeTime)
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(300000)
            TriggerClientEvent(script..':updateWeather', -1, CurrentWeather, blackout)
        end
    end)

    Citizen.CreateThread(function()
        while true do
            newWeatherTimer = newWeatherTimer - 1
            Citizen.Wait(60000)
            if newWeatherTimer == 0 then
                if Config.DynamicWeather then
                    NextWeatherStage()
                end
                newWeatherTimer = 10
            end
        end
    end)

    function NextWeatherStage()
        if CurrentWeather == "CLEAR" or CurrentWeather == "CLOUDS" or CurrentWeather == "EXTRASUNNY"  then
            local new = math.random(1,2)
            if new == 1 then
                CurrentWeather = "CLEARING"
            else
                CurrentWeather = "OVERCAST"
            end
        elseif CurrentWeather == "CLEARING" or CurrentWeather == "OVERCAST" then
            local new = math.random(1,6)
            if new == 1 then
                if CurrentWeather == "CLEARING" then CurrentWeather = "FOGGY" else CurrentWeather = "RAIN" end
            elseif new == 2 then
                CurrentWeather = "CLOUDS"
            elseif new == 3 then
                CurrentWeather = "CLEAR"
            elseif new == 4 then
                CurrentWeather = "EXTRASUNNY"
            elseif new == 5 then
                CurrentWeather = "SMOG"
            else
                CurrentWeather = "FOGGY"
            end
        elseif CurrentWeather == "THUNDER" or CurrentWeather == "RAIN" then
            CurrentWeather = "CLEARING"
        elseif CurrentWeather == "SMOG" or CurrentWeather == "FOGGY" then
            CurrentWeather = "CLEAR"
        end
        TriggerEvent(script..":requestSync")
    end

    function split(s, delimiter)
        if not s then
            return {}
        end
        result = {}
        for match in (s..delimiter):gmatch("(.-)"..delimiter) do
            table.insert(result, match)
        end
        return result
    end
end

