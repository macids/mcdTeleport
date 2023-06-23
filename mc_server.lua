RegisterNetEvent('mcd_tp:goto', function(targetId)
    local playerId = source

    local targetPed = GetPlayerPed(targetId)

    if targetPed <= 0 then
        TriggerClientEvent('chat:addMessage', playerId, {
            args = { ..targetId.. 'doesnt seem to exist',},
        })
        return
    end


    local = targetPos = GetEntityCoords(targetPed)


    TriggerClientEvent('mcd_tp:teleport', playerId, targetPos)
end)