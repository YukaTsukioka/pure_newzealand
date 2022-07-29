# README

# アプリケーション名

Pure NewZealand

# アプリケーションの概要

ニュージーランドの風景の画像をシェアし、それを見たユーザーにニュージーランドの魅力を伝え、旅行に行ってみたいと思ってもらうきっかけを作るためのアプリケーションです。

# URL

https://pure-newzealand.herokuapp.com/

# テスト用アカウント　

- Basic認証パスワード : 1111

- Basic認証ID : tsukioka

- メールアドレス : y@y.com

- パスワード : a123456

# 利用方法

## 画像と説明の投稿

1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行います。
2. 投稿ボタンから、投稿の内容（ 画像、タイトル、画像の説明 [ 場所、おすすめポイントなど ] )を入力し投稿します。
3.  トップページの一覧に投稿されている画像をクリックするとログイン、ログアウトの状態に関わらず詳細ページが表示されます。
4. 自身が投稿したものは編集と削除が、詳細ページの編集ボタン、削除ボタンから出来ます。
5. 新規登録をしてある場合は、トップページのヘッダーからログイン出来ます。
6. ログイン状態の場合はトップページのヘッダーからログアウト出来ます。
7. 全ページ ( 新規登録、ニュージーランドの投稿の情報を入力、詳細、編集 ) のヘッダーにある、羊のアイコンをクリックするとトップページへ遷移します。

# アプリケーションを作成した背景

私が11年間、住んでいた大好きなニュージーランドは自然が多く、森や海、湖がすごく魅力的です。ですが、特別有名で目立つものがないせいか日本ではその魅力が伝わっておらず、旅行先などに選ばれにくいのではないかと推測ました。実際にニュージーランドに行ったことがある人がその魅力を伝えられるような写真や、その場へ行った時の感動が伝えられるような場を作り、見た人が訪れてみたいと思ってもらえるきっかけを作るアプリケーションを開発しました。

# 洗い出した要件

https://docs.google.com/spreadsheets/d/1qQmEbWPLVSd8et6LH19cbh7i6bBq7pWoxY_gUWE_wPo/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

1. 新規登録すると、投稿、編集、削除が出来るようになります。登録の際、必要な情報が適切に入力されていないとエラーが出るよう設定されています。

