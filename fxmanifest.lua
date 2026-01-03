fx_version 'cerulean'
game 'gta5'
lua54 'yes'

NAME 'plenix-fivem-available-service-discord-notifications'
author 'Plenix Network'
description 'Easy Discord Available Service Notification'
version '2.0.0'

client_script 'client/client.lua'
server_script 'server/server.lua'
shared_scripts {
    '@es_extended/imports.lua',   -- For ESX compatibility
    'config.lua',
    'utils.lua'                   -- Include the utility file
}

files {
    'locales/*'
}

-- Optional dependencies for QBCore
optional_dependencies {
    'qb-core'                    -- Make QBCore optional
}
