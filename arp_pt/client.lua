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

-- EVENTS
RegisterNetEvent("bus:wait")
AddEventHandler("bus:wait", function(value)
    notify("~y~Your bus will arrive in 20 seconds, don't leave this area.")
    Wait(18000)
    notify("~g~Your bus has arrived.")
end)

RegisterNetEvent("bus:waitadmin")
AddEventHandler("bus:waitadmin", function(value)
    notify("~y~Your bus will arrive in 3 seconds, don't leave this area.")
    Wait(2000)
    notify("~g~Your bus has arrived.")
end)

local showtt = false

RegisterNetEvent("ui:off")
AddEventHandler("ui:off", function(value) 
    showtt = false
    SendNUIMessage({
        type = "ui",
        display = false,
        bus = false
    })
end)

RegisterNetEvent("bus:timetable")
AddEventHandler("bus:timetable", function(value)
    if showtt == false then
        SendNUIMessage ({
        type = "ui",
        display = true,
        bus = true
        })
        showtt = true
    elseif showtt then
        SendNUIMessage ({
            type = "ui",
            display = false,
            bus = false
        })
        showtt = false
    end
end)

-- BUS STOP COODS
function GetStopCoords7249()
    local Bus = {}
    Bus.x = -529.56
    Bus.y = -266.28
    Bus.z = 34.42
    return Bus
end

function GetStopCoords7161()
    local Bus = {}
    Bus.x = -1416.1
    Bus.y = -88.37
    Bus.z = 51.6
    return Bus
end

function GetStopCoords7179()
    local Bus = {}
    Bus.x = -932.33
    Bus.y = -120.57
    Bus.z = 37.78
    return Bus
end

function GetStopCoords7152()
    local Bus = {}
    Bus.x = -697.97
    Bus.y = -1.92
    Bus.z = 38.18
    return Bus
end

function GetStopCoords7148()
    local Bus = {}
    Bus.x = -508.94
    Bus.y = 23.32
    Bus.z = 44.71
    return Bus
end

function GetStopCoords7048()
    local Bus = {}
    Bus.x = -1303.37
    Bus.y = 240.28
    Bus.z = 59.08
    return Bus
end

function GetStopCoords7170()
    local Bus = {}
    Bus.x = -1529.4
    Bus.y = -464.47
    Bus.z = 35.41
    return Bus
end

function GetStopCoords7212()
    local Bus = {}
    Bus.x = -1167.92
    Bus.y = -397.45
    Bus.z = 35.6
    return Bus
end

function GetStopCoords8072()
    local Bus = {}
    Bus.x = -503.76
    Bus.y = -670.8
    Bus.z = 33.08
    return Bus
end

function GetStopCoords8078()
    local Bus = {}
    Bus.x = -690.74
    Bus.y = -670.73
    Bus.z = 30.9
    return Bus
end

function GetStopCoords8210()
    local Bus = {}
    Bus.x = -1170.07
    Bus.y = -1474.96
    Bus.z = 4.38
    return Bus
end

function GetStopCoords8217()
    local Bus = {}
    Bus.x = -1214.92
    Bus.y = -1220.70
    Bus.z = 7.64
    return Bus
end

function GetStopCoords7216()
    local Bus = {}
    Bus.x = -1414.61
    Bus.y = -567.77
    Bus.z = 30.39
    return Bus
end

function GetStopCoords7218()
    local Bus = {}
    Bus.x = -1474.65
    Bus.y = -633.84
    Bus.z = 30.64
    return Bus
end

function GetStopCoords8077()
    local Bus = {}
    Bus.x = -737.82
    Bus.y = -749.72
    Bus.z = 26.91
    return Bus
end

function GetStopCoords8142()
    local Bus = {}
    Bus.x = -557.01
    Bus.y = -849.04
    Bus.z = 27.7
    return Bus
end

function GetStopCoords8156()
    local Bus = {}
    Bus.x = -248.59
    Bus.y = -887.52
    Bus.z = 30.57
    return Bus
end

