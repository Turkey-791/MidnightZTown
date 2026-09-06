--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        not_in_range = '市役所から離れすぎです'
    },
    success = {
        recived_license = 'あなたは$%{value}で%{value}を受け取りました'
    },
    info = {
        new_job_app = 'あなたの申請書は(%{job})のボスに送られました',
        bilp_text = '市役所サービス',
        city_services_menu = '~g~E~w~ - 市役所サービスメニュー',
        id_card = 'IDカード',
        driver_license = '運転免許証',
        weaponlicense = '銃器ライセンス',
        new_job = '新しい仕事おめでとうございます！ (%{job})',
    },
    email = {
        jobAppSender = "%{job}",
        jobAppSub = "%(job)へのご応募ありがとうございます。",
        jobAppMsg = "こんにちは %{gender} %{lastname}様<br /><br />%{job}はあなたの申請書を受け取りました。<br /><br />ボスがあなたのリクエストを確認しており、都合がつき次第、面接のため連絡いたします。<br /><br />重ねて、ご応募いただきありがとうございます。",
        mr = 'Mr',
        mrs = 'Mrs',
        sender = 'タウンシップ',
        subject = '運転教習のリクエスト',
        message = 'こんにちは %{gender} %{lastname}様<br /><br />どなたかが運転教習を受けたいというメッセージをちょうど受け取りました<br />教えるご意思がおありでしたら、ご連絡ください：<br />氏名: <strong>%{firstname} %{lastname}</strong><br />電話番号: <strong>%{phone}</strong><br/><br/>敬具,<br />タウンシップ ロスサントス'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end