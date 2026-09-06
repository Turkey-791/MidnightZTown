--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        already_driving_bus = 'すでにバスを運転しています',
        not_in_bus = 'バスに乗っていません',
        one_bus_active = '一度に1台のバスしかアクティブにできません',
        drop_off_passengers = '業務を終了する前に乗客を降ろしてください',
        exploit = "不正行為を試みています"
    },
    success = {
        dropped_off = '乗客を降ろしました',
    },
    info = {
        bus = 'バス',
        goto_busstop = 'バス停へ向かってください',
        busstop_text = '[E] バス停',
        bus_plate = 'BUS', -- 3文字または4文字の長さにすることができます (ランダムな4桁の数字を使用)
        bus_depot = 'バス車庫',
        bus_stop_work = '[E] 勤務を終了',
        bus_job_vehicles = '[E] 仕事用車両'
    },
    menu = {
        bus_header = 'バス車両',
        bus_close = '⬅ メニューを閉じる'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end