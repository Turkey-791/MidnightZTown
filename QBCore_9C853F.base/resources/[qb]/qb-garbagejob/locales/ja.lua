--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        ["cancled"] = "キャンセルされました",
        ["no_truck"] = "トラックを持っていません！",
        ["not_enough"] = "所持金が足りません (%{value} 必要)",
        ["too_far"] = "ドロップオフ地点から離れすぎています",
        ["early_finish"] = "早期終了のため (完了: %{completed} 合計: %{total})、預り金は返却されません。",
        ["never_clocked_on"] = "一度も勤務を開始していません！",
        ["all_occupied"] = "全ての駐車スペースが埋まっています",
        ["job"] = "ジョブセンターで仕事を受けなければなりません",
    },
    success = {
        ["clear_routes"] = "ユーザーのルートをクリアしました。%{value}件のルートが保存されていました",
        ["pay_slip"] = "$%{total}を獲得しました。給料の預り金%{deposit}は銀行口座に振り込まれました！",
    },
    target = {
        ["talk"] = '清掃員と話す',
        ["grab_garbage"] = "ゴミ袋を掴む",
        ["dispose_garbage"] = "ゴミ袋を処分する",
    },
    menu = {
        ["header"] = "清掃員メインメニュー",
        ["collect"] = "給料を受け取る",
        ["return_collect"] = "ここでトラックを返却して給料を受け取る！",
        ["route"] = "ルートをリクエスト",
        ["request_route"] = "ゴミ収集ルートをリクエストする",
    },
    info = {
        ["payslip_collect"] = "[E] - 給料明細",
        ["payslip"] = "給料明細",
        ["not_enough"] = "預り金を支払うのに十分な所持金がありません。預り金の費用は$%{value}です",
        ["deposit_paid"] = "$%{value}の預り金を支払いました！",
        ["no_deposit"] = "この車両に預り金を支払っていません。。",
        ["truck_returned"] = "トラックが返却されました。給料明細を受け取って給料と預り金を回収してください！",
        ["bags_left"] = "まだ%{value}個のゴミ袋が残っています！",
        ["bags_still"] = "まだ%{value}個のゴミ袋があそこにあります！",
        ["all_bags"] = "全てのゴミ袋の処理が終わりました。次の場所に進んでください！",
        ["depot_issue"] = "車庫で問題が発生しました。すぐに戻ってください！",
        ["done_working"] = "作業は終了です！車庫に戻ってください。",
        ["started"] = "作業を開始しました。場所はGPSにマークされています！",
        ["grab_garbage"] = "[E] ゴミ袋を掴む",
        ["stand_grab_garbage"] = "ここに立ってゴミ袋を掴んでください。",
        ["dispose_garbage"] = "[E] ゴミ袋を処分する",
        ["progressbar"] = "ゴミをゴミ収集車に入れています。。",
        ["garbage_in_truck"] = "ゴミ袋をトラックに入れてください。。",
        ["stand_here"] = "ここに立ってください。。",
        ["found_crypto"] = "床で暗号スティックを見つけました",
        ["payout_deposit"] = "(+ $%{value} 預り金)",
        ["store_truck"] =  "[E] - ゴミ収集トラックを車庫に入れる",
        ["get_truck"] =  "[E] - ゴミ収集トラック",
        ["picking_bag"] = "ゴミ袋を掴んでいます。。",
        ["talk"] = "[E] 清掃員と話す",
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end