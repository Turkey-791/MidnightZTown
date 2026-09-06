Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10                              -- 車両の完全売却時に営業担当者に支払われる割合 10%
Config.FinanceCommission = 0.05                       -- 分割払い販売時に営業担当者に支払われる割合 5%
Config.PaymentWarning = 10                            -- プレイヤーが車両を差し押さえられるまでの支払い猶予時間（分）
Config.PaymentInterval = 24                           -- 支払期限の間隔（時間）
Config.MinimumDown = 10                               -- 許可される頭金の最低割合
Config.MaximumPayments = 24                           -- 許可される最大支払い回数
Config.PreventFinanceSelling = false                  -- 分割払いの場合にプレイヤーが /transfervehicle を使用できるかどうか
Config.FilterByMake = false                           -- ショップでカテゴリーを選択する前にメーカーリストを追加する
Config.SortAlphabetically = true                      -- メーカー、カテゴリー、車両選択メニューをアルファベット順に並べ替える
Config.HideCategorySelectForOne = true                -- ショップが1つの車両カテゴリーのみを販売する場合、またはメーカーが1つのカテゴリーのみを持つ場合にカテゴリー選択メニューを非表示にする
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- 車両購入にプレイヤーの操作は不要
        ['Zone'] = {
            ['Shape'] = {      -- ショップを取り囲むポリゴン
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-33.9, -1108.96),
                vector2(-35.95, -1114.32),
                vector2(-31.58, -1115.21),
                vector2(-27.48, -1103.42),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,                                         -- ショップゾーンの最低高度
            ['maxZ'] = 28.0,                                         -- ショップゾーンの最高高度
            ['size'] = 2.75                                          -- 車両ゾーンのサイズ
        },
        ['Job'] = 'none',                                            -- ジョブ名、または'none'
        ['ShopLabel'] = 'プレミアム・デラックス・モータースポーツ',  -- ブリップ名
        ['showBlip'] = true,                                         -- true または false
        ['blipSprite'] = 326,                                        -- ブリップのアイコン
        ['blipColor'] = 3,                                           -- ブリップの色
        ['TestDriveTimeLimit'] = 0.5,                                -- 車両が削除されるまでの時間（分）
        ['Location'] = vector3(-45.67, -1098.34, 26.42),             -- ブリップの位置
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68),       -- 車両を返却する場所（車両ショップがジョブを所有している場合のみ有効）
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5),   -- 車両購入時のスポーン位置
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- 試乗時のスポーン位置
        ['FinanceZone'] = vector3(-29.53, -1103.67, 26.42),          -- 分割払いメニューがある場所
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- 車両が展示されるスポーン位置
                defaultVehicle = 'ardent',                       -- デフォルトの展示車両
                chosenVehicle = 'ardent',                        -- デフォルトと同じですが、車両を交換すると動的に変更されます
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 'rhapsody',
                chosenVehicle = 'rhapsody'
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- つまり、実際のプレイヤーが車を売却する必要がある
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75    -- 車両ゾーンのサイズ
        },
        ['Job'] = 'cardealer', -- ジョブ名、または'none'
        ['ShopLabel'] = '高級車ショップ',
        ['showBlip'] = true,   -- true または false
        ['blipSprite'] = 326,  -- ブリップのアイコン
        ['blipColor'] = 3,     -- ブリップの色
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- 試乗時のスポーン位置
        ['FinanceZone'] = vector3(-1256.18, -368.23, 36.91),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 35.91, 205.08),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx'
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 35.91, 247.08),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb'
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 35.91, 297.12),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero'
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 35.91, 56.44),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 35.91, 55.63),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs'
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 35.91, 53.24),
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer'
            },
        }
    },                         -- 次のテーブルをこのコンマの下に追加してください
    ['boats'] = {
        ['Type'] = 'free-use', -- 車両購入にプレイヤーの操作は不要
        ['Zone'] = {
            ['Shape'] = {      -- ショップを取り囲むポリゴン
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0,                                            -- ショップゾーンの最低高度
            ['maxZ'] = 5.0,                                            -- ショップゾーンの最高高度
            ['size'] = 6.2                                             -- 車両ゾーンのサイズ
        },
        ['Job'] = 'none',                                              -- ジョブ名、または'none'
        ['ShopLabel'] = 'マリーナショップ',                            -- ブリップ名
        ['showBlip'] = true,                                           -- true または false
        ['blipSprite'] = 410,                                          -- ブリップのアイコン
        ['blipColor'] = 3,                                             -- ブリップの色
        ['TestDriveTimeLimit'] = 1.5,                                  -- 車両が削除されるまでの時間（分）
        ['Location'] = vector3(-738.25, -1334.38, 1.6),                -- ブリップの位置
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0),          -- 車両を返却する場所（車両ショップがジョブを所有している場合のみ有効）
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09),   -- 車両購入時のスポーン位置
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- 試乗時のスポーン位置
        ['FinanceZone'] = vector3(-729.86, -1319.13, 1.6),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- 車両が展示されるスポーン位置
                defaultVehicle = 'seashark',                      -- デフォルトの展示車両
                chosenVehicle = 'seashark'                        -- デフォルトと同じですが、車両を交換すると動的に変更されます
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- 車両購入にプレイヤーの操作は不要
        ['Zone'] = {
            ['Shape'] = {      -- ショップを取り囲むポリゴン
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99,                                            -- ショップゾーンの最低高度
            ['maxZ'] = 16.99,                                            -- ショップゾーンの最高高度
            ['size'] = 7.0,                                              -- 車両ゾーンのサイズ
        },
        ['Job'] = 'none',                                                -- ジョブ名、または'none'
        ['ShopLabel'] = '飛行機ショップ',                                -- ブリップ名
        ['showBlip'] = true,                                             -- true または false
        ['blipSprite'] = 251,                                            -- ブリップのアイコン
        ['blipColor'] = 3,                                               -- ブリップの色
        ['TestDriveTimeLimit'] = 1.5,                                    -- 車両が削除されるまでの時間（分）
        ['Location'] = vector3(-1652.76, -3143.4, 13.99),                -- ブリップの位置
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94),          -- 車両を返却する場所（車両ショップがジョブを所有している場合のみ有効）
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2),    -- 車両購入時のスポーン位置
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- 試乗時のスポーン位置
        ['FinanceZone'] = vector3(-1619.52, -3152.64, 14.0),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- 車両が展示されるスポーン位置
                defaultVehicle = 'volatus',                          -- デフォルトの展示車両
                chosenVehicle = 'volatus'                            -- デフォルトと同じですが、車両を交換すると動的に変更されます
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- 車両購入にプレイヤーの操作は不要
        ['Zone'] = {
            ['Shape'] = {      -- ショップを取り囲むポリゴン
                vector2(856.91046142578, -1181.4660644532),
                vector2(922.666015625, -1178.8934326172),
                vector2(921.7074584961, -1153.4362792968),
                vector2(894.02233886718, -1153.185180664),
                vector2(894.08135986328, -1154.2734375),
                vector2(887.91284179688, -1154.3431396484),
                vector2(887.76403808594, -1155.2556152344),
                vector2(872.04608154296, -1155.3488769532),
                vector2(872.05163574218, -1139.1412353516),
                vector2(857.6060180664, -1139.501953125)
            },
            ['minZ'] = 22.0,                                         -- ショップゾーンの最低高度
            ['maxZ'] = 28.0,                                         -- ショップゾーンの最高高度
            ['size'] = 5.75                                          -- 車両ゾーンのサイズ
        },
        ['Job'] = 'none',                                            -- ジョブ名、または'none'
        ['ShopLabel'] = 'トラック・モーターショップ',                -- ブリップ名
        ['showBlip'] = true,                                         -- true または false
        ['blipSprite'] = 477,                                        -- ブリップのアイコン
        ['blipColor'] = 2,                                           -- ブリップの色
        ['TestDriveTimeLimit'] = 0.5,                                -- 車両が削除されるまでの時間（分）
        ['Location'] = vector3(900.47, -1155.74, 25.16),             -- ブリップの位置
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16),       -- 車両を返却する場所（車両ショップがジョブを所有している場合のみ有効）
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- 車両購入時のスポーン位置
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- 試乗時のスポーン位置
        ['FinanceZone'] = vector3(900.46, -1154.86, 25.16),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- 車両が展示されるスポーン位置
                defaultVehicle = 'hauler',                         -- デフォルトの展示車両
                chosenVehicle = 'hauler',                          -- デフォルトと同じですが、車両を交換すると動的に変更されます
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
}