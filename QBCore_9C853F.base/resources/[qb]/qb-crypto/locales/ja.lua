--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        you_dont_have_a_cryptostick = 'クリプトスティックを持っていません',
        cryptostick_malfunctioned = 'クリプトスティックが故障しました'
    },
    success = {
        you_have_exchanged_your_cryptostick_for = 'クリプトスティックを%{amount} QBitと交換しました'
    },
    credit = {
        there_are_amount_credited = '%{amount} Qbitが入金されました！',
        you_have_qbit_purchased = '%{dataCoins} Qbitを購入しました！'
    },
    debit = {
        you_have_sold = '%{dataCoins} Qbit売却しました！'
    },
    text = {
        enter_usb = '[E] - USBを挿入',
        system_is_rebooting = 'システムを再起動中 - %{rebootInfoPercentage} %',
        you_have_not_given_a_new_value = '新しい値を入力していません...現在の値: %{crypto}',
        this_crypto_does_not_exist = 'この暗号通貨は存在しません。利用可能な暗号通貨: Qbit',
        you_have_not_provided_crypto_available_qbit = '暗号通貨が提供されていません。利用可能: Qbit',
        the_qbit_has_a_value_of = 'Qbitの価値は: %{crypto}',
        you_have_with_a_value_of = 'あなたは%{mypocket}の価値を持つ%{playerPlayerDataMoneyCrypto} QBitを持っています,-'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end