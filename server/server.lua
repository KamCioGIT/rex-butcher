local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('rex-butcher:server:reward')
AddEventHandler('rex-butcher:server:reward', function(rewardmoney, rewarditem, quality, name)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if Config.Debug == true then
        print("money: "..tostring(rewardmoney))
        print("item: "..tostring(rewarditem))
        print("quality: "..tostring(quality))
    end
    if quality == 'poor' then
        Player.Functions.AddMoney('cash', rewardmoney * Config.PoorMultiplier)
        Player.Functions.AddItem(rewarditem, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem], "add")
        TriggerEvent('rsg-log:server:CreateLog', Config.WebhookName, Config.WebhookTitle, Config.WebhookColour, GetPlayerName(src) .. Lang:t('server.lang_1') .. name .. Lang:t('server.lang_4') .. rewardmoney * Config.PoorMultiplier, false)
    end
    if quality == 'good' then
        Player.Functions.AddMoney('cash', rewardmoney * Config.GoodMultiplier)
        Player.Functions.AddItem(rewarditem, 2)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem], "add")
        TriggerEvent('rsg-log:server:CreateLog', Config.WebhookName, Config.WebhookTitle, Config.WebhookColour, GetPlayerName(src) .. Lang:t('server.lang_2') .. name .. Lang:t('server.lang_4') .. rewardmoney * Config.GoodMultiplier, false)
    end
    if quality == 'perfect' then
        Player.Functions.AddMoney('cash', rewardmoney * Config.PerfectMultiplier)
        Player.Functions.AddItem(rewarditem, 3)
        TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem], "add")
        TriggerEvent('rsg-log:server:CreateLog', Config.WebhookName, Config.WebhookTitle, Config.WebhookColour, GetPlayerName(src) .. Lang:t('server.lang_3') .. name .. Lang:t('server.lang_4') .. rewardmoney * Config.PerfectMultiplier, false)
    end
end)
