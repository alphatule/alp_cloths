-- Declaration QRCORE to use the core.
local QRCore = exports['qr-core']:GetCoreObject()

-- Declaration of variables.
local categoryHashes = {
    ["accessories"] = 2044190614,
    ["armor"] = 1927737204,
    ["badges"] = 1065301383,
    ["belt_buckles"] = 4209578111,
    ["belts"] = 2798728390,
    ["boot_accessories"] = 410165049,
    ["boots"] = 2004797167,
    ["chaps"] = 822561179,
    ["cloaks"] = 1008366797,
    ["coats"] = 3765252302,
    ["coats_closed"] = 107129908,
    ["dresses"] = 2727505819,
    ["eyewear"] = 98860198,
    ["gauntlets"] = 2446236448,
    ["gloves"] = 3938320434,
    ["gunbelt_accs"] = 4048825617,
    ["gunbelts"] = 2603387785,
    ["hats"] = 2569388135,
    ["holsters_left"] = 3065385517,
    ["jewelry_bracelets"] = 2076247897,
    ["jewelry_rings_left"] = 4050263331,
    ["jewelry_rings_right"] = 2053881099,
    ["loadouts"] = 2206760584,
    ["masks"] = 1963323202,
    ["neckties"] = 2056714954,
    ["neckwear"] = 1606587013,
    ["pants"] = 491541130,
    ["ponchos"] = 2937336075,
    ["satchels"] = 2488290598,
    ["shirts_full"] = 539411565,
    ["spats"] = 1363860714,
    ["suspenders"] = 2272931063,
    ["vests"] = 1214179380,
}
local savedPedClothes = {
    ["accessories"] = "none",
    ["armor"] = "none",
    ["badges"] = "none",
    ["belt_buckles"] = "none",
    ["belts"] = "none",
    ["boot_accessories"] = "none",
    ["boots"] = "none",
    ["chaps"] = "none",
    ["cloaks"] = "none",
    ["coats"] = "none",
    ["coats_closed"] = "none",
    ["dresses"] = "none",
    ["eyewear"] = "none",
    ["gauntlets"] = "none",
    ["gloves"] = "none",
    ["gunbelt_accs"] = "none",
    ["gunbelts"] = "none",
    ["hats"] = "none",
    ["holsters_left"] = "none",
    ["jewelry_bracelets"] = "none",
    ["jewelry_rings_left"] = "none",
    ["jewelry_rings_right"] = "none",
    ["loadouts"] = "none",
    ["masks"] = "none",
    ["neckties"] = "none",
    ["neckwear"] = "none",
    ["pants"] = "none",
    ["ponchos"] = "none",
    ["satchels"] = "none",
    ["shirts_full"] = "none",
    ["spats"] = "none",
    ["suspenders"] = "none",
    ["vests"] = "none",
}
local isClothRemoved = {
    ["accessories"] = 0,
    ["armor"] = 0,
    ["badges"] = 0,
    ["belt_buckles"] = 0,
    ["belts"] = 0,
    ["boot_accessories"] = 0,
    ["boots"] = 0,
    ["chaps"] = 0,
    ["cloaks"] = 0,
    ["coats"] = 0,
    ["coats_closed"] = 0,
    ["dresses"] = 0,
    ["eyewear"] = 0,
    ["gauntlets"] = 0,
    ["gloves"] = 0,
    ["gunbelt_accs"] = 0,
    ["gunbelts"] = 0,
    ["hats"] = 0,
    ["holsters_left"] = 0,
    ["jewelry_bracelets"] = 0,
    ["jewelry_rings_left"] = 0,
    ["jewelry_rings_right"] = 0,
    ["loadouts"] = 0,
    ["masks"] = 0,
    ["neckties"] = 0,
    ["neckwear"] = 0,
    ["pants"] = 0,
    ["ponchos"] = 0,
    ["satchels"] = 0,
    ["shirts_full"] = 0,
    ["spats"] = 0,
    ["suspenders"] = 0,
    ["vests"] = 0,
}

RegisterNetEvent('qr_clothes:ApplyClothes')
AddEventHandler('qr_clothes:ApplyClothes', function(ClothesComponents, Target)
    Citizen.CreateThread(function()
        local _Target = Target or PlayerPedId()
        if type(ClothesComponents) ~= "table" then
            return
        end
        if next(ClothesComponents) == nil then
            return
        end
        for k, v in pairs(ClothesComponents) do
            if v ~= nil then
                local id = tonumber(v.model)
                if id >= 1 then
                    if IsPedMale(_Target) then
                        if clothes_list["male"][k] ~= nil then
                            if clothes_list["male"][k][tonumber(v.model)] ~= nil then
                                if clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)] ~= nil then
                                    savedPedClothes[k] = tonumber(clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].hash)
                                end
                            end
                        end
                    else
                        if clothes_list["female"][k] ~= nil then
                            if clothes_list["female"][k][tonumber(v.model)] ~= nil then
                                if clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)] ~= nil then
                                    savedPedClothes[k] = tonumber(clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].hash)
                                end
                            end

                        end
                    end
                end
            end
        end
    end)
end)

-- Functions
function NativeSetPedComponentEnabled(ped, componentHash, immediately, isMp)
    -- Set Variation
    Citizen.InvokeNative(0xD3A7B003ED343FD9, ped, tonumber(componentHash), immediately, isMp, true)
    -- Update Variation
    Citizen.InvokeNative(0x704C908E9C405136, ped)
    Citizen.InvokeNative(0xCC8CA3E88256E58F, ped, false, true, true, true, false)
    -- Is loaded
    while not Citizen.InvokeNative(0xA0BC8FAED8CFEB3C, ped) do
        Wait(1)
    end
