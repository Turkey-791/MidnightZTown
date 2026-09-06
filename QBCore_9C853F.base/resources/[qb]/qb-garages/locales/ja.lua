--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        no_vehicles = 'この場所に車両はありません！',
        not_depot = 'あなたの車両は車庫にありません',
        not_owned = 'この車両は保管できません',
        not_correct_type = 'このタイプの車両はここに保管できません',
        not_enough = 'お金が足りません',
        no_garage = 'なし',
        vehicle_occupied = 'この車両は空ではないため保管できません',
        vehicle_not_tracked = '車両を追跡できませんでした',
        no_spawn = 'エリアが混雑しすぎています'
    },
    success = {
        vehicle_parked = '車両を保管しました',
        vehicle_tracked = '車両を追跡しました',
    },
    status = {
        out = '出庫中',
        garaged = 'ガレージ保管中',
        impound = '警察により押収中',
        house = '家',
    },
    info = {
        car_e = 'E - ガレージ',
        sea_e = 'E - ボートハウス',
        air_e = 'E - 格納庫',
        rig_e = 'E - リグ置き場',
        depot_e = 'E - 車庫',
        house_garage = 'E - 自宅ガレージ',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true
    })
end