function GetStopCoords8064()
    local Bus = {}
    Bus.x = -267.37
    Bus.y = -822.79
    Bus.z = 31.85
    return Bus
end

function GetStopCoords8067()
    local Bus = {}
    Bus.x = -248.7
    Bus.y = -714.56
    Bus.z = 33.52
    return Bus
end

function GetStopCoords8065()
    local Bus = {}
    Bus.x = -176.45
    Bus.y = -820.04
    Bus.z = 31.08
    return Bus
end

function GetStopCoords9007()
    local Bus = {}
    Bus.x = -147.12
    Bus.y = -1966.66
    Bus.z = 22.88
    return Bus
end

function GetStopCoords10025()
    local Bus = {}
    Bus.x = -973.57
    Bus.y = -2751.05
    Bus.z = 13.76
    return Bus
end

function GetStopCoords9131()
    local Bus = {}
    Bus.x = 58.05
    Bus.y = -1539.20
    Bus.z = 29.29
    return Bus
end

function GetStopCoords9091()
    local Bus = {}
    Bus.x = -111.01
    Bus.y = -1686.78
    Bus.z = 29.31
    return Bus
end

function GetStopCoords9186()
    local Bus = {}
    Bus.x = 439.53
    Bus.y = -2033.43
    Bus.z = 23.6
    return Bus
end

function GetStopCoords9157()
    local Bus = {}
    Bus.x = 367.36
    Bus.y = -1785.45
    Bus.z = 29.19
    return Bus
end

function GetStopCoords8175()
    local Bus = {}
    Bus.x = 255.96
    Bus.y = -1118.81
    Bus.z = 29.34
    return Bus
end

function GetStopCoords8177()
    local Bus = {}
    Bus.x = 357.51
    Bus.y = -1067.47
    Bus.z = 29.56
    return Bus
end

function GetStopCoords8036()
    local Bus = {}
    Bus.x = 114.29
    Bus.y = -781.15
    Bus.z = 31.41
    return Bus
end

function GetStopCoords8038()
    local Bus = {}
    Bus.x = 303.57
    Bus.y = -766.37
    Bus.z = 29.31
    return Bus
end

function GetStopCoords7291()
    local Bus = {}
    Bus.x = 938.66
    Bus.y = 155.53
    Bus.z = 80.83
    return Bus
end

function GetStopCoords9259()
    local Bus = {}
    Bus.x = 930.99
    Bus.y = -1749.51
    Bus.z = 31.11
    return Bus
end

function GetStopCoords9260()
    local Bus = {}
    Bus.x = 880.24
    Bus.y = -1769.63
    Bus.z = 30.01
    return Bus
end

function GetStopCoords9232()
    local Bus = {}
    Bus.x = 775.86
    Bus.y = -1755.16
    Bus.z = 29.51
    return Bus
end

function GetStopCoords9235()
    local Bus = {}
    Bus.x = 822.40
    Bus.y = -1639.97
    Bus.z = 30.31
    return Bus
end

function GetStopCoords9242A()
    local Bus = {}
    Bus.x = 785.37
    Bus.y = -1370.7
    Bus.z = 26.64
    return Bus
end

function GetStopCoords9242B()
    local Bus = {}
    Bus.x = 810.26
    Bus.y = -1351.02
    Bus.z = 26.32
    return Bus
end

function GetStopCoords8183()
    local Bus = {}
    Bus.x = 768.24
    Bus.y = -942.85
    Bus.z = 25.72
    return Bus
end

function GetStopCoords8189()
    local Bus = {}
    Bus.x = 788.48
    Bus.y = -775.18
    Bus.z = 26.42
    return Bus
end

function GetStopCoords1030()
    local Bus = {}
    Bus.x = -217.43
    Bus.y = 6176.23
    Bus.z = 31.19
    return Bus
end

function GetStopCoords7090()
    local Bus = {}
    Bus.x = 287.63
    Bus.y = 181.28
    Bus.z = 104.37
    return Bus
end

