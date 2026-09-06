--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        not_your_vehicle = 'これはあなたの車両ではありません..',
        vehicle_does_not_exist = '車両は存在しません',
        not_enough_money = 'お金が足りません',
        finish_payments = 'この車両を売却する前に、支払いを完了する必要があります..',
        no_space_on_lot = 'この駐車場にあなたの車を置くスペースがありません！',
        not_in_veh = 'あなたは車両に乗っていません！',
        not_for_sale = 'この車両は売り物ではありません！',
    },
    menu = {
        view_contract = '契約書を見る',
        view_contract_int = '[E] 契約書を見る',
        sell_vehicle = '車両を売却',
        sell_vehicle_help = '仲間に車両を売却します！',
        sell_back = '車両を売却し戻す！',
        sell_back_help = '割引価格で車を売却し戻します！',
        interaction = '[E] 車両を売却',
    },
    success = {
        sold_car_for_price = '$%{value}であなたの車を売却しました',
        car_up_for_sale = 'あなたの車が売りに出されました！ 価格 - $%{value}',
        vehicle_bought = '車両を購入しました',
    },
    info = {
        confirm_cancel = '~g~Y~w~ - 確定 / ~r~N~w~ - キャンセル ~g~',
        vehicle_returned = 'あなたの車両が返却されました',
        used_vehicle_lot = '中古車販売所',
        sell_vehicle_to_dealer = '[~g~E~w~] - ディーラーに車両を売却する（価格：~g~$%{value}）',
        view_contract = '[~g~E~w~] - 車両契約を見る',
        cancel_sale = '[~r~G~w~] - 車両の売却をキャンセル',
        model_price = '%{value}, 価格: ~g~$%{value2}',
        are_you_sure = '本当に車両の売却をキャンセルしますか？',
        yes_no = '[~g~7~w~] - はい | [~r~8~w~] - いいえ',
        place_vehicle_for_sale = '[~g~E~w~] - オーナーによる車両販売を始める',
    },
    charinfo = {
        firstname = '不明',
        lastname = '不明',
        account = 'アカウント不明..',
        phone = '電話番号不明..',
    },
    mail = {
        sender = 'Larrys RV Sales',
        subject = '車両を売却しました！',
        message = 'あなたは%{value2}の売却で$%{value}を手に入れました。',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end