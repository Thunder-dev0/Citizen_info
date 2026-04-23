fx_version 'cerulean'
game 'gta5'

author 'Thunder'
description 'Citizen Info Display'
version '1.0.0'

-- This tells the game which files to run on the client side
client_script 'client.lua'

-- This tells the game which files to run on the server side
server_script 'server.lua'

-- This tells the game to load your HTML file for the UI
ui_page 'ui/index.html'

-- This "exposes" the UI files so the client can actually see them
files {
    'ui/index.html'
}