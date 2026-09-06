--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        fingerprints = 'ガラスに指紋が残っています',
        minimum_police = '最低%{value}人の警察官が必要です',
        wrong_weapon = 'あなたの武器は十分に強くありません..',
        to_much = 'ポケットに多すぎます'
    },
    success = {},
    info = {
        progressbar = 'ショーケースを破壊中',
    },
    general = {
        target_label = 'ショーケースを破壊する',
        drawtextui_grab = '[E] ショーケースを破壊する',
        drawtextui_broken = 'ショーケースは壊れています'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end