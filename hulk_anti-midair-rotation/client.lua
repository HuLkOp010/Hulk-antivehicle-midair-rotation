CreateThread(function()
    while true do
        local sleep = 1000
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped) and not IsPedInAnyPlane(ped) and not IsPedInAnyHeli(ped) and not IsPedOnAnyBike(ped) then
            local veh = GetVehiclePedIsIn(ped)
            local air = IsEntityInAir(veh)
            sleep = 100
            if air then
                sleep = 0
                DisableControlAction(0, 59, true)
                DisableControlAction(0, 60, true)
            end
        end
        Wait(sleep)
    end
end)