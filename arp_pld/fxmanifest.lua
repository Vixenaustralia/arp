fx_version 'bodacious'
games { 'gta5' }

author '@vix#6561 / Australian Roleplay'
description 'arp_pld'
version '1.0.0'

dependency 'arp_core'

ui_page '/ux/ui.html'

local postalFile = '/gps/gps.json'

postal_file(postalFile)

client_scripts {
    '/screen/*.lua',
    'client.lua'
}

files {
    '/gps/*.json',

    'nui://arp_core/css/*.css',

    '/scripts/ux/*.js',

    '/ux/*.html',

    '/screen/*.lua',
    '*.lua'
}