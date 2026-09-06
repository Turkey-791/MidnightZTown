--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        smash_own = "所有している車両を壊すことはできません。",
        cannot_scrap = "この車両は解体できません。",
        not_driver = "あなたは運転手ではありません",
        demolish_vehicle = "現在、車両を解体することは許可されていません",
        canceled = "キャンセルされました",
    },
    text = {
        scrapyard = 'スクラップヤード',
        disassemble_vehicle = '[E] - 車両を分解する',
        disassemble_vehicle_target = '車両を分解する',
        email_list = "[E] - 車両リストをメールで送信",
        email_list_target = "車両リストをメールで送信",
        demolish_vehicle = "車両を解体する",
    },
    email = {
        sender = "ターナーズオートレッキング",
        subject = "車両リスト",
        message = "車両の解体数は制限されています。<br />解体したものはすべて自分のものにできますが、私を煩わせない限りです。<br /><br /><strong>車両リスト:</strong><br />",
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end