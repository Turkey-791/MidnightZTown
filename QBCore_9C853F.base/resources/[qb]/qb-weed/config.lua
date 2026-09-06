QBWeed = {}

QBWeed.Progress = { -- 健康な植物に GrowthTick ごとにどのくらいの進捗が追加されるか
    min = 1,        -- これを変更すると、成長時間の進行が変わります。例：1から50にすると、9.6分のサイクルで50の進捗が得られます。
    max = 3,        -- 上記を参照してください。最大値が最小値より大きいことを確認してください。
}

QBWeed.ShowStages = true -- 植物の段階を表示
QBWeed.GrowthTick = 9.6  -- 植物の成長を促進し、健康/栄養を更新する時間（分）（2番目のティックごと）
QBWeed.FoodUsage = 1     -- 1ティックあたりの食料消費量

QBWeed.StageLabels = {
    [1] = '発芽',
    [2] = '苗',
    [3] = '栄養成長',
    [4] = 'つぼみ',
    [5] = '開花前',
    [6] = '開花',
    [7] = '収穫準備完了',
}

QBWeed.DefaultProps = {
    [1] = 'bkr_prop_weed_01_small_01c',
    [2] = 'bkr_prop_weed_01_small_01b',
    [3] = 'bkr_prop_weed_01_small_01a',
    [4] = 'bkr_prop_weed_med_01b',
    [5] = 'bkr_prop_weed_lrg_01a',
    [6] = 'bkr_prop_weed_lrg_01b',
    [7] = 'bkr_prop_weed_lrg_01b',
}

QBWeed.Plants = {
    ogkush = {
        label = 'OGクッシュ 2g',
        item = 'weed_ogkush',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    amnesia = {
        label = 'アムネシア 2g',
        item = 'weed_amnesia',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    skunk = {
        label = 'スカンク 2g',
        item = 'weed_skunk',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    ak47 = {
        label = 'AK47 2g',
        item = 'weed_ak47',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    purplehaze = {
        label = 'パープルヘイズ 2g',
        item = 'weed_purplehaze',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
    whitewidow = {
        label = 'ホワイトウィドウ 2g',
        item = 'weed_whitewidow',
        stages = QBWeed.DefaultProps,
        highestStage = 7,
    },
}