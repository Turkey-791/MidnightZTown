Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- qb-targetのインタラクションを使用 (変更しないでください。server.cfgに`setr UseTarget true`を追加して、この値をtrueからfalse、またはその逆に変更してください)

Config.AvailableJobs = {                                     -- qb-jobsを使用しない場合にのみ使用
    ['trucker'] = { ['label'] = 'トラック運転手', ['isManaged'] = false },
    ['taxi'] = { ['label'] = 'タクシー', ['isManaged'] = false },
    ['tow'] = { ['label'] = 'レッカー車', ['isManaged'] = false },
    ['reporter'] = { ['label'] = 'ニュースレポーター', ['isManaged'] = false },
    ['garbage'] = { ['label'] = 'ゴミ収集員', ['isManaged'] = false },
    ['bus'] = { ['label'] = 'バス運転手', ['isManaged'] = false },
    ['hotdog'] = { ['label'] = 'ホットドッグスタンド', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- 市役所 1
        coords = vec3(-265.0, -963.6, 31.2),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = '市役所サービス'
        },
        licenses = {
            ['id_card'] = {
                label = 'IDカード',
                cost = 50,
            },
            ['driver_license'] = {
                label = '運転免許証',
                cost = 50,
                metadata = 'driver'
            },
            ['weaponlicense'] = {
                label = '武器ライセンス',
                cost = 50,
                metadata = 'weapon'
            },
        }
    },
}

Config.DrivingSchools = {
    { -- 自動車学校 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = true,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = '自動車学校'
        },
        instructors = {
            'DJD56142',
            'DXT09752',
            'SRI85140',
        }
    },
}

Config.Peds = {
    -- 市庁舎のPED (NPC)
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-262.79, -964.18, 30.22, 181.71),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- UseTargetがfalseの場合に使用
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- 自動車学校のPED (NPC)
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(240.91, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- UseTargetがfalseの場合に使用
            length = 3.0,
            width = 3.0
        }
    }
}