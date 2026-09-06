--[[
FXServer：Ver25770／更新日：2026年4月8日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
]]--

local Translations = {
    headers = {
        ['bsm'] = 'ボスメニュー - ',
    },
    body = {
        ['manage'] = '従業員の管理',
        ['managed'] = '従業員リストを確認',
        ['hire'] = '従業員の雇用',
        ['hired'] = '近くの市民を雇用',
        ['storage'] = '倉庫アクセス',
        ['storaged'] = '倉庫を開く',
        ['outfits'] = '服装',
        ['outfitsd'] = '保存された服装を見る',
        ['money'] = '資金管理',
        ['moneyd'] = '会社の残高を確認',
        ['mempl'] = '従業員の管理 - ',
        ['mngpl'] = '管理 ',
        ['grade'] = 'ランク: ',
        ['fireemp'] = '従業員を解雇',
        ['hireemp'] = '従業員の雇用 - ',
        ['cid'] = '市民ID: ',
        ['balance'] = '残高: $',
        ['deposit'] = '預り金',
        ['depositd'] = '口座にお金を預け入れる',
        ['withdraw'] = '引き出し',
        ['withdrawd'] = '口座からお金を引き出す',
        ['depositm'] = '預り金 <br> 利用可能な残高: $',
        ['withdrawm'] = '引き出し <br> 利用可能な残高: $',
        ['submit'] = '確認',
        ['amount'] = '金額',
        ['return'] = '戻る',
        ['exit'] = '戻る',
    },
    drawtext = {
        ['label'] = '[E] 仕事管理を開く',
    },
    target = {
        ['label'] = 'ボスメニュー',
    },
    headersgang = {
        ['bsm'] = 'ギャング管理 - ',
    },
    bodygang = {
        ['manage'] = 'ギャングメンバーの管理',
        ['managed'] = 'ギャングメンバーを募集または解雇',
        ['hire'] = 'メンバーを募集',
        ['hired'] = 'ギャングメンバーを雇用',
        ['storage'] = '倉庫アクセス',
        ['storaged'] = 'ギャングのスタッシュを開く',
        ['outfits'] = '服装',
        ['outfitsd'] = '服装を変更',
        ['money'] = '資金管理',
        ['moneyd'] = 'ギャングの残高を確認',
        ['mempl'] = 'ギャングメンバーの管理 - ',
        ['mngpl'] = '管理 ',
        ['grade'] = 'ランク: ',
        ['fireemp'] = '解雇',
        ['hireemp'] = 'ギャングメンバーを雇用 - ',
        ['cid'] = '市民ID: ',
        ['balance'] = '残高: $',
        ['deposit'] = '預り金',
        ['depositd'] = '口座にお金を預け入れる',
        ['withdraw'] = '引き出し',
        ['withdrawd'] = '口座からお金を引き出す',
        ['depositm'] = '預り金 <br> 利用可能な残高: $',
        ['withdrawm'] = '引き出し <br> 利用可能な残高: $',
        ['submit'] = '確認',
        ['amount'] = '金額',
        ['return'] = '戻る',
        ['exit'] = '終了',
    },
    drawtextgang = {
        ['label'] = '[E] ギャング管理を開く',
    },
    targetgang = {
        ['label'] = 'ギャングメニュー',
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end