--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    progress = {
        refueling = '給油中...',
    },
    success = {
        refueled = '車両に給油しました',
    },
    error = {
        no_money = '所持金が足りません',
        no_vehicle = '近くに車両が見つかりません',
        no_vehicles = '近くに車両がありません',
        no_jerrycan = 'ガソリン缶を持っていません',
        vehicle_full = '車両はすでに燃料満タンです',
        no_fuel_can = 'ガソリン缶に燃料が入っていません',
        no_nozzle = 'ノズルが取り付けられた車両が近くにありません',
        too_far = 'ポンプから離れすぎました、ノズルは返却されました',
        wrong_side = '車両の燃料タンクは反対側です',
    },
    target = {
        put_fuel = '燃料を入れる',
        get_nozzle = 'ノズルを取る',
        buy_jerrycan = 'ガソリン缶を購入 $%{price}',
        refill_jerrycan = 'ガソリン缶に補充 $%{price}',
        refill_fuel = '燃料を補充',
        nozzle_put = 'ノズルを取り付ける',
        nozzle_remove = 'ノズルを外す',
        return_nozzle = 'ノズルを戻す',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end