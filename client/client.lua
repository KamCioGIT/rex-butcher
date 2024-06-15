local RSGCore = exports['rsg-core']:GetCoreObject()
local SpawnedButcherBilps = {}

--------------------------------------
-- butcher prompts and blips
--------------------------------------
Citizen.CreateThread(function()
    for _,v in pairs(Config.ButcherLocations) do
        if not Config.EnableTarget then
            exports['rsg-core']:createPrompt(v.prompt, v.coords, RSGCore.Shared.Keybinds[Config.KeyBind], Lang:t('client.lang_1')..v.name, {
                type = 'client',
                event = 'rex-butcher:client:openbutcher',
            })
        end
        if v.showblip == true then
            local ButcherBlip = BlipAddForCoords(1664425300, v.coords)
            SetBlipSprite(ButcherBlip, joaat(Config.Blip.blipSprite), true)
            SetBlipScale(ButcherBlip, Config.Blip.blipScale)
            SetBlipName(ButcherBlip, Config.Blip.blipName)
            table.insert(SpawnedButcherBilps, ButcherBlip)
        end
    end
end)

--------------------------------------
-- butcher shop hours system
--------------------------------------
-- open butchers with opening hours
local OpenButchers = function()
    if not Config.AlwaysOpen then
        local hour = GetClockHours()
        if (hour < Config.OpenTime) or (hour >= Config.CloseTime) and not Config.AlwaysOpen then
            lib.notify({
                title = Lang:t('client.lang_2'),
                description = Lang:t('client.lang_3')..Config.OpenTime..Lang:t('client.lang_4'),
                type = 'error',
                icon = 'fa-solid fa-shop',
                iconAnimation = 'shake',
                duration = 7000
            })
            return
        end
    end
    TriggerEvent('rex-butcher:client:mainmenu')
end

--------------------------------------
-- get butchers hours function
--------------------------------------
local GetButcherHours = function()
    local hour = GetClockHours()
    if not Config.AlwaysOpen then
        if (hour < Config.OpenTime) or (hour >= Config.CloseTime) then
            for k, v in pairs(SpawnedButcherBilps) do
                BlipAddModifier(v, joaat('BLIP_MODIFIER_MP_COLOR_2'))
            end
        else
            for k, v in pairs(SpawnedButcherBilps) do
                BlipAddModifier(v, joaat('BLIP_MODIFIER_MP_COLOR_8'))
            end
        end
    else
        for k, v in pairs(SpawnedButcherBilps) do
            BlipAddModifier(v, joaat('BLIP_MODIFIER_MP_COLOR_8'))
        end
    end
end

--------------------------------------
-- get butchers hours on player loading
--------------------------------------
RegisterNetEvent('RSGCore:Client:OnPlayerLoaded', function()
    GetButcherHours()
end)

---------------------------------
-- update butchers hours every min
---------------------------------
CreateThread(function()
    while true do
        GetButcherHours()
        Wait(60000) -- every min
    end       
end)

AddEventHandler('rex-butcher:client:openbutcher', function()
    OpenButchers()
end)

--------------------------------------
-- butcher main menu
--------------------------------------
RegisterNetEvent('rex-butcher:client:mainmenu', function()
    lib.registerContext(
        {
            id = 'butcher_menu',
            title = Lang:t('client.lang_5'),
            position = 'top-right',
            options = {
                {
                    title = Lang:t('client.lang_6'),
                    description = Lang:t('client.lang_7'),
                    icon = 'fas fa-paw',
                    event = 'rex-butcher:client:sellanimal',
                },
                {
                    title = Lang:t('client.lang_8'),
                    description = Lang:t('client.lang_9'),
                    icon = 'fas fa-shopping-basket',
                    event = 'rex-butcher:client:OpenButcherShop',
                },
            }
        }
    )
    lib.showContext('butcher_menu')
end)

--------------------------------------
-- sell animals
--------------------------------------
RegisterNetEvent('rex-butcher:client:sellanimal', function()

    local holding = GetFirstEntityPedIsCarrying(cache.ped)
    local model = GetEntityModel(holding)
    local quality = GetPedQuality(holding)

    if holding ~= false then
        for i = 1, #Config.Animal do
            if model == Config.Animal[i].model then
                LocalPlayer.state:set("inv_busy", true, true) -- lock inventory
                local rewardmoney = Config.Animal[i].rewardmoney
                local rewarditem = Config.Animal[i].rewarditem
                local name = Config.Animal[i].name

                if lib.progressBar({
                    duration = Config.SellTime,
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = false,
                    disableControl = true,
                    disable = {
                        move = true,
                        mouse = true,
                    },
                    label = Lang:t('client.lang_12') .. name,
                }) then
                    local deleted = DeleteThis(holding)
                    if deleted then
                        if quality == false then
                            TriggerServerEvent('rex-butcher:server:reward', rewardmoney, rewarditem, 'poor', name) -- poor quality reward
                        end
                        if quality == 0 then
                            TriggerServerEvent('rex-butcher:server:reward', rewardmoney, rewarditem, 'poor', name) -- poor quality reward
                        end
                        if quality == 1 then
                            TriggerServerEvent('rex-butcher:server:reward', rewardmoney, rewarditem, 'good', name) -- good quality reward
                        end
                        if quality == 2 then
                            TriggerServerEvent('rex-butcher:server:reward', rewardmoney, rewarditem, 'perfect', name) -- perfect quality reward
                        end
                        if quality == -1 then
                            TriggerServerEvent('rex-butcher:server:reward', rewardmoney, rewarditem, 'perfect', name) -- perfect quality reward
                        end
                    else
                        lib.notify({ title = Lang:t('client.lang_13'), type = 'error', duration = 7000 })
                    end
                end
                LocalPlayer.state:set("inv_busy", false, true) -- unlock inventory
            end
        end
    else
        lib.notify({ title = Lang:t('client.lang_10'), description = Lang:t('client.lang_11'), type = 'error', duration = 5000 })
    end
end)

--------------------------------------
-- delete holding
--------------------------------------
function DeleteThis(holding)
    NetworkRequestControlOfEntity(holding)
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    local entitycheck = GetFirstEntityPedIsCarrying(cache.ped)
    local holdingcheck = GetPedType(entitycheck)
    if holdingcheck == 0 then
        return true
    else
        return false
    end
end

--------------------------------------
-- butcher shop
--------------------------------------
RegisterNetEvent('rex-butcher:client:OpenButcherShop', function()
    local ShopItems = {}
    ShopItems.label = Lang:t('client.lang_14')
    ShopItems.items = Config.ButcherShop
    ShopItems.slots = #Config.ButcherShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "ButcherShop_"..math.random(1, 99), ShopItems)
end)

--  0: "PED_QUALITY_LOW"
--  1: "PED_QUALITY_MEDIUM"
--  2: "PED_QUALITY_HIGH"
-- -1: you should interpret as "PED_QUALITY_HIGH"
