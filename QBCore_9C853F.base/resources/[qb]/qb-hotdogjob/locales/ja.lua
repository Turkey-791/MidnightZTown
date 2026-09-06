--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        no_money = '所持金が足りません',
        too_far = 'ホットドッグスタンドから離れすぎています',
        no_stand = 'ホットドッグスタンドを持っていません',
        cust_refused = 'お客様に拒否されました！',
        no_stand_found = 'あなたのホットドッグスタンドが見つかりませんでした。預り金は返却されません！',
        no_more = '評議会の前では、これ以上%{value}はありません',
        deposit_notreturned = 'ホットドッグスタンドがありませんでした',
        no_dogs = 'ホットドッグを持っていません',
    },
    success = {
        deposit = '$%{deposit}の預り金を支払いました！',
        deposit_returned = '$%{deposit}の預り金が返却されました！',
        sold_hotdogs = '%{value}個のホットドッグを$%{value2}で販売しました',
        made_hotdog = '%{value}個のホットドッグを作りました',
        made_luck_hotdog = '%{value}個の%{value2}ホットドッグを作りました',
    },
    info = {
        command = "スタンドを削除 (管理者のみ)",
        blip_name = 'ホットドッグスタンド',
        start_working = '[E] 作業開始',
        start_work = '作業開始',
        stop_working = '[E] 作業終了',
        stop_work = '作業終了',
        grab_stall = '[~g~G~s~] 屋台を掴む',
        drop_stall = '[~g~G~s~] 屋台を放す',
        grab = '屋台を掴む',
        prepare = 'ホットドッグを準備する',
        toggle_sell = '販売を切り替える',
        selling_prep = '[~g~E~s~] ホットドッグ準備 [販売中: ~g~販売中~w~]',
        not_selling = '[~g~E~s~] ホットドッグ準備 [販売中: ~r~販売していません~w~]',
        sell_dogs = '[~g~7~s~] %{value}個のホットドッグを$%{value2}で販売する / [~g~8~s~] 拒否する',
        sell_dogs_target = '%{value}個のホットドッグを$%{value2}で販売する',
        admin_removed = "ホットドッグスタンドが削除されました",
        label_a = "完璧 (A)",
        label_b = "普通 (B)",
        label_c = "イマイチ (C)"
    },
    keymapping = {
        gkey = 'ホットドッグスタンドを放す',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end