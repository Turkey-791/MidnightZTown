--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        ["canceled"] = "キャンセルされました",
        ["911_chatmessage"] = "911メッセージ",
        ["take_off"] = "ダイビングスーツを脱ぐには /divingsuit コマンドを実行",
        ["not_wearing"] = "ダイビングギアを着用していません..",
        ["no_coral"] = "売るサンゴがありません..",
        ["not_standing_up"] = "ダイビングギアを着用するには立ち上がる必要があります",
        ["need_otube"] = "空のダイビングギアを満たすには酸素チューブが必要です",
        ["oxygenlevel"] = 'ギアレベルは%{oxygenlevel}で0%である必要があります'
    },
    success = {
        ["took_out"] = "ウェットスーツを脱ぎました",
        ["tube_filled"] = "チューブが正常に満たされました"
    },
    info = {
        ["collecting_coral"] = "サンゴを収集中",
        ["diving_area"] = "ダイビングエリア",
        ["collect_coral"] = "サンゴを収集",
        ["collect_coral_dt"] = "[E] - サンゴを収集",
        ["checking_pockets"] = "サンゴを売るためにポケットを確認中",
        ["sell_coral"] = "サンゴを売る",
        ["sell_coral_dt"] = "[E] - サンゴを売る",
        ["blip_text"] = "911 - ダイビングサイト",
        ["put_suit"] = "ダイビングスーツを着用",
        ["pullout_suit"] = "ダイビングスーツを取り出す..",
        ["cop_msg"] = "このサンゴは盗品かもしれません",
        ["cop_title"] = "違法ダイビング",
        ["command_diving"] = "ダイビングスーツを脱ぐ",
    },
    warning = {
        ["oxygen_one_minute"] = "残りの酸素は1分未満です",
        ["oxygen_running_out"] = "ダイビングギアの酸素が不足しています",
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end