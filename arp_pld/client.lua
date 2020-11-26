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
local postcode = "9900"

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
		sub = suburb,
		pc = postcode
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
				
				if GetNameOfZone(pos.x, pos.y, pos.z) == "AIRP" then
					postcode = "9901"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ALAMO" then
					postcode = "9958"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ALTA" then
					postcode = "9924"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ARMYB" then
					postcode = "9955"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BANHAMC" then
					postcode = "9933"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BANNING" then
					postcode = "9905"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BEACH" then
					postcode = "9914"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BHAMCA" then
					postcode = "9933"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BRADP" then
					postcode = "9966"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BRADT" then
					postcode = "9966"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "BURTON" then
					postcode = "9926"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CALAFB" then
					postcode = "9962"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CANNY" then
					postcode = "9962"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CCREAK" then
					postcode = "9962"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CHAMH" then
					postcode = "9912"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CHIL" then
					postcode = "9935"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CHU" then
					postcode = "9963"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CMSW" then
					postcode = "9964"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "CYPRE" then
					postcode = "9906"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DAVIS" then
					postcode = "9911"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DELBE" then
					postcode = "9930"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DELPE" then
					postcode = "9930"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DELSOL" then
					postcode = "9904"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DESRT" then
					postcode = "9954"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DOWNT" then
					postcode = "9916"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "DTVINE" then
					postcode = "9925"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "EAST_V" then
					postcode = "9922"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "EBURO" then
					postcode = "9907"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ELGORL" then
					postcode = "9966"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ELYSIAN" then
					postcode = "9902"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "GALFISH" then
					postcode = "9961"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "GOLF" then
					postcode = "9932"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "GRAPES" then
					postcode = "9960"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "GREATC" then
					postcode = "9952"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "HARMO" then
					postcode = "9953"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "HAWICK" then
					postcode = "9923"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "HORS" then
					postcode = "9922"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "HUMLAB" then
					postcode = "9959"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "JAIL" then
					postcode = "9954"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "KOREAT" then
					postcode = "9915"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "LACT" then
					postcode = "9920"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "LAGO" then
					postcode = "9955"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "LDAM" then
					postcode = "9920"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "LEGSQU" then
					postcode = "9916"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "LMESA" then
					postcode = "9919"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "LOSPUER" then
					postcode = "9904"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MIRR" then
					postcode = "9921"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MORN" then
					postcode = "9929"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MOVIE" then
					postcode = "9928"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MTCHIL" then
					postcode = "9961"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MTGORDO" then
					postcode = "9966"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MTJOSE" then
					postcode = "9956"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "MURRI" then
					postcode = "9909"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "NCHU" then
					postcode = "9963"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "NOOSE" then
					postcode = "9908"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "OCEANA" then
					postcode = "9900"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PALCOV" then
					postcode = "9965"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PALETO" then
					postcode = "9965"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PALFOR" then
					postcode = "9965"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PALHIGH" then
					postcode = "9908"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PALMPOW" then
					postcode = "9959"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PBLUFF" then
					postcode = "9931"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PBOX" then
					postcode = "9916"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "PROCOB" then
					postcode = "9965"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "RANCHO" then
					postcode = "9910"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "RGLEN" then
					postcode = "9932"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "RICHM" then
					postcode = "9932"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ROCKF" then
					postcode = "9928"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "RTRAK" then
					postcode = "9954"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "SANAND" then
					postcode = "9900"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "SANCHIA" then
					postcode = "9959"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "SANDY" then
					postcode = "9958"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "SKID" then
					postcode = "9917"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "SLAB" then
					postcode = "9957"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "STAD" then
					postcode = "9904"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "STRAW" then
					postcode = "9913"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "TATAMO" then
					postcode = "9920"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "TERMINA" then
					postcode = "9903"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "TEXTI" then
					postcode = "9918"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "TONGVAH" then
					postcode = "9950"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "TONGVAV" then
					postcode = "9951"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "VCANA" then
					postcode = "9914"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "VESP" then
					postcode = "9914"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "VINE" then
					postcode = "9925"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "WINDF" then
					postcode = "9959"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "WVINE" then
					postcode = "9927"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ZANCUDO" then
					postcode = "9955"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ZP_ORT" then
					postcode = "9903"
				elseif GetNameOfZone(pos.x, pos.y, pos.z) == "ZP_UAR" then
					postcode = "9959"
				else
					postcode = "ERROR"
				end

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
			Wait(3000)
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