function GetStopCoords7346()
    local Bus = {}
    Bus.x = 1177.85
    Bus.y = -447.19
    Bus.z = 66.68
    return Bus
end

s7249 = "0"
d7249 = "0"

 s7161 = "0"
 d7161 = "0"

 s7179 = "0"
 d7179 = "0"

 s7152 = "0"
 d7152 = "0"

 s7148 = "0"
 d7148 = "0"

 s7048 = "0"
 d7048 = "0"

 s7170 = "0"
 d7170 = "0"

 s7212 = "0"
 d7212 = "0"

 s8072 = "0"
 d8072 = "0"

 s8078 = "0"
 d8078 = "0"

 s8210 = "0"
 d8210 = "0"

 s8217 = "0"
 d8217 = "0"

 s7216 = "0"
 d7216 = "0"

 s7218 = "0"
 d7218 = "0"

 s8077 = "0"
 d8077 = "0"

 s8142 = "0"
 d8142 = "0"

 s8156 = "0"
 d8156 = "0"

 s8064 = "0"
 d8064 = "0"

 s8067 = "0"
 d8067 = "0"

 s8065 = "0"
 d8065 = "0"

 s9007 = "0"
 d9007 = "0"

 s10025 = "0"
 d10025 = "0"

 s9131 = "0"
 d9131 = "0"

 s9091 = "0"
 d9091 = "0"

 s9186 = "0"
 d9186 = "0"

 s9157 = "0"
 d9157 = "0"

 s8175 = "0"
 d8175 = "0"

 s8177 = "0"
 d8177 = "0"

 s8036 = "0"
 d8036 = "0"

 s8038 = "0"
 d8038 = "0"

 s7291 = "0"
 d7291 = "0"

 s9259 = "0"
 d9259 = "0"

 s9260 = "0"
 d9260 = "0"

 s9232 = "0"
 d9232 = "0"

 s9235 = "0"
 d9235 = "0"

 s9242a = "0"
 d9242a = "0"

 s9242b = "0"
 d9242b = "0"

 s8183 = "0"
 d8183 = "0"

 s8189 = "0"
 d8189 = "0"

 s1030 = "0"
 d1030 = "0"

 s7090 = "0"
 d7090 = "0"

 s7346 = "0"
 d7346 = "0"

 nearstop = false

