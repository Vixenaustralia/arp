fx_version 'bodacious'
games { 'gta5' }

author '@vix#6561 / Australian Roleplay'
description 'arp_pt'
version '1.0.0'

dependency 'arp_core'

ui_page 'ux/ui.html'

client_scripts {
    'client.lua'
}

files {
    'nui://arp_core/css/*.css',

    '/scripts/ux/*.js',

    '/ux/*.html',

    '*.lua'
}