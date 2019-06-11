# 環境構築用batファイル

https://qiita.com/kumazawajiro/items/aad76b9dc924b7082e58 にある内容をbatファイルで一括して行えるようにしました。以下に使い方をまとめます。

## 使い方

とりあえず、最初に使い方から

### 諸注意

#### スリープについて
特に `texlive` をインストールする際に、途中でスリープになると処理が止まります。電源の設定からスリープにならないようにかえてください。

#### 汎用プロキシ
私が所属していた研究室の人向けにひとこと触れておくと、汎用プロキシを有効にしておいてください。わからなければ

> 汎用プロキシ　大学名

で検索すればヒットします。

#### ファイルの実行について

batファイルをダブルクリックで実行するのは非推奨です。経験則ですがよく処理落ちします。

### 手順
  1. batファイルをダウンロード
     * githubのダウンロードボタン（右上の`clone or download`のボタン）を選ぶと`Dowload zip`と出てくるのでzipファイルをダウンロード・展開する
  1. コマンドプロンプトを管理者権限で起動
     * `win+r` で開く窓に `cmd` と入力して、 `ctrl+shift+enter` で開くのが一番楽だと思う
  1. コマンドプロンプト上でbatファイルがあるディレクトリに移動
     * 要するに `cd` コマンドたたいて
  1. `.\kankyou.bat` と入力して `enter` を押せばスクリプトが走る
  1. しばらくするとtexliveのインストール画面が開くので適宜クリック
     * デフォルトでチェックが入っている選択肢をそのまま選んで問題ない
     * とても長いので気長に待つ
  1. texliveのインストールが完了するとまたマウス操作が要求されるのでぽちぽち
  1. コマンドプロンプトが終了するまで放置

## やっていること
このbatファイルでやることは大きく2つで
 * latex環境のインストール
 * python環境のインストール

です。そのための手段として、 `chocolatey` を使います。具体的な作業として
 1. `chocolatey` のインストール
 1. `wget` のインストール
 1. `wget` を用いて `texlive` のインストーラのダウンロード
 1. `texlive` のインストール
 1. `chocolatey` を用いた `texlive` 及び `anaconda` （ `python` 環境）のインストール
 1. Pathの更新
 1. `flake8` のインストール