CreateThread(function()
	while true do

        Wait(0)

        ped = PlayerPedId()
        pedCoords = GetEntityCoords(ped)

        s7249 = GetStopCoords7249()
        d7249 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7249.x, s7249.y, s7249.z)
        
         s7161 = GetStopCoords7161()
         d7161 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7161.x, s7161.y, s7161.z)
        
         s7179 = GetStopCoords7179()
         d7179 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7179.x, s7179.y, s7179.z)
        
         s7152 = GetStopCoords7152()
         d7152 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7152.x, s7152.y, s7152.z)
    
         s7148 = GetStopCoords7148()
         d7148 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7148.x, s7148.y, s7148.z)
        
         s7048 = GetStopCoords7048()
         d7048 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z,  s7048.x, s7048.y, s7048.z)
    
         s7170 = GetStopCoords7170()
         d7170 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7170.x, s7170.y, s7170.z)
    
         s7212 = GetStopCoords7212()
         d7212 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7212.x, s7212.y, s7212.z)
    
         s8072 = GetStopCoords8072()
         d8072 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8072.x, s8072.y, s8072.z)
    
         s8078 = GetStopCoords8078()
         d8078 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8078.x, s8078.y, s8078.z)
    
         s8210 = GetStopCoords8210()
         d8210 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8210.x, s8210.y, s8210.z)
    
         s8217 = GetStopCoords8217()
         d8217 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8217.x, s8217.y, s8217.z)
    
         s7216 = GetStopCoords7216()
         d7216 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7216.x, s7216.y, s7216.z)
    
         s7218 = GetStopCoords7218()
         d7218 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7218.x, s7218.y, s7218.z)
    
         s8077 = GetStopCoords8077()
         d8077 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8077.x, s8077.y, s8077.z)
    
         s8142 = GetStopCoords8142()
         d8142 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8142.x, s8142.y, s8142.z)
    
         s8156 = GetStopCoords8156()
         d8156 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8156.x, s8156.y, s8156.z)
    
         s8064 = GetStopCoords8064()
         d8064 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8064.x, s8064.y, s8064.z)
    
         s8067 = GetStopCoords8067()
         d8067 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8067.x, s8067.y, s8067.z)
    
         s8065 = GetStopCoords8065()
         d8065 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8065.x, s8065.y, s8065.z)
    
         s9007 = GetStopCoords9007()
         d9007 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9007.x, s9007.y, s9007.z)
    
         s10025 = GetStopCoords10025()
         d10025 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s10025.x, s10025.y, s10025.z)
    
         s9131 = GetStopCoords9131()
         d9131 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9131.x, s9131.y, s9131.z)
    
         s9091 = GetStopCoords9091()
         d9091 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9091.x, s9091.y, s9091.z)
    
         s9186 = GetStopCoords9186()
         d9186 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9186.x, s9186.y, s9186.z)
    
         s9157 = GetStopCoords9157()
         d9157 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9157.x, s9157.y, s9157.z)
    
         s8175 = GetStopCoords8175()
         d8175 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8175.x, s8175.y, s8175.z)
    
         s8177 = GetStopCoords8177()
         d8177 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8177.x, s8177.y, s8177.z)
    
         s8036 = GetStopCoords8036()
         d8036 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8036.x, s8036.y, s8036.z)
    
         s8038 = GetStopCoords8038()
         d8038 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8038.x, s8038.y, s8038.z)
    
         s7291 = GetStopCoords7291()
         d7291 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7291.x, s7291.y, s7291.z)
    
         s9259 = GetStopCoords9259()
         d9259 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9259.x, s9259.y, s9259.z)
    
         s9260 = GetStopCoords9260()
         d9260 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9260.x, s9260.y, s9260.z)
    
         s9232 = GetStopCoords9232()
         d9232 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9232.x, s9232.y, s9232.z)
    
         s9235 = GetStopCoords9235()
         d9235 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9235.x, s9235.y, s9235.z)
    
         s9242a = GetStopCoords9242A()
         d9242a = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9242a.x, s9242a.y, s9242a.z)
    
         s9242b = GetStopCoords9242B()
         d9242b = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s9242b.x, s9242b.y, s9242b.z)
    
         s8183 = GetStopCoords8183()
         d8183 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8183.x, s8183.y, s8183.z)
    
         s8189 = GetStopCoords8189()
         d8189 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s8189.x, s8189.y, s8189.z)
    
         s1030 = GetStopCoords1030()
         d1030 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s1030.x, s1030.y, s1030.z)

         s7090 = GetStopCoords7090()
         d7090 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7090.x, s7090.y, s7090.z)

         s7346 = GetStopCoords7346()
         d7346 = GetDistanceBetweenCoords(pedCoords.x, pedCoords.y, pedCoords.z, s7346.x, s7346.y, s7346.z)

        DrawMarker(27, -529.56, -266.28, 34.42, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1416.1, -88.37, 51.6, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -932.33, -120.57, 36.79, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -697.97, -1.92, 37.21, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -508.94, 23.32, 43.73, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1303.37, 240.28, 58.09, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1529.4, -464.47, 34.42, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1167.92, -397.45, 34.63, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -503.76, -670.8, 32.09, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -690.74, -670.73, 29.91, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1170.07, -1474.96, 3.39, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1214.92, -1220.70, 6.68, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1414.61, -567.77, 29.40, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -1474.65, -633.84, 29.67, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -737.82, -749.72, 25.95, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -557.01, -849.04, 26.75, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -248.59, -887.52, 29.60, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -267.37, -822.79, 30.87, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -248.7, -714.56, 32.54, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -176.45, -820.04, 30.1, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -147.12, -1966.66, 21.92, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -973.57, -2751.05, 12.78, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 58.05, -1539.20, 28.31, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -111.01, -1686.78, 28.33, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 439.53, -2033.43, 22.62, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 367.36, -1785.45, 28.22, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 255.96, -1118.81, 28.36, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 357.69, -1067.53, 28.57, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 114.29, -781.15, 30.43, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 303.57, -766.37, 28.33, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 938.66, 155.53, 79.85, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 930.99, -1749.51, 30.13, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 880.24, -1769.63, 29.03, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 775.86, -1755.16, 28.53, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 822.4, -1639.97, 29.35, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 785.47, -1370.69, 25.66, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 810.26, -1351.02, 25.34, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 768.24, -942.85, 24.74, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 788.48, -775.18, 25.44, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, -217.43, 6176.23, 30.24, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 287.63, 181.58, 103.40, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)
        DrawMarker(27, 1177.85, -447.19, 65.70, 0.0, 0.0, 0.0, 0.0, 0, 0.0, 1.5, 1.5, 1.5, 5, 151, 76, 255, false, false, 2, true, nil, false)


        if IsControlJustReleased(1,202) then
            TriggerEvent("ui:off", true)
        end

        if (d7346 <= 2) or (d7090 <=2 ) or (d1030 <= 2) or (d8189 <= 2) or (d8183 <= 2) or (d9242a <= 2) or (d9242b <= 2) or (d9235 <= 2) or (d9232 <= 2) or (d9260 <= 2) or (d9259 <= 2) or (d7291 <= 2) or (d8038 <= 2) or (d8036 <= 2) or (d8177 <= 2) or (d8175 <= 2) or (d9157 <= 2) or (d9186 <= 2) or (d9091 <= 2) or (d7249 <= 2) or (d7161 <= 2) or (d7179 <= 2) or (d7152 <= 2) or (d7148 <= 2) or (d7048 <= 2) or (d7170 <= 2) or (d7212 <= 2) or (d8072 <= 2) or (d8078 <= 2) or (d8210 <= 2) or (d8217 <= 2) or (d7216 <= 2) or (d7218 <= 2) or (d8077 <= 2) or (d8142 <= 2) or (d8156 <= 2) or (d8064 <= 2) or (d8067 <= 2) or (d8065 <= 2) or (d9007 <= 2) or (d10025 <= 2) or (d9131 <= 2) then
            nearstop = true
        else
            nearstop = false
        end

        if nearstop then
            tip("Press ~INPUT_CONTEXT~ to view the Bus Timetable.")
        
            if IsControlJustReleased(1,51) then
                TriggerEvent("bus:timetable", true)
            end

        end

    end
