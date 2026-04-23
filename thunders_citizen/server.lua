local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('citizen:getCharacterData', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        local charInfo = Player.PlayerData.charinfo
        local job = Player.PlayerData.job
        local gang = Player.PlayerData.gang

        local data = {
            name = charInfo.firstname .. " " .. charInfo.lastname,
            cid = Player.PlayerData.citizenid,
            dob = charInfo.birthdate,
            job = job.label .. " (" .. job.grade.name .. ")",
            gang = gang.label .. " (" .. gang.grade.name .. ")"
        }
        TriggerClientEvent('citizen:showUI', src, data)
    end
end)