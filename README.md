## jRogue for macOS （日本語版 Rogue 5.4）
Rouge（ローグ）とは1980年に作られた最初期のRPGの一つで、一文字で表現されたキャラクターやプレイするたびにランダムに作られる迷宮などが特徴です。Rogueの最終版といわれるバージョン5.4を日本語化し、macOS Sierraで問題なく遊べるように調整しHomebrew用のパッケージとしてまとめました。英語版Rogueのパッケージがすでに存在しているため、こちらのパッケージはjRogueという名前にしています。

ここにあるのはターミナルで使うCUI版です。他にクリック操作のみで起動できるGUI版も用意していますが、GUI版については下記のURLを参照してください。

http://leopardgecko.zouri.jp/rogue.html
## インストール方法
```
$ brew tap leopard-gecko/game
$ brew install jrogue
```
遊び方やライセンスなどの各種ドキュメントは「/usr/local/share/doc/jrogue-5.4.5J/」にインストールされます。

和訳したmanページもインストールされますが、Macの標準の環境では日本語のmanページを適切に表示させることができません。他サイトを参照するなどして日本語に対応させると読むことができるようになります。（標準の環境を変えたくない等の場合は、上記ドキュメント内の「jrogue.cat」がmanページと同じものなので、そちらを参照してください）
## 起動方法
```
$ jrogue
```
・プレイヤーの名前を変えたい場合は「-n」で指定する。
```
$ jrogue -n 名前
```
・GUI版でいうところの「通常」モードで起動したい場合は「-11」を加える。
```
$ jrogue -11
```
その他のオプションは付属のドキュメントを参照してください。
## 遊び方
[【運命の洞窟】へのガイド](https://github.com/leopard-gecko/homebrew-game/blob/master/%E9%81%8B%E5%91%BD%E3%81%AE%E6%B4%9E%E7%AA%9F%E3%81%B8%E3%81%AE%E3%82%AC%E3%82%A4%E3%83%89.md)を参照してください。
## 環境変数
オプションは環境変数「ROGUEOPTS」で設定することも可能です。

例えば、GUI版の「通常モード」と同等の設定にしてプレイヤー名をleopardgeckoに指定する場合は、
```
$ export ROGUEOPTS="passgo,color,idscrl,name=leopardgecko"
```
と入力します。
もちろん .bashrc に記述しても設定が反映されます。
## 必要環境
[Homebrew](http://brew.sh/index_ja.html)
## 動作確認
macOS Sierra 10.12.6
