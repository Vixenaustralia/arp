fx_version 'bodacious'
games { 'gta5' }

author '@vix#6561 / Australian Roleplay'
description 'arp_core'
version '1.0.0'

loadscreen '/loadscreen/load.html'

ui_page '/ux/ui.html'

client_scripts {
    '/screen/*.lua',
    'client.lua'
}

files {
    '/css/*.css',

    '/images/logos/*.png',
    '/images/stills/*.jpg',

    '/loadscreen/*.html',

    '/screen/*.lua',

    '/scripts/ux/*.js',
    '/scripts/loadscreen/*.js',

    '/ux/*.html',

    '*.lua'
}