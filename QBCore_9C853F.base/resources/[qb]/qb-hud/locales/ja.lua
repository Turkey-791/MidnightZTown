--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    notify = {
        ["hud_settings_loaded"] = "HUD設定が読み込みされました！",
        ["hud_restart"] = "HUDが再起動しています！",
        ["hud_start"] = "HUDが開始されました！",
        ["hud_command_info"] = "このコマンドは現在のHUD設定をリセットします！",
        ["load_square_map"] = "四角形マップを読み込み中...",
        ["loaded_square_map"] = "四角形マップが読み込みされました！",
        ["load_circle_map"] = "円形マップを読み込み中...",
        ["loaded_circle_map"] = "円形マップが読み込みされました！",
        ["cinematic_on"] = "シネマティックモードを有効にしました！",
        ["cinematic_off"] = "シネマティックモードを無効にしました！",
        ["engine_on"] = "エンジン始動！",
        ["engine_off"] = "エンジン停止！",
        ["low_fuel"] = "燃料レベルが低いです！",
        ["access_denied"] = "アクセスが拒否されました！",
        ["stress_gain"] = "ストレスを感じています！",
        ["stress_removed"] = "リラックスできました！"
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end