# アプリケーション名
AssistApp

# アプリケーション概要
社内タスク管理ツール。
発生した依頼タスクをアプリケーション内で管理することで、社内の業務効率化を図ることができる。

# URL
https://assistapp-39052.onrender.com

# テスト用アカウント

<li>Basic認証パスワード：2222</li>
<li>Basic認証ID：admin</li>
<li>メールアドレス：tarou@gomail.com</li>
<li>パスワード：aaa1234</li>
<br>

# 利用方法

# 依頼案件投稿

1.トップページのヘッダーからユーザー新規登録を行う<br>
2.依頼を投稿するボタンから、依頼案件の内容(担当エリア、依頼種別、納期、詳細、補足、参考画像)を入力し投稿する

# コメント投稿

1.担当する依頼案件に質問や確認したいことがあればコメントを送ることができる。<br>
2.コメントにも画像を1枚添付することが出来る。<br>
3.依頼を処理したユーザーが完了ステータスを「完了」に変更する。

# アプリケーションを作成した背景

前職で営業事務の仕事に従事していたが、多数の社内メンバーからの依頼が整理出来ず、依頼されたにも関わらず抜け漏れがあったり、納期が遅れるなどのトラブルが発生していた。
課題を分析した結果、使用していたタスク管理ツールがわかりずらく、社内の業務効率化に苦慮している企業も多いのではないかと推測し、業務効率化と生産性工場のために自己体験からわかりやすい社内タスク管理ツールを開発することにした。

# 洗い出した要件
<a href="https://docs.google.com/spreadsheets/d/1sDLOhJIBrC5x8M-7bC9iDSQRUqyzsSNG9yvpwNU_5-8/edit?usp=sharing">要件を定義したシート</a>

# 実装した機能についてのが画像やGIFおよびその説明
<br><br>

# 実装予定の機能

検索機能を実装予定。

# データベース設計

![ER図](app/assets/images/assistapp_er.png)


# 画面遷移図
<br><br>

# 開発環境

<li>Ruby</li>
<li>Ruby on rails</li>
<li>MySQL</li>
<li>PostgreSQL</li>
<li>Render</li>
<li>jquery</li>
<li>Lightbox2</li>

# ローカルでの動作方法
<li>% git clone https://github.com/mocchirihamu/assistapp.git</li>
<li>% cd assistapp</li>
<li>% bundle install</li>
<li>% yarn install</li>

# 工夫したポイント