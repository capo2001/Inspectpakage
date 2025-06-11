ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('onion_inspect:useItem')
AddEventHandler('onion_inspect:useItem', function()
    local playerPed = PlayerPedId()

    -- Überprüfen, ob der Spieler im Fahrzeug ist
    if IsPedInAnyVehicle(playerPed, false) then
        -- Fehlermeldung anzeigen, wenn der Spieler im Fahrzeug ist
		TriggerEvent('a_hud::AddNotification', 'error', 'Verbandskasten', 'Du kannst es im Auto nicht benutzen', 3500)
    else
        -- Zeige die Progressbar für 5 Sekunden
		TriggerEvent('a_hud::StartProgressBar', 5000, 'Öffne Verbandskasten...')

        -- Warte 5 Sekunden (5000 ms)
        Citizen.Wait(5000)

        -- Stoppe die Progressbar
		TriggerEvent('a_hud::StopProgressBar')

        -- Benachrichtigung anzeigen
		TriggerEvent('a_hud::AddNotification', 'success', 'Verbandskasten', 'Du hast ein Verbandskasten geöffnet', 3500)

        -- Sofort den Server benachrichtigen, dass das Item benutzt wurde
        TriggerServerEvent('onion_inspect:OnionUsingItem')
    end
end)
