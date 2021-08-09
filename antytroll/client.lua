local currentTags = {}
local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local newtime = 4000

local label1 = "~y~[Anty Troll]  "

local time = 0

local firstSpawn = true

---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999

AddEventHandler('playerSpawned', function()

    TriggerServerEvent('usunczas')

    Citizen.Wait(400)

    if firstSpawn then
        TriggerServerEvent('check')
        firstSpawn = false
    else
        return
    end
end)

AddEventHandler('awdawdawdawd', function()

    szefuv2()

end)

---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999

function szefuv2()
    local timer = 1800 * 10
    local f = timer 

    time = timer / 1000 / 60

    while timer > 0 do
        Wait(60000)
        timer = timer - 60000

        time = timer / 1000 / 60

        if timer == 0 then
            return
        end
    end
end

function StartTimer()

    local timer = 10 * 1800
    szef(true)
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            TriggerServerEvent('d')
        end
    end
end

---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999


function szef()

    local timer = 10 * 1800

    TriggerEvent('awdawdawdawd')

    while timer > 0 do
        Wait(1)
        timer = timer - 1
        local currentPed = PlayerPedId()
        local currentPos = GetEntityCoords(currentPed)

        local cx,cy,cz = table.unpack(currentPos)
        cz = cz + 1.2
        
            local label = label1 .. time .. " MIN"
            local newbieTime = newtime
            local newPlayer = GetPlayerPed(GetPlayerFromServerId(currentPed))
            local newPlayerCoords = GetEntityCoords(newPlayer)
            local x,y,z = table.unpack(newPlayerCoords)
            z = z + 1.2

            local distance = GetDistanceBetweenCoords(vector3(cx,cy,cz), vector3(x,y,z), true)

            if label then
                if GetEntityCoords(currentPed) ~= nil and currentPed == GetPlayerPed(-1) then
                    ESX.Game.Utils.DrawText3D(vector3(x,y,z), string.format(label, GetPlayerName(GetPlayerFromServerId(currentPed))), 0.5)
                else 
                    print('co kolwiek')
                end
            end
            if newbieTime >= 1 then 
                NetworkSetFriendlyFireOption(false)

                DisableControlAction(2, 37, true)
                DisablePlayerFiring(player, true)
                DisableControlAction(0, 106, true)
                DisableControlAction(1, 140, true)
                if IsDisabledControlJustPressed(2, 37) then
                        SetCurrentPedWeapon(player, GetHashKey("WEAPON_UNARMED"),true)
                        ESX.ShowNotification('~r~ANTY TROLL DALEJ TRWA', 'nie mozesz')
                end
                    
                if IsDisabledControlJustPressed(0, 106) then
                        SetCurrentPedWeapon(player, GetHashKey("WEAPON_UNARMED"),true)
                        ESX.ShowNotification('~r~ANTY TROLL DALEJ TRWA', 'nie mozesz')
                end

                if IsDisabledControlJustPressed(1, 140) then
                        SetCurrentPedWeapon(player, GetHashKey("WEAPON_UNARMED"),true)
                        ESX.ShowNotification('~r~ANTY TROLL DALEJ TRWA', 'nie mozesz')
                end
            end
        if timer == 0 then
            return
        end
    end
end

RegisterNetEvent('notpass')
AddEventHandler('notpass', function()
    StartTimer()
end)

---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
---script by ☁szefuncio#9999
