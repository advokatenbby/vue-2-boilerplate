ESX              = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('vue-2-boilerplate')
AddEventHandler('vue-2-boilerplate', function()

    SetNuiFocus(true, true)

    SendNUIMessage({
        type = "OPEN",
    })
end)


RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
end)

RegisterCommand('open', function()
    TriggerEvent('vue-2-boilerplate')
end)