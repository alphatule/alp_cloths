Config = {} 

Config.Core = "qr-core" -- qr-core or another | at the moment qr-core only  DO NOT TOUCH !!!!!!!!!!

Config.MenuPosition = 'top-left' -- 'top-left' or 'top-right' or 'bottom-left' or 'bottom-right'

Config.CommandEnabled = true -- To Enable or Disable command (To create you own code to open the menu)

Config.Command = "clothmenu"



--[[
    Function to open menu in client side
    TriggerEvent("alp_cloths:OpenMenu")

    Function to open menu in server side
    TriggerClientEvent("alp_cloths:OpenMenu", source)
--]]