--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        ['already_mission'] = 'すでにNPCミッションを実行中です',
        ['not_in_taxi'] = 'タクシーに乗っていません',
        ['missing_meter'] = 'この車両にはタクシーメーターがありません',
        ['no_vehicle'] = "車両に乗っていません",
        ['not_active_meter'] = 'タクシーメーターがアクティブではありません',
        ['ride_canceled'] = '衝突回数が多すぎたため、乗車はキャンセルされました！',
        ['broken_taxi'] = '作業を再開する前に、タクシーを修理する必要があります！',
        ['crash_warning'] = 'あと%{d}回衝突すると、お客様は乗車を中止し、支払いは行われません！',
        ['time'] = '回',
        ['times'] = '回',
    },
    success = {
        ['mission_cancelled'] = 'ミッションは正常にキャンセルされました',
    },
    info = {
        ['person_was_dropped_off'] = '乗客が降車しました！',
        ['npc_on_gps'] = 'NPCはGPSに表示されています',
        ['go_to_location'] = 'NPCを指定された場所に連れて行ってください',
        ['vehicle_parking'] = '[E] 車両駐車',
        ['job_vehicles'] = '[E] ジョブ車両',
        ['drop_off_npc'] = '[E] NPCを降ろす',
        ['call_npc'] = '[E] NPCを呼ぶ',
        ['blip_name'] = 'ダウンタウンキャブ',
        ['taxi_label_1'] = 'スタンダードキャブ',
        ['no_spawn_point'] = 'タクシーを配置する場所が見つかりません',
        ['taxi_returned'] = 'タクシーを駐車しました',
        ['on_duty'] = '[E] - 勤務を開始する',
        ['off_duty'] = '[E] - 勤務を終了する',
        ['tip_received'] = '安全運転により$%dのチップを受け取りました',
        ['tip_not_received'] = '今後チップを受け取りたい場合は、タクシーを衝突させないようにしてください',
    },
    menu = {
        ['taxi_menu_header'] = 'タクシー車両',
        ['close_menu'] = '⬅ メニューを閉じる',
        ['boss_menu'] = 'ボスメニュー'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end