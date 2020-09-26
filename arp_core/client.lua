--[[

    USING FUNCTIONS

        "NOTIFTY(STRING)" WILL OUTPUT TEXT ABOVE RADAR
        "TIP(STRING)" WILL OUTPUT TEXT IN TOP LEFT CORONER OF SCREEN
        "TriggerEvent("chatMessage", '', {R,G,B}, 'STRING')"" WILL OUTPUT TO CHAT BOX

    ADDING MORE MENUS

        1) ADD A NEW LOCAL 'SHOWX', SET TO FALSE
        2) REGISTER A NEW COMMAND
        3) ADD FALSE STATE TO UI CLEAR EVENT
        4) CREATE NEW EVENT
        5) TRIGGER NUI MESSAGE VIA .JS FILE
        6) ADD UI ELEMENTS TO HTML FILE

]]

-- INT VARIABLES
local showui = false
local showhelp = false
local showkeybinds = false

--BASIC FUNCTIONS
function notify(string)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(string)
    DrawNotification(true, false)
end

function tip(string)
    SetTextComponentFormat("STRING")
    AddTextComponentString(string)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

--[[ TEST EVENTS
RegisterNetEvent("testnotify")
AddEventHandler("testnotify", function(value)
    notify("This is a test message of the game notifications function.")
end)

RegisterNetEvent("testtip")
AddEventHandler("testtip", function(value)
    tip("This is a test of the tips function.")
end)

-- TEST COMMANDS
RegisterCommand("test", function()
    Citizen.CreateThread(function()
        TriggerEvent("testnotify", true)
    end)
end)

RegisterCommand("test2", function()
    Citizen.CreateThread(function()
        TriggerEvent("testtip", true)
    end)
end)

RegisterCommand("test3", function()
    Citizen.CreateThread(function()
        TriggerEvent("chatMessage", '', {255,255,255}, 'This is a test of the chat messages function.')
    end)
end)

RegisterCommand('test4', function(source, args, rawCommand)
    local option = args[1]
    local unitid = args[2]
    if option == "police" then
        notify("You are now logged in as police, with unit # " .. unitid)
    else
        notify("Are you sure that's a valid command?")
    end
end) ]]

-- CLIENT COMMANDS
RegisterCommand("c", function()
    Citizen.CreateThread(function()
        if showui then
        TriggerEvent("ui:off", true)
        else
            notify("~r~No UI elements active to clear.")
        end
    end)
end)
RegisterCommand("help", function()
    Citizen.CreateThread(function()
        TriggerEvent("ui:help", true)
    end)
end)
RegisterCommand("keybinds", function()
    Citizen.CreateThread(function()
        TriggerEvent("ui:keybinds", true)
    end)
end)

-- CLIENT EVENTS
RegisterNetEvent("ui:click")
AddEventHandler("ui:click", function(value) 
    PlaySoundFrontend(-1, "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1)
end)

RegisterNetEvent("ui:off")
AddEventHandler("ui:off", function(value) 
    showui = false
    SendNUIMessage({
        type = "ui",
        display = false
    })
end)

RegisterNetEvent("ui:clear")
AddEventHandler("ui:clear", function(value) 
    SendNUIMessage({
        type = "ui",
        clear = true
    })
    showhelp = false
    showkeybinds = false
end)

RegisterNetEvent("ui:on")
AddEventHandler("ui:on", function(value) 
    showui = true
    TriggerEvent("ui:click", true)
    SendNUIMessage({
        type = "ui",
        display = true,
        help = true
    })
end)

RegisterNetEvent("ui:help")
AddEventHandler("ui:help", function(value) 
    if showui and showhelp then
        showui = false
        showhelp = false
        TriggerEvent("ui:click", true)
        SendNUIMessage({
            type = "ui",
            display = false,
            help = false
        })
    elseif (showui == true) and (showhelp == false) then
        TriggerEvent("ui:clear", true)
        showhelp = true
        TriggerEvent("ui:click", true)
        SendNUIMessage({
            type = "ui",
            help = true
        })
    else
        showui = true
        showhelp = true
        TriggerEvent("ui:click", true)
        SendNUIMessage({
            type = "ui",
            display = true,
            help = true
        })
    end
end)


RegisterNetEvent("ui:keybinds")
AddEventHandler("ui:keybinds", function(value) 
    if showui and showkeybinds then
        showui = false
        showkeybinds = false
        TriggerEvent("ui:click", true)
        SendNUIMessage({
            type = "ui",
            display = false,
            keybinds = false
        })
    elseif (showui == true) and (showkeybinds == false) then
        TriggerEvent("ui:clear", true)
        showkeybinds = true
        TriggerEvent("ui:click", true)
        SendNUIMessage({
            type = "ui",
            keybinds = true
        })
    else
        showui = true
        showkeybinds = true
        TriggerEvent("ui:click", true)
        SendNUIMessage({
            type = "ui",
            display = true,
            keybinds = true
        })
    end
end)

--UI CHECKS
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsPauseMenuActive() then
            TriggerEvent('ui:off', true)
        end
        if (IsPauseMenuActive() == false) and (showui == true) then
            DisableControlAction(0, 200, true)
        end
        if (showui == true) and IsDisabledControlJustReleased(0, 200) then
            TriggerEvent('ui:off', true)
            TriggerEvent('ui:clear', true)
        end
    end
end)