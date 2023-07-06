ESX = nil

ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('nfty_armor:armorremove')
AddEventHandler('nfty_armor:armorremove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('armor', 1)
end) --Ez a rész elveszi tőled az itemet, ha használod ⤴️ \\ This part will take the item away from you if you use it⤴️


ESX.RegisterUsableItem('armor', function(source)
	TriggerClientEvent('nfty_armor:armor', source)
end) --Ez a rész azt csinálja, hogy használni tud az itemet ⤴️ \\ This part does what you can do to use the item!⤴️
