local Translations = {
    accesories = {
        blanket = "Blankets",
        horns = "Horns",
        bags = "Saddlebags",
        tail = "Tails",
        mane = "Manes",
        saddle = "Saddles",
        stirrups = "Stirrups",
        bedroll = "Bedrolls",
        lantern = "Lanterns",
        mask = "Masks",
        horse_mustache = "Mustaches",
        description = {
            blanket = "Blankets to protect your horses back.",
            horns = "You are horny enough by yourself, this ones are for the saddle",
            bags = "You have to store your stuff somewhere",
            tail = "Shape it's tail!",
            mane = "Get that horse a sick fade",
            saddle = "You do enouhg bareback riding already",
            stirrups = "Protect your new boots",
            bedroll = "Even the toughest need their blanket",
            lantern = "A hands free lantern",
            mask = "Hide your horse\'s identity?",
            horse_mustache = "It's got a better mustache than you",
        }
    },
    translation = {

        openStable = "Open Stable",

        newLevel = "Level UP",
        newLevel_desc = "Your horse leveled up!",

        title = "Stables",
        buyHorse = "Purchase horse",
        buyHorse_desc = "¡Buy a new horse!",
        myHorses = "My horses",
        myHorses_desc = "¡Check and modify your horses!",
        rentHorses = "Horse renting",
        rentHorses_desc = "¡Check which horses are for rent!",

        titleBuyHorses = "Stable Store",
        buyWithBank = "Buy via bank transfer",
        buyWithBank_desc = "Use your bank savings",
        buyWithCash = "Buy with cash",
        buyWithCash_desc = "Use that cash in your pockets",
        buyWithGold = "Buy with gold",
        buyWithGold_desc = "Use those ingots",
        titlePrincingHorse = "Purchase",

        titleMyHorses = "Horse management",
        myHorseName = "Name: ",
        myHorseName_desc = "¡You can change tour horse\'s name!",
        principalHorse = "Selected horse",
        principalHorse_desc = "This one will go to you when you whistle",
        selectAsPrincipalHorse = "Select as main horse",
        selectAsPrincipalHorse_desc = "This horse will stay at the stable",
        modificateAccesories = "Change complements",
        modificateAccesories_desc = "¡Check everything on sale!",

        payAccesories = "Pagar accesorios",
        payAccesories_desc = "Comprar accesorios seleccionados",

        showStats = "Show stats",
        showStats_desc = "Chack what your horse has learned",
        rentHorse = "Rent out",
        rentHorse_desc = "¡Rent out your horse for $X a day!",
        transferHorse = "Transfer",
        transferHorse_desc = "¡Tansfer your horse to someone!",
        sellHorse = "Sell",
        sellHorse_desc = "¡Sell your horse to the stable!",

        titleMyHorseAccesoriesModification = "Complement shop",

        withoutAccesorie = "None selected",

        titleMyHorseBuyAccesoriesModification = "Purchase",

        titleMyHorseShowStats = "Show stats",

        inputBuyHorseName = "Horse name",
        inputChangeHorseName = "New horse name",
        

        showStatHealthLvl = "Health Level: ",
        showStatHealthXp = "XP: ",
        showStatHealth_desc = "Horse health stats",

        showStatStaminaLvl = "Stamina Level: ",
        showStatStaminaXp = "XP: ",
        showStatStamina_desc = "Horse stamina stats",

        showStatCourageLvl = "Courage Level: ",
        showStatCourageXp = "XP: ",
        showStatCourage_desc = "Horse courage stats",

        showStatAgilityLvl = "Agility Level: ",
        showStatAgilityXp = "XP: ",
        showStatAgility_desc = "Horse agility stats",

        showStatSpeedLvl = "Speed Level: ",
        showStatSpeedXp = "XP: ",
        showStatSpeed_desc = "Horse speed stats",

        showStatAccelerationLvl = "Acceleration Level: ",
        showStatAccelerationXp = "XP: ",
        showStatAcceleration_desc = "Horse acceleration stats",

        showStatHealthRegenLvl = "Health Regen. Mult. : ",
        showStatHealthRegenXp = "XP: ",
        showStatHealthRegen_desc = "Horse health regen. stats",

        showStatStaminaRegenLvl = "Stamina Regen. Mult. : ",
        showStatStaminaRegenXp = "XP: ",
        showStatStaminaRegen_desc = "Horse stamina regen. stats",

        titleMyHorseTransfer = "Horse Transfer",

        transferHorsePlayerId = "ID of user for transfer",
        transferSuccess = "Transfer successful to ID: %s",

        inputSellHorse = "Sell",
        checkBoxSellHorse = "¿Are you sure you want to sell this horse?",

        
        healthNewLvl = "Horse's health got to Level %s",
        staminaNewLvl = "Horse's stamina got to Level %s",
        courageNewLvl = "Horse's courage got to Level %s",
        agilityNewLvl = "Horse's agility got to Level %s",
        speedNewLvl = "Horse's speed got to Level %s",
        accelerationNewLvl = "Horse's acceleration got to Level %s",
        healthRegenNewLvl = "Horse's health regen. got to Level %s",
        staminaRegenNewLvl = "Horse's stamina regen. got to Level %s",

    },
    notifications = {
        error = "Something failed, try again later.",
        playerIdDoesNotExist = "ID %s is not in the server.",
        transferToYourSelf = "You can't transfer your horse to yourself.",
        enoughMoney = "You don't have enough money.",
        nameChanged = "Name changed from %s to %s",
        isYourPrincipalHorse = "%s Is your new main horse",
        selledHorse = "Horse sold for %s"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})