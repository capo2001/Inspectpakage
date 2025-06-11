ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem(Config.ItemToUse, function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Trigger client event to start using the item
    TriggerClientEvent('onion_inspect:useItem', source)
end)

RegisterNetEvent('onion_inspect:OnionUsingItem')
AddEventHandler('onion_inspect:OnionUsingItem', function()
    local xPlayer = ESX.GetPlayerFromId(source)

    -- Check if player has the item
    if xPlayer.getInventoryItem(Config.ItemToUse).count > 0 then
        -- Remove the item from the inventory
        xPlayer.removeInventoryItem(Config.ItemToUse, 1)

        -- Loop through each item to be given and add to inventory
        for _, item in pairs(Config.ItemsToGive) do
            xPlayer.addInventoryItem(item.name, item.count)
        end
    end
end)
