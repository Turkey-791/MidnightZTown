--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    notify = {
        ydhk = 'この車両のキーを持っていません。',
        nonear = 'キーを渡せる人が近くにいません',
        vlock = '車両をロックしました！',
        vunlock = '車両のロックを解除しました！',
        vlockpick = 'ドアの鍵をこじ開けることに成功しました！',
        fvlockpick = '鍵が見つからず、イライラしています。',
        vgkeys = 'キーを渡しました。',
        vgetkeys = '車両のキーを手に入れました！',
        fpid = 'プレイヤーIDとプレート引数を入力してください',
        cjackfail = 'カージャックに失敗しました！',
        vehclose = '近くに車両がありません！',
    },
    progress = {
        takekeys = '身体からキーを回収中...',
        hskeys = '車のキーを捜索中...',
        acjack = 'カージャックを試行中...',
    },
    info = {
        skeys = '~g~[H]~w~ - キーを捜索',
        tlock = '車両のロックを切り替える',
        palert = '車両盗難進行中。種類: ',
        engine = 'エンジンの切り替え',
    },
    addcom = {
        givekeys = '誰かにキーを渡す。IDがない場合は、最も近くにいる人か、車両内の全員に渡します。',
        givekeys_id = 'ID',
        givekeys_id_help = 'プレイヤーID',
        addkeys = '誰かのために車両のキーを追加します。',
        addkeys_id = 'ID',
        addkeys_id_help = 'プレイヤーID',
        addkeys_plate = 'プレート',
        addkeys_plate_help = 'プレート',
        rkeys = '誰かのために車両のキーを削除します。',
        rkeys_id = 'ID',
        rkeys_id_help = 'プレイヤーID',
        rkeys_plate = 'プレート',
        rkeys_plate_help = 'プレート',
    }

}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end