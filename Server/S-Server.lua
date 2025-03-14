ESX.RegisterServerCallback('ffa:setdimension', function(source, cb, dimension)
    local xPlayer = ESX.GetPlayerFromId(source)
    SetPlayerRoutingBucket(source, dimension)
    cb(true)
end)

ESX.RegisterServerCallback('ffa:isindimension', function(source, cb, dimension)
    local xPlayer = ESX.GetPlayerFromId(source)
    local currentdimension = GetPlayerRoutingBucket(source)
    if currentdimension == dimension then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('esx:onPlayerDeath', function(data)
    local xPlayer = ESX.GetPlayerFromId(source)
    local dimension = GetPlayerRoutingBucket(source)
    if dimension == Config.FFADimension then
        
        TriggerClientEvent('esx_ambulancejob:revive', source)
        TriggerClientEvent('FFA:JoinOrRespawn', source)
    end
end)