end)


RegisterCommand('bus', function(source, args, rawCommand)
    if nearstop then
        local destination = args[1]
        if destination == "2" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7161.x, s7161.y, s7161.z, false, false, false, true)
            else
                notify("~r~Bus trip cancelled, you're not near the bus stop!")
            end
        elseif destination == "1" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7249.x, s7249.y, s7249.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "3" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7179.x, s7179.y, s7179.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "4" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7152.x, s7152.y, s7152.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "5" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7148.x, s7148.y, s7148.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "6" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7048.x, s7048.y, s7048.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "7" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7170.x, s7170.y, s7170.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "8" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7212.x, s7212.y, s7212.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "9" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8072.x, s8072.y, s8072.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "10" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8078.x, s8078.y, s8078.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "11" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8210.x, s8210.y, s8210.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "12" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8217.x, s8217.y, s8217.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "13" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7216.x, s7216.y, s7216.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "14" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7218.x, s7218.y, s7218.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "15" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8077.x, s8077.y, s8077.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "16" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8142.x, s8142.y, s8142.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "17" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8156.x, s8156.y, s8156.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "18" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8064.x, s8064.y, s8064.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "19" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8067.x, s8067.y, s8067.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "20" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8065.x, s8065.y, s8065.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "21" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9007.x, s9007.y, s9007.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "22" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s10025.x, s10025.y, s10025.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "23" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9131.x, s9131.y, s9131.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "24" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9091.x, s9091.y, s9091.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "25" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9186.x, s9186.y, s9186.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "26" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9157.x, s9157.y, s9157.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "27" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8175.x, s8175.y, s8175.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "28" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8177.x, s8177.y, s8177.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "29" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8036.x, s8036.y, s8036.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "30" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8038.x, s8038.y, s8038.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "31" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s7291.x, s7291.y, s7291.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "32" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9259.x, s9259.y, s9259.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "33" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9260.x, s9260.y, s9260.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "34" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9232.x, s9232.y, s9232.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "35" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9235.x, s9235.y, s9235.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "36" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9242a.x, s9242a.y, s9242a.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "37" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s9242b.x, s9242b.y, s9242b.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "38" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8183.x, s8183.y, s8183.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "39" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s8189.x, s8189.y, s8189.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "40" then
            TriggerEvent("bus:wait", true)
            Wait(20000)
            if nearstop then
            SetEntityCoords(ped, s1030.x, s1030.y, s1030.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
    elseif destination == "41" then
        TriggerEvent("bus:wait", true)
        Wait(20000)
        if nearstop then
        SetEntityCoords(ped, s7090.x, s7090.y, s7090.z, false, false, false, true)
    else
        notify("~r~Bus trip cancelled, you're not near the bus stop!")
    end
elseif destination == "42" then
    TriggerEvent("bus:wait", true)
    Wait(20000)
    if nearstop then
    SetEntityCoords(ped, s7346.x, s7346.y, s7346.z, false, false, false, true)
else
    notify("~r~Bus trip cancelled, you're not near the bus stop!")
end
        else
            notify("~r~There is no bus stop near that address.")
        end
    else
        notify("~r~You're not near a bus stop. Use /bushelp to learn more.")
    end
end)

