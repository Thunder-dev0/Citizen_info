local displayActive = false

function hideUI()
    SendNUIMessage({ action = "hide" })
    SetNuiFocus(false, false) -- Removes cursor and keyboard focus
    displayActive = false
end

RegisterCommand('citizen', function()
    if not displayActive then
        TriggerServerEvent('citizen:getCharacterData')
    else
        hideUI()
    end
end)

-- Updated event to include job and gang data
RegisterNetEvent('citizen:showUI', function(data)
    displayActive = true
    SetNuiFocus(true, true) -- True for mouse, true for keyboard
    SendNUIMessage({
        action = "show",
        name = data.name,
        cid = data.cid,
        dob = data.dob,
        job = data.job,   -- Added this
        gang = data.gang  -- Added this
    })
end)

RegisterNUICallback('close', function(data, cb)
    hideUI()
    cb('ok')
end)