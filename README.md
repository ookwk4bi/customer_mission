# README

<br>
  
  
# アプリケーション名
カスタマー情報  

<br>
  

# アプリケーション概要
①常連様とクレーマーなどの特別対応が必要なお客様を登録。<br>
②CSVインポート機能で当日利用顧客情報をアプリにインポート。<br>
③CSV情報を一括検索機能にて、当日利用予定の顧客の中に常連様やクレーマーがいないかピックアップする。<br>
<br>
<概要><br>
1日に100名規模の対応が必要な現場で事前に特別対応のお客様を認知することが難しく、<br>
クレームや問題に発展しているケースが多い。<br>
上記のことからアプリで事前にピックアップし、特別対応の必要なお客様を事前に認知し、<br>
正しい対応をすることで顧客満足度の向上に貢献できると考えました。<br>



<br>
  
# URL
Herokuによるデプロイ
https://customer0711.herokuapp.com/

<br>


# テスト用アカウント
登録用
_メールアドレス: ahkachu@apa.co.jp
_パスワード: ookwk4bi

<br>

# 利用方法
* GitHubにて登録してあるCSVファイルをDownload ZIPして活用ください。（Codeボタン押下→Download ZIPボタンを押下→csv_data.csvファイルをダウンロード。）

* Chromeの最新版を利用してアクセスしてください。接続先およびログイン情報については、上記の通りです。

* テストアカウントでログイン→トップページから顧客登録ボタン押下。

* 顧客情報入力→create customerボタン押下。

* トップページにて顧客情報が登録される。リンク欄の詳細ボタンを押すと顧客情報の編集とコメントが可能。顧客詳細ページにて対応履歴のコメントや顧客情報の編集・削除が可能。

* トップページからCSVデーターボタンにて、CSVインポートのページへ移動。

* CSVファイルを選択し、インポートのボタンを押すことで利用予定の顧客情報がCSVページに表示。

* 表示された利用予定の顧客情報をすべてコピー。(1回に100名の情報まで)

* トップページの検索機能に顧客情報を貼り付け。検索ボタンを押し一括検索。
    登録された顧客情報の常連様、クレーマーの特別対応が必要な該当者がピックアップされる。


<br>


# アプリケーションを作成した背景
対応する顧客を事前に認知し、クレームや対応のミスを減らし顧客満足度を上げる目的。

<br>

