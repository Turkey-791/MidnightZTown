--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        negative = "負の量を売ろうとしていますか？",
        no_melt = "溶かすものを何もくれませんでした...",
        no_items = "アイテムが足りません",
        inventory_full = "インベントリがいっぱいで、すべてのアイテムを受け取れません。次回はインベントリがいっぱいになっていないか確認してください。失われたアイテム: %{value}"
    },
    success = {
        sold = "%{value} x %{value2} を%{value3}ドルで売却しました",
        items_received = "%{value} x %{value2} を受け取りました",
    },
    info = {
        title = "質屋",
        subject = "アイテムの溶解",
        message = "アイテムの溶解が終わりました。いつでも受け取りに来てください。",
        open_pawn = "質屋を開く",
        sell = "アイテムを売る",
        sell_pawn = "質屋にアイテムを売る",
        melt = "アイテムを溶かす",
        melt_pawn = "溶解ショップを開く",
        melt_pickup = "溶解済みアイテムを受け取る",
        pawn_closed = "質屋は閉まっています。午前%{value}時から午後%{value2}時の間にまた来てください。",
        sell_items = "販売価格 %{value}ドル",
        back = "⬅ 戻る",
        melt_item = "%{value}を溶かす",
        max = "最大量 %{value}",
        submit = "溶かす",
        melt_wait = "%{value}分ください。そうすればあなたの物を溶かします"
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end