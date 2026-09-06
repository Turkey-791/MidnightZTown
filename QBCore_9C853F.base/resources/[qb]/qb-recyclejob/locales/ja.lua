--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    success = {
        you_have_been_clocked_in = "出勤しました",
        sold = '%{amount}個の%{item}を$%{price}で売却しました',
    },
    text = {
        point_enter_warehouse = "[E] 倉庫に入る",
        enter_warehouse= "倉庫に入る",
        exit_warehouse= "倉庫から出る",
        point_exit_warehouse = "[E] 倉庫から出る",
        toggle_duty = "勤務状態を切り替える",
        point_toggle_duty = "[E] 勤務状態を切り替える",
        hand_in_package = "荷物を渡す",
        point_hand_in_package = "[E] 荷物を渡す",
        get_package = "荷物を受け取る",
        point_get_package = "[E] 荷物を受け取る",
        picking_up_the_package = "荷物を集めています",
        unpacking_the_package = "荷物を開梱しています",
        clock_in = "出勤しました",
        clock_out = "退勤しました",
        sell_materials = "材料を売却する",
        point_sell_materials = "[E] 材料を売却する",
        price = "価格: $%{price}",
        amount = "数量",
        sell = "売却",
    },
    error = {
        you_have_clocked_out = "退勤しました",
        nothing_to_sell = "売却するものがありません",
        out_of_stock = "%{item}は在庫切れです",
        too_far_to_sell = "売却するには遠すぎます",
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end