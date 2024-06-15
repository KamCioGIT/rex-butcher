local Translations = {

    client = {
        lang_1 = 'Open ',
        lang_2 = 'Butchers Closed',
        lang_3 = 'come back after ',
        lang_4 = 'am',
        lang_5 = 'Butcher Shop',
        lang_6 = 'Sell Animal',
        lang_7 = 'sell your animal',
        lang_8 = 'Open Shop',
        lang_9 = 'buy items from the butcher',
        lang_10 = 'Not Holding Animal',
        lang_11 = 'don\'t have an animal on you',
        lang_12 = 'Selling ',
        lang_13 = 'Selling Failed!',
        lang_14 = 'Butchers Shop',
        lang_15 = 'Open Butcher Menu',
    },

    server = {
        lang_1 = ' Sold a poor ',
        lang_2 = ' Sold a good ',
        lang_3 = ' Sold a perfect ',
        lang_4 = ' for $',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('server.lang_1')
-- Lang:t('config.lang_1')