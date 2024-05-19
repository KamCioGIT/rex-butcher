Config = {}

---------------------------------
-- settings
---------------------------------
Config.Debug = false
Config.SellTime = 10000
Config.PoorMultiplier = 1
Config.GoodMultiplier = 2
Config.PerfectMultiplier = 3
Config.KeyBind = 'J'
Config.EnableTarget = true

---------------------------------
-- webhook settings
---------------------------------
Config.WebhookName = 'rexbutcher'
Config.WebhookTitle = 'Rex Butcher'
Config.WebhookColour = 'default'
Config.Lang1 = ' Sold a poor '
Config.Lang2 = ' Sold a good '
Config.Lang3 = ' Sold a perfect '
Config.Lang4 = ' for $'

---------------------------------
-- openting hours
---------------------------------
Config.AlwaysOpen = false -- if false configure the open/close times
Config.OpenTime = 8 -- store opens
Config.CloseTime = 20 -- store closes

---------------------------------
-- npc settings
---------------------------------
Config.DistanceSpawn = 20.0 -- Distance before spawning/despawning the ped. (GTA Units.)
Config.FadeIn = true

---------------------------------
-- blip settings
---------------------------------
Config.Blip = {
    blipName = Lang:t('config.lang_1'), -- Config.Blip.blipName
    blipSprite = 'blip_shop_butcher', -- Config.Blip.blipSprite
    blipScale = 0.2 -- Config.Blip.blipScale
}

---------------------------------
-- prompt locations
---------------------------------
Config.ButcherLocations = {

    {   --valentine
        name = Lang:t('config.lang_1'),
        prompt = 'valentine-butcher',
        coords = vector3(-341.05, 767.33, 116.70),
        npcmodel = `u_m_m_valbutcher_01`,
        npccoords = vector4(-339.26, 767.7, 116.57, 103.16),
        showblip = true
    },
    {   --st denis
        name = Lang:t('config.lang_1'),
        prompt = 'stdenis-butcher',
        coords = vector3(2816.37, -1322.24, 46.61),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(2817.6848, -1323.25, 46.607814, 54.587085),
        showblip = true
    },
    {   -- rhodes
        name = Lang:t('config.lang_1'),
        prompt = 'rhodes-butcher',
        coords = vector3(1296.36, -1279.26, 75.84),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(1297.3735, -1277.661, 75.876304, 158.4201),
        showblip = true
    },
    {   -- annesburg
        name = Lang:t('config.lang_1'),
        prompt = 'annesburg-butcher',
        coords = vector3(2937.32, 1310.64, 44.48),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(2937.32, 1310.64, 44.48, 87.14),
        showblip = true
    },
    {   -- tumbleweed
        name = Lang:t('config.lang_1'),
        prompt = 'tumbleweed-butcher',
        coords = vector3(-5508.10, -2947.73, -1.87),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(-5509.831, -2947.271, -1.89185, 256.48596),
        showblip = true
    },
    {   -- blackwater
        name = Lang:t('config.lang_1'),
        prompt = 'blackwater-butcher',
        coords = vector3(-751.102, -1284.896, 43.276576),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(-753.0086, -1284.84, 43.470008, 267.18395),
        showblip = true
    },
    {   -- strawberry
        name = Lang:t('config.lang_1'),
        prompt = 'strawberry-butcher',
        coords = vector3(-1752.91, -394.74, 156.19),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(-1753.137, -392.8364, 156.24348, 189.32403),
        showblip = true
    },
    {   -- vanhorn
        name = Lang:t('config.lang_1'),
        prompt = 'vanhorn-butcher',
        coords = vector3(2994.23, 571.79, 44.35),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(2992.4711, 572.20001, 44.365322, 263.94104),
        showblip = true
    },
    {   -- spidergorge
        name = Lang:t('config.lang_1'),
        prompt = 'spidergorge-butcher',
        coords = vector3(-1355.103, 2420.8293, 307.48272),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(-1356.811, 2420.0056, 307.49148, 301.39794),
        showblip = true
    },
    {   -- riggsstation
        name = Lang:t('config.lang_1'),
        prompt = 'riggsstation-butcher',
        coords = vector3(-1005.966, -540.9986, 98.964859),
        npcmodel = `s_m_m_unibutchers_01`,
        npccoords = vector4(-1007.92, -541.2982, 99.108978, 281.41009),
        showblip = true
    },

}

---------------------------------
-- butcher shop items
---------------------------------
Config.ButcherShop = {
    -- butcher shop items
    [1] = { name = 'raw_meat', price = 3, amount = 500, info = {}, type = 'item', slot = 1, },
}

