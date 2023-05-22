fx_version 'cerulean'

game 'gta5'

client_scripts {
    'cl/cl_main.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'sv/sv_main.lua'
}

shared_scripts {
    'config.lua'
}

ui_page 'web/ui.html'

files {
    'web/ui.html',

    'web/js/App.js'
}