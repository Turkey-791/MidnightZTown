--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        canceled = 'キャンセルされました',
        bled_out = '出血多量で倒れました...',
        impossible = '実行不可能です...',
        no_player = '近くにプレイヤーがいません',
        no_firstaid = '救急キットが必要です',
        no_bandage = '包帯が必要です',
        beds_taken = 'ベッドが塞がっています...',
        possessions_taken = '持ち物がすべて奪われました...',
        not_enough_money = '所持金が足りません...',
        cant_help = 'この人を助けることはできません...',
        not_ems = 'あなたはEMSではありません、またはログインしていません',
        not_online = 'プレイヤーがオンラインではありません'
    },
    success = {
        revived = '人を蘇生しました',
        healthy_player = 'プレイヤーは健康です',
        helped_player = 'その人を助けました',
        wounds_healed = '傷が治りました！',
        being_helped = '助けてもらっています...'
    },
    info = {
        civ_died = '市民が死亡',
        civ_down = '市民が倒れています',
        civ_call = '市民からの通報',
        self_death = '自分自身またはNPC',
        wep_unknown = '不明',
        respawn_txt = 'リスポーンまで: ~r~%{deathtime}~s~ 秒',
        respawn_revive = '$~r~%{cost}~s~ を払ってリスポーンするには [~r~E~s~] を %{holdtime} 秒間長押し',
        bleed_out = '出血死まで: ~r~%{time}~s~ 秒',
        bleed_out_help = '出血死まで: ~r~%{time}~s~ 秒、助けてもらえます',
        request_help = '助けを求めるには [~r~G~s~] を押す',
        help_requested = 'EMS隊員に通知されました',
        amb_plate = 'AMBU',  -- 最後の4桁がランダムな数字になるため、4文字のみにする
        heli_plate = 'LIFE', -- 最後の4桁がランダムな数字になるため、4文字のみにする
        status = '状態確認',
        is_status = '%{status}です',
        healthy = '完全に健康になりました！',
        safe = '病院セーフ',
        pb_hospital = 'ピルボックス病院',
        paleto_hospital = 'パレト病院',
        pain_message = 'あなたの%{limb}は%{severity}です',
        many_places = 'あちこちが痛みます...',
        bleed_alert = 'あなたは%{bleedstate}',
        ems_alert = 'EMSアラート - %{text}',
        mr = 'Mr.',
        mrs = 'Mrs.',
        dr_needed = '%{hospital}で医師が必要です',
        ems_report = 'EMSレポート',
        message_sent = '送信するメッセージ',
        check_health = 'プレイヤーの体力を確認',
        heal_player = 'プレイヤーを治療',
        revive_player = 'プレイヤーを蘇生',
        revive_player_a = 'プレイヤーまたは自分自身を蘇生 (管理者のみ)',
        player_id = 'プレイヤーID (空欄可)',
        pain_level = '自分またはプレイヤーの痛みのレベルを設定 (管理者のみ)',
        kill = 'プレイヤーまたは自分自身をキル (管理者のみ)',
        heal_player_a = 'プレイヤーまたは自分自身を治療 (管理者のみ)',
    },
    mail = {
        subject = '病院の費用',
        message = '%{gender} %{lastname}様<br /><br />前回の病院受診にかかった費用に関するメールをお送りします。<br />最終費用は <strong>$%{costs}</strong> でした。<br /><br />一日も早い回復をお祈り申し上げます！'
    },
    states = {
        irritated = 'イライラしている',
        quite_painful = 'かなり痛い',
        painful = '痛い',
        really_painful = '本当に痛い',
        little_bleed = '少し出血している...',
        bleed = '出血している...',
        lot_bleed = '大量に出血している...',
        big_bleed = '非常に出血している...',
    },
    menu = {
        amb_vehicles = '救急車両',
        status = '健康状態',
        close = '⬅ メニューを閉じる',
    },
    text = {
        pstash_button = '[E] - 個人用スタッシュ',
        pstash = '個人用スタッシュ',
        onduty_button = '[E] - 勤務を開始',
        offduty_button = '[E] - 勤務を終了',
        duty = '勤務開始/終了',
        armory_button = '[E] - 武器庫',
        armory = '武器庫',
        veh_button = '[E] - 車両を取り出す / 保管する',
        heli_button = '[E] - ヘリコプターを取り出す / 保管する',
        elevator_roof = '[E] - エレベーターで屋上へ',
        elevator_main = '[E] - エレベーターで下へ',
        bed_out = '[E] - ベッドから出る',
        call_doc = '[E] - 医師を呼ぶ',
        call = '通報',
        check_in = '[E] チェックイン',
        check = 'チェックイン',
        lie_bed = '[E] - ベッドに横になる'
    },
    body = {
        head = '頭部',
        neck = '首',
        spine = '脊椎',
        upper_body = '上半身',
        lower_body = '下半身',
        left_arm = '左腕',
        left_hand = '左手',
        left_fingers = '左指',
        left_leg = '左脚',
        left_foot = '左足',
        right_arm = '右腕',
        right_hand = '右手',
        right_fingers = '右指',
        right_leg = '右脚',
        right_foot = '右足',
    },
    progress = {
        ifaks = 'IFAKSを使用中...',
        bandage = '包帯を使用中...',
        painkillers = '鎮痛剤を使用中...',
        revive = '蘇生中...',
        healing = '傷を治療中...',
        checking_in = 'チェックイン中...',
    },
    logs = {
        death_log_title = '%{playername} (%{playerid}) が死亡しました。',
        death_log_message = '%{killername}が**%{weaponlabel}** (%{weaponname})で%{playername}を殺害しました',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
