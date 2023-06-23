-- Go to a player

RegisterCommand('goto', function(_, args)
    local targetId = args[1]

    if not targetId then
        TriggerEvent('chat:addMessage',{
            args = { ' This player is not online ',},
        })
        return
    end
    TriggerServerEvent('mcd_tp:goto', targetId)
end)

-- Summon a player

RegisterCommand('summon', function(_, args)
    local targetId = args[1]

    if not targetId then
        TriggerEvent('chat:addMessage', {
            args = { 'This player is not online ',},
        })
        return
    end

    TriggerServerEvent('mcd_tp:summon', targetId)
end)

-- Teleport to a specific location
RegisterNetEvent('mcd_tp:teleport', function(TargetCoordinates)
    local playerPed = PlayerPedId()
    SetEntityCoords(playerPed, TargetCoordinates)

end)