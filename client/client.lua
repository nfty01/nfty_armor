ESX          = nil

ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('nfty_armor:armor')
AddEventHandler('nfty_armor:armor', function()

  if GetPedArmour(GetPlayerPed(-1)) == 100 then
    --ESX.ShowNotification("Már viselsz golyóálló mellényt!") \\ HU
    --ESX.ShowNotification("You're already wearing a bulletproof vest!") \\ EN
    exports['nftyNotify']:showNotify("Infó", "Már viselsz golyóálló mellényt!", 5000, 'error')
  else
    SetPedArmour(GetPlayerPed(-1), 0)
    ClearPedBloodDamage(GetPlayerPed(-1))
    ResetPedVisibleDamage(GetPlayerPed(-1))
    ClearPedLastWeaponDamage(GetPlayerPed(-1))
    ResetPedMovementClipset(GetPlayerPed(-1), 0)

    TriggerServerEvent('nfty_armor:armorremove')
    TriggerEvent('skinchanger:getSkin', function(skin)

      if skin.sex == 0 then
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 11,  ['bproof_2'] = 1})
        SetPedArmour(GetPlayerPed(-1), 100)
      else
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 13,  ['bproof_2'] = 1})
        SetPedArmour(GetPlayerPed(-1), 100)
      end

    end)
    --ESX.ShowNotification("Felvettél egy golyóálló mellényt!") \\ HU
    --ESX.ShowNotification("You put on a bulletproof vest!") \\ EN
    exports['nftyNotify']:showNotify("Infó", "Felvettél egy golyóálló mellényt!", 5000, 'success')
  end

end)
