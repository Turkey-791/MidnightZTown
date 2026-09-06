--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        minimum_store_robbery_police = "警察官が足りません（%{MinimumStoreRobberyPolice}人必要）",
        not_driver = "あなたは運転手ではありません",
        demolish_vehicle = "現在、車両を解体することは許可されていません",
        process_canceled = "プロセスがキャンセルされました..",
        you_broke_the_lock_pick = "ロックピックが壊れました",
    },
    text = {
        the_cash_register_is_empty = "レジは空です",
        try_combination = "~g~E~w~ - 組み合わせを試す",
        safe_opened = "金庫が開きました",
        emptying_the_register= "レジを空にしています..",
        safe_code = "金庫コード: "
    },
    email = {
        shop_robbery = "10-31 | 店舗強盗",
        someone_is_trying_to_rob_a_store = "%{street}で店舗を強盗しようとしている者がいます（カメラID: %{cameraId1}）",
        storerobbery_progress = "店舗強盗進行中"
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end