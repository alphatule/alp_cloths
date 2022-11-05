fx_version 'cerulean'
games { 'rdr3', 'gta5' }
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

lua54 'yes'

author 'Alphatule'
description 'Put and remove your cloths in QR.'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'locale/locale.lua',
    'locale/en.lua', -- Set here your locale
    'config.lua',
}

client_scripts {
    '@qr-clothes/utils/test.lua',
    'client/cl.lua',
}

escrow_ignore {
    'locale/es.lua',
    'locale/en.lua',
    'config.lua',
}


dependencies {
    'qr-clothes', -- Required
    'ox_lib', -- Required.
}