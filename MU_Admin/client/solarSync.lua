local script = GetCurrentResourceName()

if Config.SettingSystem.WeatherandBlackOut then
    CurrentWeather = Config.StartWeather
    local lastWeather, baseTime, timeOffset, timer, freezeTime, blackout = CurrentWeather, Config.BaseTime, 0, 0, false, false

    RegisterNetEvent(script..':updateWeather')
    AddEventHandler(script..':updateWeather', function(NewWeather, newblackout)
        CurrentWeather = NewWeather
        blackout = newblackout
    end)

    Citizen.CreateThread(function()
        while true do
            if lastWeather ~= CurrentWeather then
                lastWeather = CurrentWeather
                SetWeatherTypeOverTime(CurrentWeather, 15.0)
                Citizen.Wait(15000)
            end
            Citizen.Wait(500)
            SetBlackout(blackout)
            ClearOverrideWeather()
            ClearWeatherTypePersist()
            SetWeatherTypePersist(lastWeather)
            SetWeatherTypeNow(lastWeather)
            SetWeatherTypeNowPersist(lastWeather)
            if lastWeather == 'XMAS' then
                SetForceVehicleTrails(true)
                SetForcePedFootstepsTracks(true)
            else
                SetForceVehicleTrails(false)
                SetForcePedFootstepsTracks(false)
            end
        end
    end)

    RegisterNetEvent(script..':updateTime')
    AddEventHandler(script..':updateTime', function(base, offset, freeze)
        freezeTime = freeze
        timeOffset = offset
        baseTime = base
    end)

    Citizen.CreateThread(function()
        local hour = 0
        while true do
            Citizen.Wait(1000)
            local newBaseTime = baseTime
            if GetGameTimer() - 500 > timer then
                newBaseTime = newBaseTime + 0.25
                timer = GetGameTimer()
            end
            if freezeTime then
                timeOffset = timeOffset + baseTime - newBaseTime
            end
            baseTime = newBaseTime
            hour = math.floor(((baseTime+timeOffset)/60)%24)
            NetworkOverrideClockTime(hour, 0, 0)
            local currentTimeString = string.format("%02d:00", hour)
            SendNUIMessage({
                type = 'updateCurrentGameTime',
                time = currentTimeString
            })
        end
    end)
    

    AddEventHandler('playerSpawned', function()
        TriggerServerEvent(script..':requestSync')
    end)
end