[![Image from Gyazo](https://i.gyazo.com/f66b5a115a846c22ce6f25093a97b162.png)](https://gyazo.com/f66b5a115a846c22ce6f25093a97b162)

[![Image from Gyazo](https://i.gyazo.com/8c2874f3b74b3a571d608e72f0496571.png)](https://gyazo.com/8c2874f3b74b3a571d608e72f0496571)

[![Image from Gyazo](https://i.gyazo.com/9d2505bf367d868c75c5fa2a2b415b67.jpg)](https://gyazo.com/9d2505bf367d868c75c5fa2a2b415b67)

2. トップページ右下にある投稿ボタンをクリックすると”ニュージーランドの投稿の情報を入力”ページへ遷移され画像、タイトル、画像の説明を入力でき、”投稿する”ボタンをクリックするとトップページへ戻り、投稿一覧の左上に投稿したものを確認することが出来ます。投稿したものが新しい順で左上に表示されます。適切な情報が入力されていないとエラーメッセージが出るよう設定しています。
 
 [![Image from Gyazo](https://i.gyazo.com/7e86e8fbec44a3c643864f4b35d89d01.png)](https://gyazo.com/7e86e8fbec44a3c643864f4b35d89d01)

 [![Image from Gyazo](https://i.gyazo.com/3780ce36fadcab95fbd8cdcc9e25c9af.png)](https://gyazo.com/3780ce36fadcab95fbd8cdcc9e25c9af)

[![Image from Gyazo](https://i.gyazo.com/f41c9fd80e08e899f2351578ada2decf.jpg)](https://gyazo.com/f41c9fd80e08e899f2351578ada2decf)

3. ログイン、ログアウトの状態に関わらずトップページ投稿一覧の画像をクリックすると詳細ページへ遷移し詳細を見ることが出来ます。自身が投稿していない投稿の詳細も見れます。

[![Image from Gyazo](https://i.gyazo.com/d47a17539481ab59402c1a27a1046093.jpg)](https://gyazo.com/d47a17539481ab59402c1a27a1046093)

[![Image from Gyazo](https://i.gyazo.com/cdbfae05cc1306fa39efd77fa3546888.jpg)](https://gyazo.com/cdbfae05cc1306fa39efd77fa3546888)


4. 自身が投稿した画像をクリックすると詳細ページへ遷移し、編集ボタンをクリックすると編集が出来ます。編集した後”変更する”ボタンをクリックすると詳細ページへ戻り更新を確認できます。編集途中、または適切な情報が入力されていない状態でページ下部の"もどる”ボタンを押すと編集途中の情報は破棄され詳細ページへ遷移されます。
（自身が投稿した以外の詳細ページには”編集”ボタンは表示されません。）
 
 [![Image from Gyazo](https://i.gyazo.com/c369d92d56471d2c553c82c959ae39e2.jpg)](https://gyazo.com/c369d92d56471d2c553c82c959ae39e2)

[![Image from Gyazo](https://i.gyazo.com/c095441f8edd3b20ee1cd5552b451d6d.png)](https://gyazo.com/c095441f8edd3b20ee1cd5552b451d6d)

[![Image from Gyazo](https://i.gyazo.com/b404e2e6ca98c3c71045fb1f89bc5a8c.jpg)](https://gyazo.com/b404e2e6ca98c3c71045fb1f89bc5a8c)

5. 自身が投稿した画像をクリックすると詳細ページへ遷移され、”削除”ボタンをクリックすると、トップページへ戻り投稿が削除されていることを確認できます。（自身が投稿した以外の詳細ページには”削除”ボタンは表示されません。）

[![Image from Gyazo](https://i.gyazo.com/882c3e472a9326a00bfc472bcbc15c1d.jpg)](https://gyazo.com/882c3e472a9326a00bfc472bcbc15c1d)

[![Image from Gyazo](https://i.gyazo.com/52c4f77f19800e5c0bb3705375696a8d.jpg)](https://gyazo.com/52c4f77f19800e5c0bb3705375696a8d)

6. ログインした状態だと、トップページの右上に”ログアウト”ボタンが表示され、クリックするとログアウトできます。表示が”ログイン””新規登録”に変わったことでログアウトしたことが確認できます。

[![Image from Gyazo](https://i.gyazo.com/120f1663ca2e2874aed771b3c8034531.jpg)](https://gyazo.com/120f1663ca2e2874aed771b3c8034531)

[![Image from Gyazo](https://i.gyazo.com/ec8886e4987c6945f01f09e41275b681.jpg)](https://gyazo.com/ec8886e4987c6945f01f09e41275b681)

7. トップページ右上にある”ログイン”ボタンを押すと、ログインページへ遷移し必要な情報を入力し”ログイン”ボタンをクリックするとログインしトップページに戻ります。表示がユーザー名に変わりログインしていることが確認できます。適切な情報が入力されていない場合はエラーメッセージが出るよう設定しています。

[![Image from Gyazo](https://i.gyazo.com/9710ed095932f50f025a1eeb244032f6.jpg)](https://gyazo.com/9710ed095932f50f025a1eeb244032f6)


[![Image from Gyazo](https://i.gyazo.com/466e2c09f393b4033e1a5647afb98941.png)](https://gyazo.com/466e2c09f393b4033e1a5647afb98941)

[![Image from Gyazo](https://i.gyazo.com/1112439fd5c1b2fad551fb5aa3fad5a7.png)](https://gyazo.com/1112439fd5c1b2fad551fb5aa3fad5a7)

[![Image from Gyazo](https://i.gyazo.com/f6c3af3626f234fcd225096cc2e49ea5.jpg)](https://gyazo.com/f6c3af3626f234fcd225096cc2e49ea5)



# 実装予定の機能

- いいね機能、実装予定

- 新規投稿の写真を大きく表示する機能、実装予定

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/b375a6d3be0f3ccd9dc8a1585bcfe73f.png)](https://gyazo.com/b375a6d3be0f3ccd9dc8a1585bcfe73f)



# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/14467bb41123d735b38aec6c71da8342.png)](https://gyazo.com/14467bb41123d735b38aec6c71da8342)







# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |


### Association
has_many :posts
has_many :comments 

## posts テーブル

| Column        | Type       | Options                        |
| -------       | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| text          | text       | null: false                    |
| user          | references | null: false, foreign_key: true |


### Association
belongs_to :user
has_many :comments

## comments テーブル

| Column        | Type       | Options                        |
| -------       | ---------- | ------------------------------ |
| user_id       | integer    | null: false, foreign_key: true |
| text          | text       | null: false                    |
| post_id       | references | null: false, foreign_key: true |

### Association
belongs_to :post
belongs_to :user  

# 開発環境

- フロントエンド

- バックエンド

- インフラ

- テキストエディタ

- タスク管理

# ローカルでの動作方法

以下のコマンドを順に実行。

% git clone https://github.com/YukaTsukioka

% cd pure_newzealand

% bundle install

% yarn install

# 工夫したポイント

トップページのヘッダーとフッターに自分でニュージーランドで撮影した画像を使用したことです。
この画像で、すごくニュージーランドの自然の雰囲気が出たのと、改めて自分が自作したアプリケーションだと思わせてくれるので愛着も沸きました。