---------------------------------
-- animals
---------------------------------
Config.Animal = {

    {
        name        = 'Bear',
        model       = -1124266369,
        rewardmoney = 14,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Big Horn Ram',
        model       = -1568716381, 
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Boar',
        model       = 2028722809,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Buck',
        model       = -1963605336,
        rewardmoney = 7,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Bison',
        model       = 1556473961,
        rewardmoney = 10,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Bull',
        model       = 195700131,
        rewardmoney = 8,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Deer',
        model       = 1110710183,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Duck',
        model       = -1003616053,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Eagle',
        model       = 1459778951,
        rewardmoney = 6,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Egret',
        model       = 831859211,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Elk',
        model       = -2021043433,
        rewardmoney = 5,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'American Red Fox',
        model       = 252669332,
        rewardmoney = 5,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Big Grey Wolf',
        model       = -1143398950,
        rewardmoney = 6,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Medium Grey Wolf',
        model       = -885451903,
        rewardmoney = 5,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Small Grey Wolf',
        model       = -829273561,
        rewardmoney = 4,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Vulture',
        model       = 1104697660,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Snapping Turtle',
        model       = -407730502,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Wild Turkey',
        model       = -466054788,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Wild Turkey',
        model       = -2011226991,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Wild Turkey',
        model       = -166054593,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Water Snake',
        model       = -229688157,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Snake Red Boa',
        model       = -1790499186,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Snake Fer-De-Lance',
        model       = 1464167925,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Black-Tailed Rattlesnake',
        model       = 846659001, 
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Western Rattlesnake',
        model       = 545068538,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Striped Skunk',
        model       = -1211566332,
        rewardmoney = 8,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Merino Sheep',
        model       = 40345436,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Herring Seagull',
        model       = -164963696,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Roseate Spoonbill',
        model       = -1076508705,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Dominique Rooster',
        model       = 2023522846,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Red-Footed Booby',
        model       = -466687768,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Wester Raven',
        model       = -575340245,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'North American Racoon',
        model       = 1458540991,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Black-Tailed Jackrabbit',
        model       = -541762431,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'American Pronghorn Doe',
        model       = 1755643085,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Greater Prairie Chicken',
        model       = 2079703102,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Wirginia Possum',
        model       = -1414989025,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Berkshire Pig',
        model       = 1007418994,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Ring-Necked Pheasant',
        model       = 1416324601,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'American White Pelican',
        model       = 1265966684,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Blue And Yellow Macaw',
        model       = -1797450568,
        rewardmoney = 6,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Panther',
        model       = 1654513481,
        rewardmoney = 30,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Californian Condor',
        model       = 1205982615,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Dominique Chicken',
        model       = -2063183075,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Double-Crested Cormorant',
        model       = -2073130256,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Cougar',
        model       = 90264823,
        rewardmoney = 25,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Florida Cracker Cow',
        model       = -50684386,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Coyote',
        model       = 480688259,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Whooping Crane',
        model       = -564099192,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },   
    {
        name        = 'Gila Monster',
        model       = 457416415,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Alpine Goat',
        model       = -753902995,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Canada Goose',
        model       = 723190474,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Ferruinous Hawk',
        model       = -2145890973,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Great Blue Heron',
        model       = 1095117488,
        rewardmoney = 4,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Green Iguana',
        model       = -1854059305,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Desert Iguana',
        model       = -593056309,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Peccary Pig',
        model       = 1751700893,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Common Loon',
        model       = 386506078,
        rewardmoney = 13,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Moose',
        model       = -1098441944,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'American Muskrat',
        model       = -1134449699,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Great Horned Owl',
        model       = -861544272,
        rewardmoney = 3,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Angus Ox',
        model       = 556355544,
        rewardmoney = 1,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Alligator',
        model       = -1892280447,
        rewardmoney = 4,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'North American Beaver',
        model       = 759906147,
        rewardmoney = 2,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'American Black Bear',
        model       = 730092646,
        rewardmoney = 4,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Alligator',
        model       = -1295720802,
        rewardmoney = 4,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Legendary Moon Beaver',
        model       = -1149999295,
        rewardmoney = 100,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Legendary Maza Cougar',
        model       = -1433814131,
        rewardmoney = 100,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Legendary Midnight Paw Coyote',
        model       = -1307757043,
        rewardmoney = 100,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Legendary Ghost Panther',
        model       = -1189368951,
        rewardmoney = 100,
        rewarditem  = 'raw_meat'
    },
    {
        name        = 'Legendary Onyx Wolf',
        model       = -1392359921,
        rewardmoney = 100,
        rewarditem  = 'raw_meat'
    },
    
}
