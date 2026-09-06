--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    info = {
        open_shop = '[E] ショップ',
        deliver_e = '~g~E~w~ - 商品を配達する',
        deliver = '商品を配達する',
    },
    error = {
        missing_license = '特定の商品に%{value}のライセンスがありません',
        no_deposit = '$%{value}の預り金が必要です',
        cancelled = 'キャンセルされました',
        vehicle_not_correct = 'これは商用車ではありません！',
        no_driver = 'これを行うには運転手でなければなりません..',
        no_work_done = "まだ何も作業をしていません..",
        backdoors_not_open = "車両の後部ドアが開いていません",
        get_out_vehicle = 'このアクションを実行するには、車両から降りる必要があります',
        too_far_from_trunk = '車両のトランクから箱を掴む必要があります',
        too_far_from_delivery = '配達ポイントにもっと近づく必要があります'
    },
    success = {
        dealer_verify = 'ディーラーライセンスが正常に確認されました',
        paid_with_cash = '$%{value} のデポジットを現金で支払いました',
        paid_with_bank = '銀行から$%{value}のデポジットが支払われました',
        refund_to_cash = '$%{value}のデポジットを現金で支払いました',
        you_earned = 'あなたは$%{value}を獲得しました',
        payslip_time = 'あなたは全てのお店を回りましたね…さあ、給与明細の時間です！',
    },
    mission = {
        store_reached = '店舗に到着したら、トランクに[E]の入った箱を積み込み、マーカーまで配達してください。',
        take_box = '製品の箱を取り出す',
        deliver_box = '製品の入った箱を納品する',
        another_box = '別の製品ボックスを入手する',
        goto_next_point = 'すべての製品をお届けしました。次の地点へ。',
        return_to_station = '全ての商品を配達しました。駅に戻ってください。',
        job_completed = 'ルートを完了しました'
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end