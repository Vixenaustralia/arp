resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

author '@vix#6561 / Australian Roleplay'
description 'arp_els'
version '1.0.0'

dependency 'arp_core'

ui_page '/ux/ui.html'

client_scripts {
    '/screen/*.lua',
	
	'vcf.lua',
	'config.lua',
	'client/util.lua',
	'client/client.lua',
	'client/_patternTypes/leds.lua',
	'client/_patternTypes/traf.lua',
	'client/_patternTypes/chp.lua',
	'client/patterns.lua'
}

server_script {
	'vcf.lua',
	'config.lua',
	'server/server.lua',
	'server/xml.lua'
}

shared_script 'shared/*.lua'

files {
    'nui://arp_core/css/*.css',

    '/scripts/ux/*.js',

    '/ux/*.html',

    '/screen/*.lua',
    '*.lua'
}