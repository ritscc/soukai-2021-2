総会議案書テンプレート
========================
これは，総会議案書のテンプレートリポジトリです．
コマンドを使って簡単に総会議案書リポジトリを生成することができます．

セットアップ手順
--------------------
(スタブ)


setup.rbについて
---------------------
年度などの初期設定をしたり，テンプレートファイルを生成するツールです．
soukai-templateからforkした直後や，各局のブランチを作るときに使ってください．

soukai-templateからforkした後に必ず以下のコマンドを実行して，年度などの情報を設定してください．

```shell
$ ruby setup.rb init
```

また，このツールを使って，予めsubsection以降の文書を書くためのファイルを生成して，
それを編集するように呼びかけてくださいしてください．
これはコンフリクトを避けるためです．
タスクを作成する時に編集するべきファイルパスを明示しておくと混乱が減ると思われます．

詳しくは，[README_setup.md](docs/README_setup.md)を見てください．

Werckerについて
-----------------------
継続的インテグレーションを支援するサービス Werckerを用いて，総会文書のビルドを自動化しています．
WerckerやWerckerのセットアップ方法については，[README_CI.md](docs/README_CI.md)に詳しく紹介していますので，興味がある方やセットアップ担当者はぜひご覧ください．