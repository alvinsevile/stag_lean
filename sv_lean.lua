local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('stag_lean:server:MakeLean')
AddEventHandler('stag_lean:server:MakeLean', function()
    local Player = QBCore.Functions.GetPlayer(source)
    local hasItem = Player.Functions.GetItemByName('coughsyrup')
    local hasItem2 = Player.Functions.GetItemByName('kurkakola')
    local hasItem3 = Player.Functions.GetItemByName('antihistemine')
    if hasItem and hasItem2 and hasItem3 then
        -- Remove the items required to make lean
        Player.Functions.RemoveItem('coughsyrup', 1)
        Player.Functions.RemoveItem('kurkakola', 1)
        Player.Functions.RemoveItem('antihistemine', 1)
        -- Add the lean item
        Player.Functions.AddItem('lean', 1)
        
        -- Notify the player
        TriggerClientEvent('QBCore:Notify', source, 'Created That Lean!', 'success', 1000)
    else
        TriggerClientEvent('QBCore:Notify', source, 'Not The Right Ingredients', 'error', 1000)
    end
end)