# 洗い出した案件
[案件を定義したシート](https://docs.google.com/spreadsheets/d/1uVg2ICpejKJ08BUCTV34auy97JGyp0MfRH5QQo4UIIQ/edit#gid=982722306)

<br>


# 実装した機能

<br>
  

## トップページ<br>
１ページに100件の顧客情報が表示が可能。
<br>

[![Image from Gyazo](https://i.gyazo.com/5be05dcde4e510126bec07878479ff34.gif)](https://gyazo.com/de9c1cdd78445b3382626d55c4bbfa04)

<br>

## CSVデーターをインポート
今回利用される顧客情報のCSVデーターをアップロードし、データベースとページに情報を反映することができる。
<br>

[![Image from Gyazo](https://i.gyazo.com/a37386f2d0afefdf4d0476c7b4c260b4.gif)](https://gyazo.com/a37386f2d0afefdf4d0476c7b4c260b4)

<br>


## １.ユーザー登録機能
ユーザー登録することで顧客情報の入力および閲覧が可能。

<br>

[![Image from Gyazo](https://i.gyazo.com/f4c5a8f9e97ca8e986f2a1cef30f0aee.gif)](https://gyazo.com/f4c5a8f9e97ca8e986f2a1cef30f0aee)

<br>


## 2.カスタマー登録画面
必要情報入力し、ボタンをクリックすることでカテゴリーに応じた顧客情報を入力できる。

登録後は、詳細ページを移動。

<br>


[![Image from Gyazo](https://i.gyazo.com/50c6b1292a16acda61efa03c35487db4.gif)](https://gyazo.com/50c6b1292a16acda61efa03c35487db4)

<br>

## 3.顧客情報詳細ページ
登録した顧客情報と対応履歴としてコメントが見ることができる。

<br>

[![Image from Gyazo](https://i.gyazo.com/67aa37f56d5b0ebbfd495cb6161fd190.gif)](https://gyazo.com/67aa37f56d5b0ebbfd495cb6161fd190)

<br>

## 4.顧客情報編集機能
登録した顧客情報について、編集することができます。

その際に、ユーザーの手間を省くため登録時の情報が表示されるようになっている。

<br>

[![Image from Gyazo](https://i.gyazo.com/565858abd7f1bbeec9362035d695ed53.gif)](https://gyazo.com/565858abd7f1bbeec9362035d695ed53)

<br>

## 5.顧客情報削除機能
登録した顧客情報について、削除ボタンを押すことで情報を削除することができる。


<br>

[![Image from Gyazo](https://i.gyazo.com/f33786080c80bfd3d27d84d8c50a557b.gif)](https://gyazo.com/f33786080c80bfd3d27d84d8c50a557b)

<br>

## 6.対応履歴コメント機能
登録した顧客情報について、対応注意度の評価とコメントを残すことができる。

<br>

[![Image from Gyazo](https://i.gyazo.com/9d24d09c06c7c18457a344e33c7fd5e2.gif)](https://gyazo.com/9d24d09c06c7c18457a344e33c7fd5e2)

<br>


## 7.検索機能
インポートした顧客情報情報をコピーし、トップページにてカテゴリー別に一括検索も可能。１度に付き100件の検索が可能。カテゴリーに関係のない情報は読み込まず、該当の情報のみ抽出し、検索する仕様になっている。

<br>

[![Image from Gyazo](https://i.gyazo.com/6ca06f65e6bc4e82e49a4b1c21dad58b.gif)](https://gyazo.com/6ca06f65e6bc4e82e49a4b1c21dad58b)

<br>

## ８.評価機能
コメントの数に応じて対応注意度の平均評価を数値化している。

<br>

[![Image from Gyazo](https://i.gyazo.com/9d24d09c06c7c18457a344e33c7fd5e2.gif)](https://gyazo.com/9d24d09c06c7c18457a344e33c7fd5e2)

<br>

# テーブル設計

<br>

## users テーブル

| Column             | Type   | Options     
| ------------------ | ------ | ----------- 
| email              | string | null: false 
| encrypted_password | string | null: false 
| family_name        | string | null: false 
| given_name         | string | null: false 




### Association

- has_many :comments<br>
<br>


## costomer テーブル

| Column             | Type   | Options     
| ------------------ | ------ | ----------- 
| family_name         | string | null: false 
| detail             | text   | null: false 
| given_name         | string |    null: false 
| account_number     | string |  null: false 
| type       | references | null: false, foreign_key: true 



### Association
- belongs_to :type
- has_many :comments<br>
<br>

## comments テーブル

| Column | Type       | Options                        
| ------ | ---------- | ------------------------------ 
| user       | references | null: false, foreign_key: true 
| customer   | references | null: false, foreign_key: true 
| body       | string|  null: false 
| score      |integer  |  null: false 
  
### Association

- belongs_to :customer
- belongs_to :user<br>
<br>


## documents テーブル

| Column             | Type   | Options     
| ------------------ | ------ | ----------- 
| last_name          | string | null: false 
| personal_name      | string | null: false 
| content            | text   | null: false 
| number             | string | null: false 

<br>

## types テーブル

| Column             | Type   | Options     
| ------------------ | ------ | ----------- 
| name               | string | null: false 

### Association

- has_many :customers<br>

<br>


# ER図
[![Image from Gyazo](https://i.gyazo.com/3228eff4ba223f850bbe8295879eb065.gif)](https://gyazo.com/3228eff4ba223f850bbe8295879eb065)<br>
<br>

# 開発環境
Ruby/Ruby on Rails/JavaScript/MySQL/Github/AWS/Visual Studio Code<br>
<br>

# ローカルでの動作方法  
% git clone https://git.heroku.com/customer0711.git

% cd customer_mission

% bundle install

% rails db:create

% rails db:migrate

% yarn install<br>

<br>

# 工夫したポイント
*  Gemを多く活用。
