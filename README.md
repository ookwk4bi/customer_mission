# README

<br>
  
  
# アプリケーション名
カスタマー顧客管理システム  

<br>
  

# アプリケーション概要
【概要】<br>
このアプリケーションは、顧客情報を管理するためのツールです。以下に、主な機能を説明します。<br>

①顧客情報の登録<br>
顧客情報を登録する際には、常連様や対応に注意が必要な顧客などのカテゴリーを選択し、詳細にその顧客の適切な対応方法や注意事項を記載します。<br>これにより、顧客ごとに異なる対応が必要な場合でも、適切に対応することができます。

②CSVインポート機能<br>
当日に利用されるお客様の情報を、CSVインポート機能を使ってアプリケーションに取り込むことができます。<br>
これにより、手動で顧客情報を入力する手間を省くことができます。

③一括検索とCSVエクスポート機能<br>
アプリケーションに取り込んだ全ての顧客情報をコピーし、検索機能に添付します。<br>ボタンをクリックすることで、適切な対応や注意事項がある顧客を一括検索し、CSVファイルを作成しダウンロードすることができます。<br>この機能により、顧客情報を一元管理し、迅速かつ正確な情報の提供が可能となります。
<br>

【アプリケーションを作成した背景】<br>
特別な顧客対応が必要な顧客を事前に認知し、従業員の対応の間違いやクレームに発展しないようにします。顧客満足度を上げることが目的です。<br>
1日あたり100人規模の対応が必要な現場では、事前に特別な対応が必要なお客様を認知することが困難であり、クレームや問題に発展するケースが多発しています。<br>このような状況から、アプリケーションを利用して事前に特別対応が必要なお客様をピックアップし、適切な対応を行うことで顧客満足度向上に貢献できると考えました。<br>




<br>

# URL 

#### 【デプロイ】
https://customer-mission.onrender.com

#### 【Basic認証】
- ID: admin
- Pass: 2222

<br>


# テスト用アカウント
【アカウント】<br>
- メールアドレス: test@gmail.com
- パスワード: test0000

<br>

# 利用方法
* GitHubにて登録してあるCSVファイルをDownload ZIPして活用ください。（Codeボタン押下→Download ZIPボタンを押下→csv_data.csvファイルをダウンロード。）

* Chromeの最新版を利用してアクセスしてください。

* テストアカウントでログイン→トップページから【顧客登録】ボタン押下。

* 顧客情報入力→【登録】ボタン押下。

* トップページの一覧ページに顧客情報が登録。

* 一覧ページリンク欄の【詳細】ボタンを押下→詳細ページに遷移→顧客情報の編集・削除・コメント・評価の機能を実装しています。

* トップページ→【CSVデーター】ボタン押下→CSVインポートの機能ページへ遷移。

* 【ファイルを選択】ボタンを押下→CSVファイルを選択→【インポート】ボタンを押下→アプリケーションに顧客情報が取り込まれます。

* CSVインポートの機能ページ→一覧ページに表示された利用予定の顧客情報を全てコピー。(1回に100名の情報まで)

* トップページの検索機能に全ての顧客情報を貼り付け→【CSVデーター出力】ボタンを押下→顧客情報を一括検索し、CSVファイルが作成され、ダウンロードが可能です。

* 特別対応の必要な顧客情報が一覧ページに表示されます。


<br>



