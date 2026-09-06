--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    menus = {
        header = '製造メニュー',
        pickupworkBench = '作業台を回収',
        entercraftAmount = '製造数量を入力してください:',
    },
    notifications = {
        pickupBench = '作業台を回収しました。',
        invalidAmount = '無効な数量が入力されました',
        invalidInput = '無効な入力がされました',
        notenoughMaterials = "材料が足りません！",
        craftingCancelled = '製造をキャンセルしました',
        tablePlace = '作業台が設置されました',
        craftMessage = 'あなたは%sを製造しました',
        xpGain = '%sで%d XPを獲得しました',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end