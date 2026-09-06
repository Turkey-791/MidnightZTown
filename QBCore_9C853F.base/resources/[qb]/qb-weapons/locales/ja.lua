--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        canceled = 'キャンセルされました',
        max_ammo = '最大弾薬容量',
        no_weapon = '武器を持っていません。',
        wrong_ammo = '弾薬の種類が間違っています。',
        no_support_attachment = 'このアタッチメントをサポートしていません。',
        no_weapon_in_hand = '手に武器を持っていません。',
        weapon_broken = 'この武器は壊れており、使用できません。',
        no_damage_on_weapon = 'この武器にダメージはありません。',
        weapon_broken_need_repair = '武器が壊れています。再度使用する前に修理する必要があります。',
        attachment_already_on_weapon = 'すでに%{value}が武器に装着されています。'
    },
    success = {
        reloaded = 'リロードしました'
    },
    info = {
        loading_bullets = '弾丸を装填中',
        repairshop_not_usable = 'この修理店は現在、~r~利用できません~w~。',
        weapon_will_repair = 'あなたの武器は修理されます。',
        take_weapon_back = '[E] - 武器を受け取る',
        repair_weapon_price = '[E] 武器を修理する、~g~$%{value}~w~',
        removed_attachment = '武器から%{value}を取り外しました！',
        hp_of_weapon = '武器の耐久度'
    },
    mail = {
        sender = 'タイロン',
        subject = '修理',
        message = 'あなたの%{value}は修理されました。場所で受け取ることができます。<br><br> またな'
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end