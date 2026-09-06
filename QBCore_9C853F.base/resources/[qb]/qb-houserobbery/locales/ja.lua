--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        ['missing_something'] = '何か足りないようです…',
        ['not_enough_police'] = '警察官が足りません…',
        ['door_open'] = 'ドアはすでに開いています…',
        ['process_cancelled'] = '処理がキャンセルされました…',
        ['didnt_work'] = 'うまくいきませんでした…',
        ['emty_box'] = '箱は空です…',
        ['not_allowed_time'] = "この時間帯にはできません。"
    },
    success = {
        ['worked'] = 'うまくいきました！',
    },
    info = {
        ['palert'] = '空き巣強盗未遂',
        ['henter'] = '~g~E~w~ - 入る',
        ['hleave'] = '~g~E~w~ - 家から出る',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = '検索中…',
        ['hsempty'] = '空です…',
    },
    searching = {
        ['search_bcabinet'] = 'ベッドサイドキャビネットを検索',
        ['search_closet'] = 'クローゼットを検索',
        ['search_chest'] = 'チェストを検索',
        ['search_drawer'] = '引き出しを検索',
        ['search_cabinet'] = 'ナイトスタンドキャビネット',
        ['search_kcabinet'] = 'キッチンキャビネットを検索',
        ['search_shelves'] = '棚を検索',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end