RegisterCommand('adminbus', function(source, args, rawCommand)
    if nearstop then
        local destination = args[1]
        if destination == "2" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7161.x, s7161.y, s7161.z, false, false, false, true)
            else
                notify("~r~Bus trip cancelled, you're not near the bus stop!")
            end
        elseif destination == "1" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7249.x, s7249.y, s7249.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "3" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7179.x, s7179.y, s7179.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "4" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7152.x, s7152.y, s7152.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "5" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7148.x, s7148.y, s7148.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "6" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7048.x, s7048.y, s7048.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "7" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7170.x, s7170.y, s7170.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "8" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7212.x, s7212.y, s7212.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "9" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8072.x, s8072.y, s8072.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "10" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8078.x, s8078.y, s8078.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "11" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8210.x, s8210.y, s8210.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "12" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8217.x, s8217.y, s8217.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "13" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7216.x, s7216.y, s7216.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "14" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7218.x, s7218.y, s7218.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "15" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8077.x, s8077.y, s8077.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "16" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8142.x, s8142.y, s8142.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "17" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8156.x, s8156.y, s8156.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "18" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8064.x, s8064.y, s8064.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "19" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8067.x, s8067.y, s8067.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "20" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8065.x, s8065.y, s8065.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "21" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9007.x, s9007.y, s9007.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "22" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s10025.x, s10025.y, s10025.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "23" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9131.x, s9131.y, s9131.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "24" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9091.x, s9091.y, s9091.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "25" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9186.x, s9186.y, s9186.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "26" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9157.x, s9157.y, s9157.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "27" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8175.x, s8175.y, s8175.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "28" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8177.x, s8177.y, s8177.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "29" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8036.x, s8036.y, s8036.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "30" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8038.x, s8038.y, s8038.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "31" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s7291.x, s7291.y, s7291.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "32" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9259.x, s9259.y, s9259.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "33" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9260.x, s9260.y, s9260.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "34" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9232.x, s9232.y, s9232.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "35" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9235.x, s9235.y, s9235.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "36" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9242a.x, s9242a.y, s9242a.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "37" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s9242b.x, s9242b.y, s9242b.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "38" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8183.x, s8183.y, s8183.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "39" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s8189.x, s8189.y, s8189.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
        elseif destination == "40" then
            TriggerEvent("bus:waitadmin", true)
            Wait(3000)
            if nearstop then
            SetEntityCoords(ped, s1030.x, s1030.y, s1030.z, false, false, false, true)
        else
            notify("~r~Bus trip cancelled, you're not near the bus stop!")
        end
    elseif destination == "41" then
        TriggerEvent("bus:waitadmin", true)
        Wait(3000)
        if nearstop then
        SetEntityCoords(ped, s7090.x, s7090.y, s7090.z, false, false, false, true)
    else
        notify("~r~Bus trip cancelled, you're not near the bus stop!")
    end
