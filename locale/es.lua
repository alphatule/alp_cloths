local Translations = {
    accesories = {
        blanket = "Mantas",
        horns = "Cuernos",
        bags = "Alforjas",
        tail = "Cola",
        mane = "Crines",
        saddle = "Monturas",
        stirrups = "Estribos",
        bedroll = "Petates",
        lantern = "Linternas",
        mask = "Mascaras",
        horse_mustache = "Bigotazo",
        description = {
            blanket = "Mantas para poner sobre la espalda del caballo.",
            horns = "Cuernos para ponerle en la cabeza a tu novia",
            bags = "Alforjas para guardar cosas",
            tail = "Con rastas si rastas no entiendo muy bien",
            mane = "Crines para la tail de delante del cuello",
            saddle = "Monturas que normalmente se ponen encima para sentarte",
            stirrups = "Estribos cosas que cuelgan para poner los pieses",
            bedroll = "Petates para Petates",
            lantern = "Linternas para ver por la noche",
            mask = "Mascaras las que te faltan mi rei",
            horse_mustache = "Bigotazo para tu potrillo",
        }
    },
    translation = {

        newLevel = "Nuevo nivel",
        newLevel_desc = "Tu caballo a subido de nivel!",

        title = "Establos",
        buyHorse = "Comprar caballo",
        buyHorse_desc = "¡Comprar un nuevo caballo!",
        myHorses = "Mis caballos",
        myHorses_desc = "¡Ver y modificar tus caballos!",
        rentHorses = "Alquiler de caballos",
        rentHorses_desc = "¡Mira los caballos que estan de alquiler!",

        titleBuyHorses = "Establos - Comprar",
        buyWithBank = "Comprar banco",
        buyWithBank_desc = "Comprar banco desc",
        buyWithCash = "Comprar efectivo",
        buyWithCash_desc = "Comprar efectivo desc",
        buyWithGold = "Comprar con oro",
        buyWithGold_desc = "Comprar con oro desc",
        titlePrincingHorse = "Establos - Pricing",

        titleMyHorses = "Establos - Mis caballos",
        myHorseName = "Nombre: ",
        myHorseName_desc = "¡Puedes cambiar el nombre del caballo!",
        principalHorse = "Caballo principal",
        principalHorse_desc = "Caballo seleccionado como principal",
        selectAsPrincipalHorse = "Seleccionar como caballo principal",
        selectAsPrincipalHorse_desc = "Caballo guardado en el establo",
        modificateAccesories = "Modificar accesorios",
        modificateAccesories_desc = "¡Modificale todos los componentes!",
        basicNeeds = "Cuidados del caballo",
        basicNeeds_desc = "Alimento, cepillado y nuevas herraduras",
        showStats = "Ver estadisticas",
        showStats_desc = "Comprueba lo que ha aprendido tu caballo en el camino",
        rentHorse = "Alquilar caballo",
        rentHorse_desc = "¡Renta tu caballo por X dinero al dia!",
        transferHorse = "Tranferir caballo",
        transferHorse_desc = "¡Tranfiere tu caballo a otra persona!",
        sellHorse = "Vender caballo",
        sellHorse_desc = "¡Vende tu caballo!",
        
        titleMyHorseAccesoriesModification = "Establos - Modificación de caballo",
        
        withoutAccesorie = "Sin accesorio",

        titleMyHorseBuyAccesoriesModification = "Establos - Pago Accesorios",
        
    },
    notifications = {
        error = "Algo a fallado, porfavor intentelo de nuevo.",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})