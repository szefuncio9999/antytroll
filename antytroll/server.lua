local ESX = nil
local NewPlayers = {}

-- ESX
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('check')
AddEventHandler('check', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

        MySQL.Async.fetchAll('SELECT * FROM antytroll WHERE name = @name', {
        ['@name'] = GetPlayerName(_source)
        }, function(result)
            print('awdawd')
            local c = tostring(result[1])
            print(result[1])
            if result[1] ~= nil then
                return
            else
                TriggerClientEvent('notpass', _source)
            end
        end)
end)

RegisterServerEvent('d')
AddEventHandler('d', function()

    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(_source)

        MySQL.Async.execute('INSERT INTO antytroll (name) VALUES(@name)', {
            ['@name'] = xPlayer.getName()
        }, function(result)
            return
        end) 
end)

--[[local c = tostring(result[1])
print(result[1])
if result[1] ~= nil then
    return
else--]]