elseif destination == "42" then
    TriggerEvent("bus:waitadmin", true)
    Wait(3000)
    if nearstop then
    SetEntityCoords(ped, s7346.x, s7346.y, s7346.z, false, false, false, true)
else
    notify("~r~Bus trip cancelled, you're not near the bus stop!")
end
        else
            notify("~r~There is no bus stop near that address.")
        end
    else
        notify("~r~You're not near a bus stop. Use /bushelp to learn more.")
    end
end)

local blips = {
    {x = -529.56, y = -266.28, z = 34.42},
    {x = -1416.1, y = -88.37, z = 51.6},
    {x = -932.33, y = -120.57, z = 36.79},
    {x = -697.97, y = -1.92, z = 37.21},
    {x = -508.94, y = 23.32, z = 43.73},
    {x = -1303.37, y = 240.28, z = 58.09},
    {x = -1529.4, y = -464.47, z = 34.42},
    {x = -1167.92, y = -397.45, z = 34.62},
    {x = -503.76, y = -670.8, z = 33.08},
    {x = -690.74, y = -670.73, z = 29.91},
    {x = -1170.07, y = -1474.96, z = 3.39},
    {x = -1214.92, y = -1220.70, z = 6.65},
    {x = -1414.61, y= -567.77, z = 29.40},
    {x = -1474.65, y=-633.84, z=29.65},
    {x = -737.82, y=-749.72, z=25.92},
    {x = -557.01, y= -849.04, z= 26.71},
    {x =-248.59, y=-887.52, z=29.58},
    {x =-267.37, y=-822.79, z=30.87},
    {x = -248.7, y=-714.56, z=32.54},
    {x=-176.45, y=-820.04, z=30.1},
    {x=-147.12, y=-1966.66, z=21.90},
    {x=-973.57, y=-2751.05, z=12.78},
    {x=58.05, y=-1539.20, z=28.31},
    {x=-111.01, y=-1686.78, z=28.33},
    {x=439.53, y=-2033.43, z=22.62},
    {x=367.36, y=-1785.45, z=28.21},
    {x=255.96, y=-1118.81, z=28.36},
    {x=357.69, y=-1067.53, z=28.57},
    {x=114.29, y=-781.15, z=30.43},
    {x=303.57, y=-766.37, z=28.33},
    {x=938.66, y=155.53, z=79.85},
    {x=930.99, y=-1749.51, z=30.13},
    {x=880.24, y=-1769.63, z=29.03},
    {x=775.86, y=-1755.16, z=28.53},
    {x=822.4, y=-1639.97, z=29.33},
    {x=785.47, y=-1370.69, z=25.66},
    {x=810.26, y=-1351.02, z=25.34},
    {x=768.24, y=-942.85, z=24.74},
    {x=788.48, y=-775.18, z=25.44},
    {x=-217.43, y=6176.23, z=30.21},
    {x=287.63, y=181.58, z=103.38},
    {x=1177.85, y=-447.19, z=65.70}
    
 }
     
Citizen.CreateThread(function()
   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, 280)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, 0.6)
     SetBlipColour(info.blip, 2)
     SetBlipAsShortRange(info.blip, true)
     BeginTextCommandSetBlipName("STRING")
     AddTextComponentString("Bus Stop")
     EndTextCommandSetBlipName(info.blip)
   end
end)