# 洗い出した案件
[案件を定義したシート](https://docs.google.com/spreadsheets/d/1uVg2ICpejKJ08BUCTV34auy97JGyp0MfRH5QQo4UIIQ/edit#gid=982722306)

<br>


# メイン機能

<br>
  

## 1.トップページ
顧客情報が表示。(1ページ100件まで表示)

<br>

[![Image from Gyazo](https://i.gyazo.com/f4348cd9c6912dc32092fb203156c1f3.gif)](https://gyazo.com/f4348cd9c6912dc32092fb203156c1f3)å

<br>

## 2.CSVデーターをインポート
利用される顧客情報をアプリケーションに取り込む。

<br>

[![Image from Gyazo](https://i.gyazo.com/82418f42a74acfcf849e2ed2c018b3e8.gif)](https://gyazo.com/82418f42a74acfcf849e2ed2c018b3e8)


<br>

## 3.CSVエクスポート
CSVインポートした顧客情報を全てコピーし、CSVエクスポート機能に貼り付けCSVファイルを作成。
(一括検索で顧客情報を抽出→CSVファイルが作成→CSVファイルダウンロードが可能)

<br>

[![Image from Gyazo](https://i.gyazo.com/0edfa19b5479b1740f62b2f8036635b5.gif)](https://gyazo.com/0edfa19b5479b1740f62b2f8036635b5)

<br>

## 4.検索機能
ヘッダーに検索機能を実装。顧客情報の姓・名・詳細・会員番号の複数検索が可能。顧客情報を検索できます。

<br>

[![Image from Gyazo](https://i.gyazo.com/80e646d4431c53e62af6341cfbe85f3e.gif)](https://gyazo.com/80e646d4431c53e62af6341cfbe85f3e)


<br>

# 実装した機能

<br>

## １.ユーザー管理機能
ユーザーの登録・編集・削除が可能です。
<br>

[![Image from Gyazo](https://i.gyazo.com/f46e25410cca9baddb3540a9bd5b9eb4.gif)](https://gyazo.com/f46e25410cca9baddb3540a9bd5b9eb4)

<br>


## 2.顧客登録画面
姓・名・詳細・会員番号・カテゴリーの顧客情報を入力し、顧客の適切な対応方法や注意事項を記載します。顧客情報の登録が可能です。

<br>


[![Image from Gyazo](https://i.gyazo.com/53be8a2bb5513244d77a330ef4b83ee7.gif)](https://gyazo.com/53be8a2bb5513244d77a330ef4b83ee7)

<br>

## 3.顧客情報詳細ページ
登録した顧客情報の閲覧が可能です。<br>
顧客の編集・削除・コメント・評価の機能が実装しています。

<br>

[![Image from Gyazo](https://i.gyazo.com/7b43ca3ede755a5fe7c87fa534fad06d.gif)](https://gyazo.com/7b43ca3ede755a5fe7c87fa534fad06d)

<br>

## 4.顧客情報編集機能
登録した顧客情報について、編集することができます。<br>
ユーザーの手間を省くため登録時の情報が表示されます。

<br>

[![Image from Gyazo](https://i.gyazo.com/b1d682bf2a2be6cfe295ffe7e2ea6d46.gif)](https://gyazo.com/b1d682bf2a2be6cfe295ffe7e2ea6d46)
<br>

## 5.顧客情報削除機能
登録した顧客情報の削除ができます。<br>
削除時は確認のアラートが表示します。


<br>

[![Image from Gyazo](https://i.gyazo.com/c19799fb776743dc2d9d32f174c2230d.gif)](https://gyazo.com/c19799fb776743dc2d9d32f174c2230d)

<br>

## 6.コメント機能
登録した顧客情報についてより詳しい詳細を残すこができます。(出来事・対応など)

<br>

[![Image from Gyazo](https://i.gyazo.com/b9238c8742329a01708a47a8d016898c.gif)](https://gyazo.com/b9238c8742329a01708a47a8d016898c)

<br>


## ７.評価機能
コメントの数に応じて対応注意度の平均評価を数値化しています。

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

```bash
$ git clone git@github.com:ookwk4bi/customer_mission.git
``` 

```bash
$ cd customer_mission
``` 

```bash
$ bundle install
``` 

```bash
$ rails db:create
``` 

```bash
$ rails db:migrate
``` 

```bash
$ yarn install　
``` 

<br>

# 工夫したポイント
*  CSVインポートやCSVエクスポートのCSVファイルを活用した実装。

*  JavaScriptを活用した段階評価のコメント機能を実装。

*  CSVエクスポートと一括検索を併用したCSVファイルの作成・ダウンロードの機能の実装。

*  検索機能を複数条件で検索できるように実装

*  使ったことのなかったgemを多く使用した。







