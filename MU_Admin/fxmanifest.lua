fx_version 'cerulean'

game 'gta5'

description 'MU Admin Menu'

version '1.0.0'

client_scripts {
	'client/main.lua',
	'client/solarSync.lua'
}

server_scripts {
    'Config.log.lua',
	'@mysql-async/lib/MySQL.lua',
	'server/main.lua',
	'server/solarSync.lua'
}

shared_script {
    'Config.general.lua',
    'Config.settings.lua',
    'Config.notification.lua',
    'Config.locale.lua',
    'Config.perms.lua',
    'Config.vehicle.lua',
    'Config.showImg.lua',
    'Secure.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css',
    'html/img/*.png'

}