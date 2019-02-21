# 環境構築用batファイル
https://qiita.com/kumazawajiro/items/aad76b9dc924b7082e58 にある内容をbatファイルで一括して行えるようにしました。以下に使い方をまとめます。

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
