local showspeedlimit = true
local speedlimit = 0

RegisterNetEvent("sl:post")
AddEventHandler("sl:post", function(value)
    SendNUIMessage({
        type = "sl",
        speed = speedlimit
    })
end)
RegisterNetEvent("sl:on")
AddEventHandler("sl:on", function(value)
    SendNUIMessage({
        type = "sl",
        slui = true
    })
end)
RegisterNetEvent("sl:off")
AddEventHandler("sl:off", function(value)
    SendNUIMessage({
        type = "sl",
        slui = false
    })
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)

        local mapsize = GetMinimapAnchor()
        local mmx = mapsize.x * 100 .. "%"
        local mmy = mapsize.y * 100 .. "%"
        local mmw = mapsize.width * 100 .. "%"
        local mmh = mapsize.height * 100 .. "%"
        SendNUIMessage({
            type = "mm",
            startx = mmx,
            starty = mmy,
            height = mmh,
            width = mmw
        })

        local playerloc = GetEntityCoords(GetPlayerPed(-1))
        local streethash = GetStreetNameAtCoord(playerloc.x, playerloc.y, playerloc.z)
        street = GetStreetNameFromHashKey(streethash)

    if IsPedInAnyVehicle(GetPlayerPed(-1)) and (IsPauseMenuActive() == false) then
            if street == "Joshua Rd" then
                speedlimit = 100
            elseif street == "East Joshua Road" then
                speedlimit = 100
            elseif street == "Marina Dr" then
                speedlimit = 50
            elseif street == "Alhambra Dr" then
                speedlimit = 50
            elseif street == "Niland Ave" then
                speedlimit = 50
            elseif street == "Zancudo Ave" then
                speedlimit = 50
            elseif street == "Armadillo Ave" then
                speedlimit = 50
            elseif street == "Algonquin Blvd" then
                speedlimit = 50
            elseif street == "Mountain View Dr" then
                speedlimit = 50
            elseif street == "Cholla Springs Ave" then
                speedlimit = 50
            elseif street == "Panorama Dr" then
                speedlimit = 50
            elseif street == "Lesbos Ln" then
                speedlimit = 50
            elseif street == "Calafia Rd" then
                speedlimit = 50
            elseif street == "North Calafia Way" then
                speedlimit = 50
            elseif street == "Cassidy Trail" then
                speedlimit = 50
            elseif street == "Seaview Rd" then
                speedlimit = 50
            elseif street == "Grapeseed Main St" then
                speedlimit = 50
            elseif street == "Grapeseed Ave" then
                speedlimit = 50
            elseif street == "Joad Ln" then
                speedlimit = 50
            elseif street == "Union Rd" then
                speedlimit = 50
            elseif street == "O'Neil Way" then
                speedlimit = 50
            elseif street == "Senora Fwy" then
                speedlimit = 100
            elseif street == "Catfish View" then
                speedlimit = 50
            elseif street == "Great Ocean Hwy" then
                speedlimit = 100
            elseif street == "Paleto Blvd" then
                speedlimit = 50
            elseif street == "Duluoz Ave" then
                speedlimit = 50
            elseif street == "Procopio Dr" then
                speedlimit = 50
            elseif street == "Cascabel Ave" then
                speedlimit = 50
            elseif street == "Procopio Promenade" then
                speedlimit = 50
            elseif street == "Pyrite Ave" then
                speedlimit = 50
            elseif street == "Fort Zancudo Approach Rd" then
                speedlimit = 50
            elseif street == "Barbareno Rd" then
                speedlimit = 50
            elseif street == "Ineseno Road" then
                speedlimit = 50
            elseif street == "West Eclipse Blvd" then
                speedlimit = 50
            elseif street == "Playa Vista" then
                speedlimit = 50
            elseif street == "Bay City Ave" then
                speedlimit = 50
            elseif street == "Del Perro Fwy" then
                speedlimit = 100
            elseif street == "Equality Way" then
                speedlimit = 50
            elseif street == "Red Desert Ave" then
                speedlimit = 50
            elseif street == "Magellan Ave" then
                speedlimit = 50
            elseif street == "Sandcastle Way" then
                speedlimit = 50
            elseif street == "Vespucci Blvd" then
                speedlimit = 50
            elseif street == "Prosperity St" then
                speedlimit = 50
            elseif street == "San Andreas Ave" then
                speedlimit = 50
            elseif street == "North Rockford Dr" then
                speedlimit = 50
            elseif street == "South Rockford Dr" then
                speedlimit = 50
            elseif street == "Marathon Ave" then
                speedlimit = 50
            elseif street == "Boulevard Del Perro" then
                speedlimit = 50
            elseif street == "Cougar Ave" then
                speedlimit = 50
            elseif street == "Liberty St" then
                speedlimit = 50
            elseif street == "Bay City Incline" then
                speedlimit = 50
            elseif street == "Conquistador St" then
                speedlimit = 50
            elseif street == "Cortes St" then
                speedlimit = 50
            elseif street == "Vitus St" then
                speedlimit = 50
            elseif street == "Aguja St" then
                speedlimit = 50
            elseif street == "Goma St" then
                speedlimit = 50
            elseif street == "Melanoma St" then
                speedlimit = 50
            elseif street == "Palomino Ave" then
                speedlimit = 50
            elseif street == "Invention Ct" then
                speedlimit = 50
            elseif street == "Imagination Ct" then
                speedlimit = 50
            elseif street == "Rub St" then
                speedlimit = 50
            elseif street == "Tug St" then
                speedlimit = 50
            elseif street == "Ginger St" then
                speedlimit = 50
            elseif street == "Lindsay Circus" then
                speedlimit = 50
            elseif street == "Calais Ave" then
                speedlimit = 50
            elseif street == "Adam's Apple Blvd" then
                speedlimit = 50
            elseif street == "Alta St" then
                speedlimit = 50
            elseif street == "Integrity Way" then
                speedlimit = 50
            elseif street == "Swiss St" then
                speedlimit = 50
            elseif street == "Strawberry Ave" then
                speedlimit = 50
            elseif street == "Capital Blvd" then
                speedlimit = 50
            elseif street == "Crusade Rd" then
                speedlimit = 50
            elseif street == "Innocence Blvd" then
                speedlimit = 50
            elseif street == "Davis Ave" then
                speedlimit = 50
            elseif street == "Little Bighorn Ave" then
                speedlimit = 50
            elseif street == "Roy Lowenstein Blvd" then
                speedlimit = 50
            elseif street == "Jamestown St" then
                speedlimit = 50
            elseif street == "Carson Ave" then
                speedlimit = 50
            elseif street == "Grove St" then
                speedlimit = 50
            elseif street == "Brouge Ave" then
                speedlimit = 50
            elseif street == "Covenant Ave" then
                speedlimit = 50
            elseif street == "Dutch London St" then
                speedlimit = 50
            elseif street == "Signal St" then
                speedlimit = 50
            elseif street == "Elysian Fields Fwy" then
                speedlimit = 100
            elseif street == "Plaice Pl" then
                speedlimit = 50
            elseif street == "Chum St" then
                speedlimit = 50
            elseif street == "Chupacabra St" then
                speedlimit = 50
            elseif street == "Miriam Turner Overpass" then
                speedlimit = 50
            elseif street == "Autopia Pkwy" then
                speedlimit = 50
            elseif street == "Exceptionalists Way" then
                speedlimit = 50
            elseif street == "La Puerta Fwy" then
                speedlimit = 100
            elseif street == "New Empire Way" then
                speedlimit = 50
            elseif street == "Runway1" then
                speedlimit = 20
            elseif street == "Greenwich Pkwy" then
                speedlimit = 50
            elseif street == "Kortz Dr" then
                speedlimit = 50
            elseif street == "Banham Canyon Dr" then
                speedlimit = 50
            elseif street == "Buen Vino Rd" then
                speedlimit = 50
            elseif street == "Route 68" then
                speedlimit = 100
            elseif street == "Zancudo Grande Valley" then
                speedlimit = 50
            elseif street == "Zancudo Barranca" then
                speedlimit = 50
            elseif street == "Galileo Rd" then
                speedlimit = 50
            elseif street == "Mt Vinewood Dr" then
                speedlimit = 50
            elseif street == "Marlowe Dr" then
                speedlimit = 50
            elseif street == "Milton Rd" then
                speedlimit = 50
            elseif street == "Kimble Hill Dr" then
                speedlimit = 50
            elseif street == "Normandy Dr" then
                speedlimit = 50
            elseif street == "Hillcrest Ave" then
                speedlimit = 50
            elseif street == "Hillcrest Ridge Access Rd" then
                speedlimit = 50
            elseif street == "North Sheldon Ave" then
                speedlimit = 50
            elseif street == "Lake Vinewood Dr" then
                speedlimit = 50
            elseif street == "Lake Vinewood Est" then
                speedlimit = 50
            elseif street == "Baytree Canyon Rd" then
                speedlimit = 50
            elseif street == "North Conker Ave" then
                speedlimit = 50
            elseif street == "Wild Oats Dr" then
                speedlimit = 50
            elseif street == "Whispymound Dr" then
                speedlimit = 50
            elseif street == "Didion Dr" then
                speedlimit = 50
            elseif street == "Cox Way" then
                speedlimit = 50
            elseif street == "Picture Perfect Drive" then
                speedlimit = 50
            elseif street == "South Mo Milton Dr" then
                speedlimit = 50
            elseif street == "Cockingend Dr" then
                speedlimit = 50
            elseif street == "Mad Wayne Thunder Dr" then
                speedlimit = 50
            elseif street == "Hangman Ave" then
                speedlimit = 50
            elseif street == "Dunstable Ln" then
                speedlimit = 50
            elseif street == "Dunstable Dr" then
                speedlimit = 50
            elseif street == "Greenwich Way" then
                speedlimit = 50
            elseif street == "Greenwich Pl" then
                speedlimit = 50
            elseif street == "Hardy Way" then
                speedlimit = 50
            elseif street == "Richman St" then
                speedlimit = 50
            elseif street == "Ace Jones Dr" then
                speedlimit = 50
            elseif street == "Los Santos Freeway" then
                speedlimit = 100
            elseif street == "Senora Rd" then
                speedlimit = 100
            elseif street == "Nowhere Rd" then
                speedlimit = 50
            elseif street == "Smoke Tree Rd" then
                speedlimit = 50
            elseif street == "Cholla Rd" then
                speedlimit = 50
            elseif street == "Peaceful St" then
                speedlimit = 50
            elseif street == "Cat-Claw Ave" then
                speedlimit = 50
            elseif street == "Senora Way" then
                speedlimit = 50
            elseif street == "Palomino Fwy" then
                speedlimit = 100
            elseif street == "Shank St" then
                speedlimit = 50
            elseif street == "Macdonald St" then
                speedlimit = 50
            elseif street == "Route 68 Approach" then
                speedlimit = 100
            elseif street == "Vinewood Park Dr" then
                speedlimit = 50
            elseif street == "Vinewood Blvd" then
                speedlimit = 50
            elseif street == "Mirror Park Blvd" then
                speedlimit = 50
            elseif street == "Glory Way" then
                speedlimit = 50
            elseif street == "Bridge St" then
                speedlimit = 50
            elseif street == "West Mirror Drive" then
                speedlimit = 50
            elseif street == "Nikola Ave" then
                speedlimit = 50
            elseif street == "East Mirror Dr" then
                speedlimit = 50
            elseif street == "Nikola Pl" then
                speedlimit = 50
            elseif street == "Mirror Pl" then
                speedlimit = 50
            elseif street == "El Rancho Blvd" then
                speedlimit = 50
            elseif street == "Olympic Fwy" then
                speedlimit = 100
            elseif street == "Fudge Ln" then
                speedlimit = 50
            elseif street == "Amarillo Vista" then
                speedlimit = 50
            elseif street == "Labor Pl" then
                speedlimit = 50
            elseif street == "El Burro Blvd" then
                speedlimit = 50
            elseif street == "Sustancia Rd" then
                speedlimit = 50
            elseif street == "South Shambles St" then
                speedlimit = 50
            elseif street == "Hanger Way" then
                speedlimit = 50
            elseif street == "Orchardville Ave" then
                speedlimit = 50
            elseif street == "Popular St" then
                speedlimit = 50
            elseif street == "Buccaneer Way" then
                speedlimit = 50
            elseif street == "Abattoir Ave" then
                speedlimit = 50
            elseif street == "Voodoo Place" then
                speedlimit = 50
            elseif street == "Mutiny Rd" then
                speedlimit = 50
            elseif street == "South Arsenal St" then
                speedlimit = 50
            elseif street == "Forum Dr" then
                speedlimit = 50
            elseif street == "Morningwood Blvd" then
                speedlimit = 50
            elseif street == "Dorset Dr" then
                speedlimit = 50
            elseif street == "Caesars Place" then
                speedlimit = 50
            elseif street == "Spanish Ave" then
                speedlimit = 50
            elseif street == "Portola Dr" then
                speedlimit = 50
            elseif street == "Edwood Way" then
                speedlimit = 50
            elseif street == "San Vitus Blvd" then
                speedlimit = 50
            elseif street == "Eclipse Blvd" then
                speedlimit = 50
            elseif street == "Gentry Lane" then
                speedlimit = 50
            elseif street == "Las Lagunas Blvd" then
                speedlimit = 50
            elseif street == "Power St" then
                speedlimit = 50
            elseif street == "Mt Haan Rd" then
                speedlimit = 50
            elseif street == "Elgin Ave" then
                speedlimit = 50
            elseif street == "Hawick Ave" then
                speedlimit = 50
            elseif street == "Meteor St" then
                speedlimit = 50
            elseif street == "Alta Pl" then
                speedlimit = 50
            elseif street == "Occupation Ave" then
                speedlimit = 50
            elseif street == "Carcer Way" then
                speedlimit = 50
            elseif street == "Eastbourne Way" then
                speedlimit = 50
            elseif street == "Rockford Dr" then
                speedlimit = 50
            elseif street == "Abe Milton Pkwy" then
                speedlimit = 50
            elseif street == "Laguna Pl" then
                speedlimit = 50
            elseif street == "Sinners Passage" then
                speedlimit = 50
            elseif street == "Atlee St" then
                speedlimit = 50
            elseif street == "Sinner St" then
                speedlimit = 50
            elseif street == "Supply St" then
                speedlimit = 50
            elseif street == "Amarillo Way" then
                speedlimit = 50
            elseif street == "Tower Way" then
                speedlimit = 50
            elseif street == "Decker St" then
                speedlimit = 50
            elseif street == "Tackle St" then
                speedlimit = 50
            elseif street == "Low Power St" then
                speedlimit = 50
            elseif street == "Clinton Ave" then
                speedlimit = 50
            elseif street == "Fenwell Pl" then
                speedlimit = 50
            elseif street == "Utopia Gardens" then
                speedlimit = 50
            elseif street == "Cavalry Blvd" then
                speedlimit = 50
            elseif street == "South Boulevard Del Perro" then
                speedlimit = 50
            elseif street == "Americano Way" then
                speedlimit = 50
            elseif street == "Sam Austin Dr" then
                speedlimit = 50
            elseif street == "East Galileo Ave" then
                speedlimit = 50
            elseif street == "Galileo Park" then
                speedlimit = 50
            elseif street == "West Galileo Ave" then
                speedlimit = 50
            elseif street == "Tongva Dr" then
                speedlimit = 50
            elseif street == "Zancudo Rd" then
                speedlimit = 50
            elseif street == "Movie Star Way" then
                speedlimit = 50
            elseif street == "Heritage Way" then
                speedlimit = 50
            elseif street == "Perth St" then
                speedlimit = 50
            elseif street == "Chianski Passage" then
                speedlimit = 50
			elseif street == "Lolita Ave" then
				speedlimit = 50
			elseif street == "Meringue Ln" then
				speedlimit = 50
			elseif street == "Strangeways Dr" then
				speedlimit = 50
            else
                speedlimit = 0
            end

            if showspeedlimit == true then
				
				TriggerEvent("sl:on", true)
            	TriggerEvent("sl:post", true)

			end
		else
			TriggerEvent("sl:off", true)
		end
	end
end)