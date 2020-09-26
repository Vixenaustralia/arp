local showui = false

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

RegisterNetEvent("ui:click")
AddEventHandler("ui:click", function(value) 
    PlaySoundFrontend(-1, "5_SEC_WARNING", "HUD_MINI_GAME_SOUNDSET", 1)
end)

RegisterNetEvent("zones:show")
AddEventHandler("zones:show", function(value) 
    showui = true
    TriggerEvent("ui:click", true)
    SendNUIMessage({
        type = "ui",
        display = true
    })
end)

RegisterNetEvent("zones:hide")
AddEventHandler("zones:hide", function(value) 
    showui = false
    SendNUIMessage({
        type = "ui",
        display = false
    })
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        
        local mapsize = GetMinimapAnchor()
        local mmx = mapsize.x * 100 .. "%"
        local mmy = (1 - mapsize.bottom_y + 0.08) * 100 .. "%"
        SendNUIMessage({
            type = "mm",
            x = mmx,
            y = mmy
        })

        local player = GetPlayerPed(-1)
        local playercoords = GetEntityCoords(player)
        local currzone = GetNameOfZone(playercoords.x, playercoords.y, playercoords.z)

        if currzone == "DELSOL" then
            if showui == false then
            TriggerEvent("zones:show", true)
            end
            SendNUIMessage({
                type = "zones",
                zn = "La Pureta",
                influencer = "Armenian Mob"
            })
        elseif currzone == "DAVIS" then
            if showui == false then
                TriggerEvent("zones:show", true)
                end  
                SendNUIMessage({
                    type = "zones",
                    zn = "Davis",
                    influencer = "Ballas"
                })
        elseif currzone == "CHAMH" then
            if showui == false then
                TriggerEvent("zones:show", true)
                end  
                SendNUIMessage({
                    type = "zones",
                    zn = "Chamberlain Hills",
                    influencer = "Families"
                })
            elseif currzone == "KOREAT" then
                if showui == false then
                    TriggerEvent("zones:show", true)
                    end  
                    SendNUIMessage({
                        type = "zones",
                        zn = "Little Seoul",
                        influencer = "Kkangpae and Los Santos Triads"
                    })
                elseif currzone == "SLAB" then
                    if showui == false then
                        TriggerEvent("zones:show", true)
                        end 
                        SendNUIMessage({
                            type = "zones",
                            zn = "Stab City",
                            influencer = "Lost Motorcycle Club"
                        })
                    elseif currzone == "EBURO" then
                        if showui == false then
                            TriggerEvent("zones:show", true)
                            end 
                            SendNUIMessage({
                                type = "zones",
                                zn = "El Burro Heights",
                                influencer = "Marabunta Grande"
                            })
                        elseif currzone == "RANCHO" then
                            if showui == false then
                                TriggerEvent("zones:show", true)
                                end 
                                SendNUIMessage({
                                    type = "zones",
                                    zn = "Rancho",
                                    influencer = "Los Santos Vagos"
                                })
                            elseif currzone == "CYPRE" or currzone == "MURRI" then
                                if showui == false then
                                    TriggerEvent("zones:show", true)
                                    end 
                                    SendNUIMessage({
                                        type = "zones",
                                        zn = "Cypress Flats and Murrieta Heights",
                                        influencer = "Veccarri Crime Family"
                                    })
        else
            TriggerEvent("zones:hide", true)
        end
	end
end)