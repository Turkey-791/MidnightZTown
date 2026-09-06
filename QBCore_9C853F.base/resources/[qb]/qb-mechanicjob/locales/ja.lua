--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    success = {
        tuned = '車両を調整しました',
        installed = '%sをインストールしました',
        repaired = '車両を修理しました',
        part_repaired = '%sを修理しました',
        tire_repaired = 'タイヤを修理しました',
        cleaned = '車両を清掃しました',
    },
    warning = {
        not_tuned = '車両が調整されていません',
        no_materials = '材料が足りません',
    },
    target = {
        duty = '勤務を切り替える',
        stash = 'スタッシュ',
        shop = 'ショップ',
        paint = '車両を塗装する',
        withdraw = '車両を引き出す',
        deposit = '車両を預ける',
    },
    menu = {
        none = 'なし',
        back = '戻る',
        close = '閉じる',
        submit = '送信',
        status = '状態',
        vehicle_stats = '車両統計',
        engine_health = 'エンジンヘルス',
        body_health = 'ボディヘルス',
        fuel_health = '燃料タンクヘルス',
        vehicle_list = '車両リスト',
        paint_vehicle = '車両を塗装する',
        radiator_repair = 'ラジエーター',
        axle_repair = '車軸',
        fuel_repair = '燃料',
        clutch_repair = 'クラッチ',
        brakes_repair = 'ブレーキ',
        paints = '塗装',
        type = 'タイプ',
        metallic = 'メタリック',
        matte = 'マット',
        chrome = 'クローム',
        custom_color = 'カスタムカラー',
        section = 'セクション',
        primary = 'プライマリー',
        secondary = 'セカンダリー',
        pearlescent = 'パールセント',
        interior = 'インテリア',
        exterior = 'エクステリア',
        wheels = 'ホイール',
        neons = 'ネオン',
        xenon = 'キセノンヘッドライト',
        window_tint = 'ウィンドウティント',
        plate = 'ナンバープレート',
        repair = '修理',
        unknown = '不明',
        tire_smoke = 'タイヤスモーク',
        standard = 'スタンダード',
        custom = 'カスタム',
        toggle = '切り替え',
        enabled = '有効',
        disabled = '無効',
        color = '色',
        front_toggle = 'フロント切り替え',
        rear_toggle = 'リア切り替え',
        left_toggle = '左切り替え',
        right_toggle = '右切り替え',
        stock = 'ストック',
        armor = 'アーマーレベル',
        brakes = 'ブレーキレベル',
        engine = 'エンジンレベル',
        transmission = 'トランスミッションレベル',
        suspension = 'サスペンションレベル',
        turbo = 'ターボ',
        install_turbo = 'ターボを取り付ける',
        uninstall_turbo = 'ターボを取り外す',
    },
    progress = {
        nitrous = 'ナイトラス接続中',
        installing = '%sをインストール中',
        repairing = '%sを修理中',
        repair_vehicle = '車両を修理中',
        repair_tire = 'タイヤを修理中',
        cleaning = '車両を清掃中',
        tuner_chip = 'チューナー接続中',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end