--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    success = {
        success_message = "成功しました",
        fuses_are_blown = "ヒューズが飛びました",
        door_has_opened = "ドアが開きました"
    },
    error = {
        cancel_message = "キャンセルされました",
        safe_too_strong = "金庫のロックが強すぎるようです...",
        missing_item = "アイテムが足りません...",
        bank_already_open = "銀行はすでに開いています...",
        minimum_police_required = "最低でも警察官が%{police}人必要です",
        security_lock_active = "セキュリティロックが作動しているため、現在ドアを開けることはできません",
        wrong_type = "%{receiver}は引数'%{argument}'に正しい型を受け取りませんでした\n受け取った型: %{receivedType}\n受け取った値: %{receivedValue}\n予期された型: %{expected}",
        fuses_already_blown = "ヒューズはすでに飛んでいます...",
        event_trigger_wrong = "いくつかの条件が満たされていない状態で%{event}%{extraInfo}がトリガーされました。ソース: %{source}",
        missing_ignition_source = "点火源がありません"
    },
    general = {
        breaking_open_safe = "金庫を開けています...",
        connecting_hacking_device = "ハッキングデバイスを接続中...",
        fleeca_robbery_alert = "フリーサ銀行強盗未遂",
        paleto_robbery_alert = "パレト銀行強盗未遂",
        pacific_robbery_alert = "パシフィック銀行強盗未遂",
        break_safe_open_option_target = "金庫をこじ開ける",
        break_safe_open_option_drawtext = "[E] 金庫をこじ開ける",
        validating_bankcard = "銀行カードを認証中...",
        thermite_detonating_in_seconds = "テルミット爆弾は%{time}秒後に爆発します",
        bank_robbery_police_call = "10-90: 銀行強盗"
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end