end

-- Menu Creation
Citizen.CreateThread(function()
    lib.registerMenu({
        id = 'alp_cloths_menu',
        title = 'Cloths Menu',
        position = Config.MenuPosition,
        onSideScroll = function(selected, scrollIndex, args)
        end,
        onSelected = function(selected, secondary, args)
        end,
        onCheck = function(selected, checked, args)
        end,
        onClose = function(keyPressed)
        end,
        options = {
            {label = Lang:t("menu.dress_full"), close = false, args = { cloth = "dressFull"} },
            {label = Lang:t("menu.remove_cloths"), close = false, args = { cloth = "removeCloths"} },
            {label = Lang:t("menu.accessories"), close = false, args = { cloth = "accessories"} },
            {label = Lang:t("menu.armor"), close = false, args = { cloth = "armor"} },
            {label = Lang:t("menu.badges"), close = false, args = { cloth = "badges"} },
            {label = Lang:t("menu.belt_buckles"), close = false, args = { cloth = "belt_buckles"} },
            {label = Lang:t("menu.belts"), close = false, args = { cloth = "belts"} },
            {label = Lang:t("menu.boot_accessories"), close = false, args = { cloth = "boot_accessories"} },
            {label = Lang:t("menu.boots"), close = false, args = { cloth = "boots"} },
            {label = Lang:t("menu.chaps"), close = false, args = { cloth = "chaps"} },
            {label = Lang:t("menu.cloaks"), close = false, args = { cloth = "cloaks"} },
            {label = Lang:t("menu.coats"), close = false, args = { cloth = "coats"} },
            {label = Lang:t("menu.coats_closed"), close = false, args = { cloth = "coats_closed"} },
            {label = Lang:t("menu.dresses"), close = false, args = { cloth = "dresses"} },
            {label = Lang:t("menu.eyewear"), close = false, args = { cloth = "eyewear"} },
            {label = Lang:t("menu.gauntlets"), close = false, args = { cloth = "gauntlets"} },
            {label = Lang:t("menu.gloves"), close = false, args = { cloth = "gloves"} },
            {label = Lang:t("menu.gunbelt_accs"), close = false, args = { cloth = "gunbelt_accs"} },
            {label = Lang:t("menu.gunbelts"), close = false, args = { cloth = "gunbelts"} },
            {label = Lang:t("menu.hats"), close = false, args = { cloth = "hats"} },
            {label = Lang:t("menu.holsters_left"), close = false, args = { cloth = "holsters_left"} },
            {label = Lang:t("menu.jewelry_bracelets"), close = false, args = { cloth = "jewelry_bracelets"} },
            {label = Lang:t("menu.jewelry_rings_left"), close = false, args = { cloth = "jewelry_rings_left"} },
            {label = Lang:t("menu.jewelry_rings_right"), close = false, args = { cloth = "jewelry_rings_right"} },
            {label = Lang:t("menu.loadouts"), close = false, args = { cloth = "loadouts"} },
            {label = Lang:t("menu.masks"), close = false, args = { cloth = "masks"} },
            {label = Lang:t("menu.neckties"), close = false, args = { cloth = "neckties"} },
            {label = Lang:t("menu.neckwear"), close = false, args = { cloth = "neckwear"} },
            {label = Lang:t("menu.pants"), close = false, args = { cloth = "pants"} },
            {label = Lang:t("menu.ponchos"), close = false, args = { cloth = "ponchos"} },
            {label = Lang:t("menu.satchels"), close = false, args = { cloth = "satchels"} },
            {label = Lang:t("menu.shirts_full"), close = false, args = { cloth = "shirts_full"} },
            {label = Lang:t("menu.spats"), close = false, args = { cloth = "spats"} },
            {label = Lang:t("menu.suspenders"), close = false, args = { cloth = "suspenders"} },
            {label = Lang:t("menu.vests"), close = false, args = { cloth = "vests"} },
        }
    }, function(selected, scrollIndex, args)
        
        if args.cloth == "dressFull" then
            for k,v in pairs(savedPedClothes) do
                NativeSetPedComponentEnabled(PlayerPedId(), savedPedClothes[k], true, true)
                isClothRemoved[k] = 0
            end
        elseif args.cloth == "removeCloths" then
            for k,v in pairs(savedPedClothes) do
                Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), tonumber(categoryHashes[k]), false)
                Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), false, true, true, true, false)
                isClothRemoved[k] = 1
            end
        else
            for k,v in pairs(savedPedClothes) do
                if args.cloth == k then
                    if isClothRemoved[k] == 0 then
                        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), tonumber(categoryHashes[k]), false)
                        Citizen.InvokeNative(0xCC8CA3E88256E58F, PlayerPedId(), false, true, true, true, false)

                        isClothRemoved[k] = 1
                    elseif isClothRemoved[k] == 1 then
                        NativeSetPedComponentEnabled(PlayerPedId(), savedPedClothes[k], true, true)
                        isClothRemoved[k] = 0
                    end
                end
            end
        end

    end)
end)

RegisterNetEvent("alp_cloths:OpenMenu", function()
    lib.showMenu('alp_cloths_menu')
end)

if Config.CommandEnabled then
    RegisterCommand(Config.Command, function()
        TriggerEvent("alp_cloths:OpenMenu")
    end)
end