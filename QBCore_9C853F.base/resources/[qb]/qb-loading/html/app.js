/*
FXServer：Ver17000／更新日：2025年7月31日
日本語翻訳：揚げポテGameSV (@agepote_x_info)
当翻訳はFiveMとは関係なく非公認です。
※二次配布及び自作発言禁止
*/

const { ref } = Vue

// ダイアログメニューとカルーセルの言語をここでカスタマイズします

const load = Vue.createApp({
  setup () {
    return {
      CarouselText1: '共有フォルダからアイテム、車両、ジョブ、ギャングを追加/削除できます。',
      CarouselSubText1: '写真撮影者: Markyoo#8068',
      CarouselText2: '追加のプレイヤーデータを追加するには、qb-core player.luaファイルを変更することで可能です。',
      CarouselSubText2: '写真撮影者: ihyajb#9723',
      CarouselText3: 'サーバー固有の調整はすべて、ビルド全体のconfig.luaファイルで行うことができます。',
      CarouselSubText3: '写真撮影者: FLAPZ[INACTIV]#9925',
      CarouselText4: 'さらにサポートが必要な場合は、discord.gg/qbcore のコミュニティに参加してください。',
      CarouselSubText4: '写真撮影者: Robinerino#1312',

      DownloadTitle: 'QBCoreサーバーをダウンロード中',
      DownloadDesc: "QBCoreサーバーでプレイするために必要なすべてのリソース/アセットのダウンロードを開始しますので、しばらくお待ちください。 \n\nダウンロードが正常に完了すると、サーバーに配置され、この画面は消えます。PCを離れたり、電源を切ったりしないでください。 ",

      SettingsTitle: '設定',
      AudioTrackDesc1: '無効にすると、現在再生中の音声トラックが停止します。',
      AutoPlayDesc2: '無効にすると、カルーセルの画像が循環を停止し、最後に表示されたままになります。',
      PlayVideoDesc3: '無効にすると、動画の再生が停止し、一時停止したままになります。',

      KeybindTitle: '初期のキー割り当て',
      Keybind1: 'インベントリを開く',
      Keybind2: 'プロキシミティを循環',
      Keybind3: 'スマホを開く',
      Keybind4: 'シートベルト切り替え',
      Keybind5: 'ターゲットメニューを開く',
      Keybind6: 'ラジアルメニュー',
      Keybind7: 'HUDメニューを開く',
      Keybind8: '無線で話す',
      Keybind9: 'スコアボードを開く',
      Keybind10: '車両のロック',
      Keybind11: 'エンジン切り替え',
      Keybind12: 'ポインターエモート',
      Keybind13: 'キー割り当てスロット',
      Keybind14: 'ハンズアップエモート',
      Keybind15: 'アイテムスロットを使用',
      Keybind16: 'クルーズコントロール',

      firstap: ref(true),
      secondap: ref(true),
      thirdap: ref(true),
      firstslide: ref(1),
      secondslide: ref('1'),
      thirdslide: ref('5'),
      audioplay: ref(true),
      playvideo: ref(true),
      download: ref(true),
      settings: ref(false),
    }
  }
})

load.use(Quasar, { config: {} })
load.mount('#loading-main')

var audio = document.getElementById("audio");
audio.volume = 0.05;

function audiotoggle() {
    var audio = document.getElementById("audio");
    if (audio.paused) {
        audio.play();
    } else {
        audio.pause();
    }
}

function videotoggle() {
    var video = document.getElementById("video");
    if (video.paused) {
        video.play();
    } else {
        video.pause();
    }
}

let count = 0;
let thisCount = 0;

const handlers = {
    startInitFunctionOrder(data) {
        count = data.count;
    },

    initFunctionInvoking(data) {
        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (data.idx / count) * 100 + "%";
    },

    startDataFileEntries(data) {
        count = data.count;
    },

    performMapLoadFunction(data) {
        ++thisCount;

        document.querySelector(".thingy").style.left = "0%";
        document.querySelector(".thingy").style.width = (thisCount / count) * 100 + "%";
    },
};

window.addEventListener("message", function (e) {
    (handlers[e.data.eventName] || function () {})(e.data);
});