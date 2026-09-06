--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        no_people_nearby = "近くに人がいません",
        no_vehicle_found = "車両が見つかりませんでした",
        extra_deactivated = "追加%{extra}は無効になりました",
        extra_not_present = "追加%{extra}はこの車両に存在しません",
        not_driver = "あなたはこの車両の運転手ではありません",
        vehicle_driving_fast = "この車両は速すぎます",
        seat_occupied = "この座席は使用中です",
        race_harness_on = "レーシングハーネスを装着しているため、切り替えできません",
        obj_not_found = "要求されたオブジェクトを作成できませんでした",
        not_near_ambulance = "救急車の近くにいません",
        far_away = "遠すぎます",
        stretcher_in_use = "このストレッチャーは既に使用中です",
        not_kidnapped = "この人物を誘拐していません",
        trunk_closed = "トランクは閉まっています",
        cant_enter_trunk = "このトランクには入れません",
        already_in_trunk = "あなたは既にトランクの中にいます",
        someone_in_trunk = "誰かが既にトランクの中にいます"
    },
    progress = {
        flipping_car = "車両をひっくり返しています..."
    },
    success = {
        extra_activated = "追加%{extra}が有効になりました",
        entered_trunk = "トランクに入りました"
    },
    info = {
        no_variants = "バリエーションがないようです",
        wrong_ped = "このPEDモデルではこのオプションは許可されていません",
        nothing_to_remove = "削除するものが何も見つかりません",
        already_wearing = "既にそれを着用しています",
        switched_seats = "%{seat}に移動しました"
    },
    general = {
        command_description = "ラジアルメニューを開く",
        push_stretcher_button = "[E] - ストレッチャーを押す",
        stop_pushing_stretcher_button = "~g~E~w~ - 押すのをやめる",
        lay_stretcher_button = "[G] - ストレッチャーに横たわる",
        push_position_drawtext = "ここを押す",
        get_off_stretcher_button = "[G] - ストレッチャーから降りる",
        get_out_trunk_button = "[E] トランクから出る",
        close_trunk_button = "[G] トランクを閉める",
        open_trunk_button = "[G] トランクを開ける",
        getintrunk_command_desc = "トランクに入る",
        putintrunk_command_desc = "プレイヤーをトランクに入れる"
    },
    options = {
        emergency_button = "緊急ボタン",
        driver_seat = "運転席",
        passenger_seat = "助手席",
        other_seats = "他の座席",
        rear_left_seat = "後部左座席",
        rear_right_seat = "後部右座席"
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end