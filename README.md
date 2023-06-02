# README

<br>
  
  
# アプリケーション名
カスタマー顧客管理システム  

<br>
  

# アプリケーション概要
①カテゴリー種別で顧客情報を登録。<br>
②CSVインポート機能を使い、利用するお客様の情報をアプリにCSVインポートする。<br>
③CSVインポートした顧客情報を一括検索機能とcsvエクスポート機能を使い、当日利用される顧客から常連様やクレーマーがいないか事前にピックアップする。<br>
<br>
<概要><br>
1日あたり100人規模の対応が必要な現場では、事前に特別な対応が必要なお客様を認知することが困難であり、クレームや問題に発展するケースが多発しています。<br>このような状況から、アプリケーションを利用して事前に特別対応が必要なお客様をピックアップし、適切な対応を行うことで、顧客満足度向上に貢献できると考えました。<br>



<br>

# URL 

#### render.comによるデプロイ
https://customer-mission.onrender.com

#### Basic認証
- ID: ookwk4bi
- Pass: 8909

<br>


# テスト用アカウント
登録用
_メールアドレス: test@gmail.com
_パスワード: test0000

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


# メイン機能

<br>
  

## トップページ
１ページに100件の顧客情報が表示が可能。

<br>

[![Image from Gyazo](https://i.gyazo.com/f4348cd9c6912dc32092fb203156c1f3.gif)](https://gyazo.com/f4348cd9c6912dc32092fb203156c1f3)å

<br>

## CSVデーターをインポート
今回利用される顧客情報のCSVデーターをアップロードし、データベースとページに情報を反映することができる。

<br>

[![Image from Gyazo](https://i.gyazo.com/82418f42a74acfcf849e2ed2c018b3e8.gif)](https://gyazo.com/82418f42a74acfcf849e2ed2c018b3e8)


<br>

## csvエクスポート
csvインポートした顧客情報をコピーし、検索ページに貼り付ける。
複数の顧客情報の一括検索を行い、該当の顧客情報ピックアップする。その後、csvエクスポート
を実行し、csvファイルとしてダウンロードできる。

<br>

[![Image from Gyazo](https://i.gyazo.com/0edfa19b5479b1740f62b2f8036635b5.gif)](https://gyazo.com/0edfa19b5479b1740f62b2f8036635b5)

<br>

## 検索機能
インポートした顧客情報情報をコピーし、トップページにてカテゴリー別に一括検索も可能。１度に付き100件の検索が可能。カテゴリーに関係のない情報は読み込まず、該当の情報のみ抽出し、検索する仕様になっている。

<br>

[![Image from Gyazo](https://i.gyazo.com/80e646d4431c53e62af6341cfbe85f3e.gif)](https://gyazo.com/80e646d4431c53e62af6341cfbe85f3e)


<br>

# 実装した機能

<br>

## １.ユーザー登録機能
ユーザー登録することで顧客情報の入力および閲覧が可能。

<br>

[![Image from Gyazo](https://i.gyazo.com/f46e25410cca9baddb3540a9bd5b9eb4.gif)](https://gyazo.com/f46e25410cca9baddb3540a9bd5b9eb4)

<br>


## 2.顧客登録画面
必要情報入力し、ボタンをクリックすることでカテゴリーに応じた顧客情報を入力できる。

登録後は、詳細ページを移動。

<br>


[![Image from Gyazo](https://i.gyazo.com/53be8a2bb5513244d77a330ef4b83ee7.gif)](https://gyazo.com/53be8a2bb5513244d77a330ef4b83ee7)

<br>

## 3.顧客情報詳細ページ
登録した顧客情報と対応履歴としてコメントが見ることができる。

<br>

[![Image from Gyazo](https://i.gyazo.com/7b43ca3ede755a5fe7c87fa534fad06d.gif)](https://gyazo.com/7b43ca3ede755a5fe7c87fa534fad06d)

<br>

## 4.顧客情報編集機能
登録した顧客情報について、編集することができます。

その際に、ユーザーの手間を省くため登録時の情報が表示されるようになっている。

<br>

[![Image from Gyazo](https://i.gyazo.com/b1d682bf2a2be6cfe295ffe7e2ea6d46.gif)](https://gyazo.com/b1d682bf2a2be6cfe295ffe7e2ea6d46)
<br>

## 5.顧客情報削除機能
登録した顧客情報について、削除ボタンを押すことで情報を削除することができる。


<br>

[![Image from Gyazo](https://i.gyazo.com/c19799fb776743dc2d9d32f174c2230d.gif)](https://gyazo.com/c19799fb776743dc2d9d32f174c2230d)

<br>

## 6.コメント機能
登録した顧客情報について、対応注意度の評価とコメントを残すことができる。

<br>

[![Image from Gyazo](https://i.gyazo.com/b9238c8742329a01708a47a8d016898c.gif)](https://gyazo.com/b9238c8742329a01708a47a8d016898c)

<br>


## ７.評価機能
コメントの数に応じて対応注意度の平均評価を数値化している。

<br>

[![Image from Gyazo](https://i.gyazo.com/6cdf88ea5d9fd79920ff5a6df6daf6c6.gif)](https://gyazo.com/6cdf88ea5d9fd79920ff5a6df6daf6c6)

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
- has_many :customers
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
| user       | references | null: false, foreign_key: true 



### Association
- belongs_to :type
- belongs_to :user
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
Ruby/Ruby on Rails/JavaScript/MySQL/Github/render.com/Visual Studio Code<br>
<br>

# ローカルでの動作方法  
% git clone git@github.com:ookwk4bi/customer_mission.git

% cd customer_mission

% bundle install

% rails db:create

% rails db:migrate

% yarn install<br>

<br>

# 工夫したポイント
*  Gemを多く活用し、Gemについて詳しく調べた。

*  JavaScriptを活用し、星５段階評価機能を実装。

*  単体検索だけでなく、大量のデーターを一括検索ができるようにした。（複数条件で）

*  CSVインポート機能を実装し、CSVファイルにて外部からの情報を取り込めるようにした。

*  本番環境でのエラーが多かったため、チェックの工程を短くし、エラーをすぐ発見できるように工夫した。




