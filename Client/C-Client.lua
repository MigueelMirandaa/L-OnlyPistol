-- RegisterCommand('ffa', function()
--     UnirseFFA()
-- end)

RegisterCommand('salirffa', function()
    SalirFFA()
end)

function SalirFFA()
    if Config.Inventory == 'lockser_inventory' then
        exports.lockserinventory:ToggleLockInventory()
	elseif Config.Inventory == 'ox_inventory' then
        exports.ox_inventory:weaponWheel(false)
    end

    ESX.TriggerServerCallback('ffa:setdimension', function(resultado)
        if resultado then
            ESX.ShowNotification('Has salido correctamente del FFA.')
            DeleteAllWeapons()
            SetEntityCoords(PlayerPedId(), Config.SalidaCoords)
        else
            ESX.ShowNotification('Error al salir del FFA.')
        end
    end, Config.DefaultDimenion)
end

function UnirseFFA()
    if Config.Inventory == 'lockser_inventory' then
        exports.lockserinventory:ToggleLockInventory()
	elseif Config.Inventory == 'ox_inventory' then
		exports.ox_inventory:weaponWheel(true)
	end
	
    ESX.TriggerServerCallback('ffa:setdimension', function(resultado)
        if resultado then
            ESX.ShowNotification('Te has unido correctamente al FFA.')
            TriggerEvent('FFA:JoinOrRespawn')
        else
            ESX.ShowNotification('Error al unirse al FFA.')
        end
    end, Config.FFADimension)
end
exports('UnirseFFA', UnirseFFA)

RegisterNetEvent('FFA:JoinOrRespawn', function()
    RemoveAllPedWeapons(PlayerPedId(), true)
    Wait(500)
    GivePistolLoadout()
    SetCurrentPedWeapon(PlayerPedId(), GetHashKey(Config.Weapons[1]), true)
    SetEntityCoords(PlayerPedId(), Config.RespawnCoords[math.random(1, #Config.RespawnCoords)])
    Attachs()
end)

function GivePistolLoadout()
    for i = 1, #Config.Weapons do
        GiveWeaponToPed(PlayerPedId(), GetHashKey(Config.Weapons[i]), 999, false, true)
    end
end

function DeleteAllWeapons()
    RemoveAllPedWeapons(PlayerPedId(), true)
end

function Attachs()
    local ped = PlayerPedId()
		local arma = GetSelectedPedWeapon(ped)
		if GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_PISTOL_MK2") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_PI_RAIL"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_PI_COMP"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_MACHINEPISTOL") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02	"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_SMG_MK2") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_SMALL_SMG_MK2"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_SMG_MK2_CLIP_02"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("weapon_combatpdw") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_AR_AFGRIP"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_SMALL"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_PUMPSHOTGUN") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SR_SUPP"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_SMG") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_PI_SUPP"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") or GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SIGHTS"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CLIP_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_MUZZLE_06"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_MUZZLE_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_AR_SUPP_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_MUZZLE_03"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_AR_BARREL_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_MUZZLE_04"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_CARBINERIFLE") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_AR_AFGRIP"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_AR_AFGRIP"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("weapon_snspistol_mk2") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_PI_SUPP_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_IND_01_SLIDE"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_CARBINERIFLE_MK2_CLIP_02"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_MUZZLE_07"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_MUZZLE_04"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_HEAVYPISTOL") or GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_COMBATPISTOL") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_AT_PI_FLSH"))
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))
		elseif GetSelectedPedWeapon(ped) == GetHashKey("WEAPON_APPISTOL") then
			GiveWeaponComponentToPed(ped,arma,GetHashKey("COMPONENT_APPISTOL_CLIP_02"))
		end
    end