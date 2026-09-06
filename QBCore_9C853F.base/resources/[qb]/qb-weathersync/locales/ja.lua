--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    weather = {
        now_frozen = '天気が固定されました。',
        now_unfrozen = '天気の固定が解除されました。',
        invalid_syntax = '無効な構文です。正しい構文は /weather <WeatherType> です。',
        invalid_syntaxc = '無効な構文です。代わりに /weather <WeatherType> を使用してください！',
        updated = '天気が更新されました。',
        invalid = '無効な天気のタイプです。有効なタイプは以下の通りです：\nEXTRASUNNY CLEAR NEUTRAL SMOG FOGGY OVERCAST CLOUDS CLEARING RAIN THUNDER SNOW BLIZZARD SNOWLIGHT XMAS HALLOWEEN ',
        invalidc = '無効な天気のタイプです。有効なタイプは以下の通りです：\nEXTRASUNNY CLEAR NEUTRAL SMOG FOGGY OVERCAST CLOUDS CLEARING RAIN THUNDER SNOW BLIZZARD SNOWLIGHT XMAS HALLOWEEN ',
        willchangeto = '天気が%{value}に変わります。',
        accessdenied = '/weather コマンドへのアクセスが拒否されました。',
    },
    dynamic_weather = {
        disabled = '動的な天気の変更は無効になりました。',
        enabled = '動的な天気の変更は有効になりました。',
    },
    time = {
        frozenc = '時間が固定されました。',
        unfrozenc = '時間の固定が解除されました。',
        now_frozen = '時間が固定されました。',
        now_unfrozen = '時間の固定が解除されました。',
        morning = '時間を午前に設定しました。',
        noon = '時間を正午に設定しました。',
        evening = '時間を夕方に設定しました。',
        night = '時間を夜に設定しました。',
        change = '時間が%{value}:%{value2}に変わりました。',
        changec = '時間が%{value}に変わりました！',
        invalid = '無効な構文です。正しい構文は time <時> <分> です！',
        invalidc = '無効な構文です。代わりに /time <時> <分> を使用してください！',
        access = '/time コマンドへのアクセスが拒否されました。',
    },
    blackout = {
        enabled = '停電が有効になりました。',
        enabledc = '停電が有効になりました。',
        disabled = '停電が無効になりました。',
        disabledc = '停電が無効になりました。',
    },
    help = {
        weathercommand = '天気を変更します。',
        weathertype = '天気のタイプ',
        availableweather = '利用可能なタイプ：extrasunny, clear, neutral, smog, foggy, overcast, clouds, clearing, rain, thunder, snow, blizzard, snowlight, xmas & halloween',
        timecommand = '時間を変更します。',
        timehname = '時間',
        timemname = '分',
        timeh = '0～23の数字',
        timem = '0～59の数字',
        freezecommand = '時間を固定/解除します。',
        freezeweathercommand = '動的な天気の変更を有効/無効にします。',
        morningcommand = '時間を9:00に設定します。',
        nooncommand = '時間を12:00に設定します。',
        eveningcommand = '時間を18:00に設定します。',
        nightcommand = '時間を23:00に設定します。',
        blackoutcommand = '停電モードを切り替えます。',
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end