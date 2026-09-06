Config = Config or {}

Config.Toggle = true
Config.OpenKey = 'HOME'
Config.ShowIDforALL = false
Config.MaxPlayers = GetConvarInt('sv_maxclients', 48)

Config.IllegalActions = {
    ['storerobbery'] = {
        minimumPolice = 1,
        busy = false,
        label = '店舗強盗',
    },
    ['bankrobbery'] = {
        minimumPolice = 3,
        busy = false,
        label = '銀行強盗'
    },
    ['jewellery'] = {
        minimumPolice = 2,
        busy = false,
        label = '宝石強盗'
    },
    ['pacific'] = {
        minimumPolice = 5,
        busy = false,
        label = 'パシフィック銀行'
    },
    ['paleto'] = {
        minimumPolice = 4,
        busy = false,
        label = 'パレト銀行'
    }
}
