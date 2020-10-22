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

-- PLAYER LOC DISPLAY
local directions = { [0] = 'N', [45] = 'NW', [90] = 'W', [135] = 'SW', [180] = 'S', [225] = 'SE', [270] = 'E', [315] = 'NE', [360] = 'N', } 
local showpld = true
local street = "No street found!"
local direction = "N"
local suburb = "San Andreas"

RegisterNetEvent("pld:on")
AddEventHandler("pld:on", function(value)
	showpld = true 
    SendNUIMessage({
        type = "pld",
        pldui = true
    })
end)

RegisterNetEvent("pld:off")
AddEventHandler("pld:off", function(value)
	showpld = false 
    SendNUIMessage({
        type = "pld",
        pldui = false
    })
end)


RegisterNetEvent("pld:location")
AddEventHandler("pld:location", function(value) 
    SendNUIMessage({
        type = "pld",
        dir = direction,
        st = street,
        sub = suburb
    })
end)

RegisterNetEvent("pld:location")
AddEventHandler("pld:location", function(value) 
    SendNUIMessage({
        type = "pld",
        dir = direction,
        st = street,
        sub = suburb
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
        local mmsx = (mapsize.right_x * 100) + 1 .. "%"
        local mmsy = 100 - (mapsize.bottom_y * 100) + 0.5 .. "%"
        SendNUIMessage({
            type = "mm",
            startx = mmx,
            starty = mmy,
            height = mmh,
            width = mmw,
            stopx = mmsx,
            stopy = mmsy
        })

		local ped = GetPlayerPed(-1)
		local directions = { [0] = 'N', [45] = 'NW', [90] = 'W', [135] = 'SW', [180] = 'S', [225] = 'SE', [270] = 'E', [315] = 'NE', [360] = 'N', } 
		
		local pos = GetEntityCoords(PlayerPedId())
		local var1, var2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z, Citizen.ResultAsInteger(), Citizen.ResultAsInteger())
        local current_zone = GetLabelText(GetNameOfZone(pos.x, pos.y, pos.z))
		
		for k,v in pairs(directions)do
			direction = GetEntityHeading(PlayerPedId())
			if(math.abs(direction - k) < 22.5)then
				direction = v
				break
			end
        end
		if IsPauseMenuActive() or IsHudHidden() then
			TriggerEvent("pld:off", true)
		else
			TriggerEvent("pld:on", true)
        	if GetStreetNameFromHashKey(var1) ~= nil then
            	street = GetStreetNameFromHashKey(var1)
            	suburb = current_zone
            	TriggerEvent("pld:location", true)
			end
		end
	end
end)

local raw = LoadResourceFile(GetCurrentResourceName(), GetResourceMetadata(GetCurrentResourceName(), 'postal_file'))
local gps = json.decode(raw)

local nearest = nil
local pBlip = nil

-- thread for nearest and blip
Citizen.CreateThread(
	function()
		while true do
			local x, y = table.unpack(GetEntityCoords(GetPlayerPed(-1)))

			local ndm = -1 -- nearest distance magnitude
			local ni = -1 -- nearest index
			for i, p in ipairs(gps) do
				local dm = (x - p.x) ^ 2 + (y - p.y) ^ 2 -- distance magnitude
				if ndm == -1 or dm < ndm then
					ni = i
					ndm = dm
				end
			end

			--setting the nearest
			if ni ~= -1 then
				local nd = math.sqrt(ndm) -- nearest distance
				nearest = {i = ni, d = nd}
			end

			-- if blip exists
			if pBlip then
				local b = {x = pBlip.p.x, y = pBlip.p.y} -- blip coords
				local dm = (b.x - x) ^ 2 + (b.y - y) ^ 2 -- distance magnitude
				if dm < 100.0 ^ 2 then
					-- delete blip if close
					RemoveBlip(pBlip.hndl)
					pBlip = nil
				end
			end

			Wait(100)
		end
	end
)

local number = "1"

RegisterNetEvent("pld:gps")
AddEventHandler("pld:gps", function(value) 
    SendNUIMessage({
        type = "pos",
        gps = number
    })
end)

Citizen.CreateThread(
	function()
		while true do
			if nearest and not IsHudHidden() then
				number = gps[nearest.i].code
				TriggerEvent("pld:gps", true)
			end
			Wait(0)
		end
	end
)

RegisterCommand(
	'gps',
	function(source, args, raw)
		if #args < 1 then
			if pBlip then
				RemoveBlip(pBlip.hndl)
				pBlip = nil
				notify("~y~GPS waypoint removed.")
			end
			return
		end
		local n = string.upper(args[1])

		local fp = nil
		for _, p in ipairs(gps) do
			if string.upper(p.code) == n then
				fp = p
			end
		end

		if fp then
			if pBlip then
				RemoveBlip(pBlip.hndl)
			end
			pBlip = {hndl = AddBlipForCoord(fp.x, fp.y, 0.0), p = fp}
			SetBlipRoute(pBlip.hndl, true)
			SetBlipSprite(pBlip.hndl, 8)
			SetBlipColour(pBlip.hndl, 2)
			SetBlipRouteColour(pBlip.hndl, 2)
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentSubstringPlayerName("GPS Waypoint")
			EndTextCommandSetBlipName(pBlip.hndl)

			notify("~g~GPS waypoint set to " .. n .. ".")
		else
			notify("~r~GPS waypoint marker does not exist.")
		end
	end
)