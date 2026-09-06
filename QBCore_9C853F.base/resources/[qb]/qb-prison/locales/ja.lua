--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        ["missing_something"] = "何かが足りないようです...",
        ["not_enough_police"] = "警察官が足りません...",
        ["door_open"] = "ドアは既に開いています...",
        ["cancelled"] = "処理がキャンセルされました...",
        ["didnt_work"] = "うまくいきませんでした...",
        ["emty_box"] = "箱は空です...",
        ["injail"] = "%{Time}ヶ月間、あなたは刑務所にいます...",
        ["item_missing"] = "アイテムが足りません...",
        ["escaped"] = "脱走しました...ここからとっとと消えろ！",
        ["do_some_work"] = "減刑のために何か仕事をしてください。現在の仕事: %{currentjob}",
        ["security_activated"] = "最高レベルの警備が作動しています。独房ブロックに留まってください！"
    },
    success = {
        ["found_phone"] = "電話を見つけました...",
        ["time_cut"] = "刑期を一部短縮しました。",
        ["free_"] = "あなたは自由です！楽しんでください！ :)",
        ["timesup"] = "あなたの時間です！面会所でチェックアウトしてください",
    },
    info = {
        ["timeleft"] = "まだ%{JAILTIME}ヶ月残っています...",
        ["lost_job"] = "あなたは無職です",
        ["job_interaction"] = "[E] 電気工事",
        ["job_interaction_target"] = "%{job}の仕事をしてください",
        ["received_property"] = "所持品が返却されました...",
        ["seized_property"] = "所持品は押収されました。刑期が終了したらすべて返却されます...",
        ["cells_blip"] = "独房",
        ["freedom_blip"] = "刑務所受付",
        ["canteen_blip"] = "食堂",
        ["work_blip"] = "刑務作業",
        ["target_freedom_option"] = "時間を確認",
        ["target_canteen_option"] = "食事を取る",
        ["police_alert_title"] = "新規通報",
        ["police_alert_description"] = "刑務所脱走",
        ["connecting_device"] = "デバイス接続中",
        ["working_electricity"] = "配線接続中"
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end