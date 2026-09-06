--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    error = {
        lockpick_fail = "失敗しました",
        door_not_found = "モデルハッシュを受信しませんでした。ドアが透明な場合は、ドアの枠を狙ってください",
        same_entity = "両方のドアを同じエンティティにすることはできません",
        door_registered = "このドアはすでに登録されています",
        door_identifier_exists = "このIDを持つドアはすでに設定に存在します。(%s)",
    },
    success = {
        lockpick_success = "成功"
    },
    general = {
        locked = "ロックされています",
        unlocked = "ロック解除されています",
        locked_button = "[E] - ロックされています",
        unlocked_button = "[E] - ロック解除されています",
        keymapping_description = "ドアロックとやり取りする",
        keymapping_remotetriggerdoor = "ドアを遠隔操作する",
        locked_menu = "ロックされています",
        pickable_menu = "ピッキング可能",
        cantunlock_menu = 'ロック解除できません',
        hidelabel_menu = 'ドアラベルを隠す',
        distance_menu = "最大距離",
        item_authorisation_menu = "アイテム認証",
        citizenid_authorisation_menu = "市民ID認証",
        gang_authorisation_menu = "ギャング認証",
        job_authorisation_menu = "ジョブ認証",
        jobGrade_authorisation_menu = "ジョブグレード (オプション)",
        gangGrade_authorisation_menu = "ギャンググレード (オプション)",
        doortype_title = "ドアの種類",
        doortype_door = "単一ドア",
        doortype_double = "二重ドア",
        doortype_sliding = "単一スライドドア",
        doortype_doublesliding = "二重スライドドア",
        doortype_garage = "ガレージ",
        dooridentifier_title = "一意のID",
        doorlabel_title = "ドアラベル",
        configfile_title = "設定ファイル名",
        submit_text = "送信",
        newdoor_menu_title = "新しいドアを追加",
        newdoor_command_description = "ドアロックシステムに新しいドアを追加する",
        doordebug_command_description = "デバッグモードを切り替える",
        warning = "警告",
        created_by = "作成者",
        warn_no_permission_newdoor = "%{player} (%{license})は許可なく新しいドアを追加しようとしました (ソース: %{source})",
        warn_no_authorisation = "%{player} (%{license})は認証なしにドアを開けようとしました (送信: %{doorID})",
        warn_wrong_doorid = "%{player} (%{license})は無効なドアを更新しようとしました (送信: %{doorID})",
        warn_wrong_state = "%{player} (%{license})は無効な状態に更新しようとしました (送信: %{state})",
        warn_wrong_doorid_type = "%{player} (%{license})は適切なドアIDを送信しませんでした (送信: %{doorID})",
        warn_admin_privilege_used = "%{player} (%{license})は管理者の特権を使用しました (ソース: %{source})",
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end