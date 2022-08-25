# README

<br>
  
  
# アプリケーション名
カスタマー情報  

<br>
  

# アプリケーション概要
ユーザーを登録すると顧客情報を
登録することができます。


自身が登録した顧客情報は編集と削除とコメントができます。

<br>
  
# URL
Herokuによるデプロイ
https://customer0711.herokuapp.com/

<br>


# テスト用アカウント
登録用
_メールアドレス: aozora@gmail.com
_パスワード: aozora1

<br>

# 利用方法
* Chromeの最新版を利用してアクセスしてください。接続先およびログイン情報については、上記の通りです。

* テストアカウントでログイン→トップページから顧客登録ボタン押下

* 顧客情報入力→create customerボタン押下

* トップページにて顧客情報が登録されるので、リンクの詳細ボタンを押すと顧客情報の編集とコメントが可能。

* 顧客編集ページにて対応履歴のコメントや顧客情報の編集・削除が可能。

* トップページにて検索機能あり。該当項目に検索ワードを入力し、検索ボタンを押すと検索も可能。

<br>


# アプリケーションを作成した背景
対応する顧客を事前に認知し、クレームや対応の間違いを減らし顧客満足度を上げる目的。

<br>

# 洗い出した案件
[案件を定義したシート](https://docs.google.com/spreadsheets/d/1uVg2ICpejKJ08BUCTV34auy97JGyp0MfRH5QQo4UIIQ/edit#gid=982722306)

<br>


# 実装した機能

<br>
  

## トップページ<br>
<br>

[![Image from Gyazo](https://i.gyazo.com/347c78fea5233302cb0414c6cc623db3.jpg)](https://gyazo.com/347c78fea5233302cb0414c6cc623db3)

<br>


## １.ユーザー登録機能
ユーザー登録することで顧客情報の入力が可能です。

<br>

[![Image from Gyazo](https://i.gyazo.com/b0663fc927332fc982b25c6440896b40.gif)](https://gyazo.com/b0663fc927332fc982b25c6440896b40)

<br>


## 2.カスタマー登録画面
必要情報入力し、ボタンをクリックすることで顧客情報を入力できる。

登録後は、詳細ページを移動。

<br>


[![Image from Gyazo](https://i.gyazo.com/ceb851fbec39f33c3571cc0cb7e448d8.gif)](https://gyazo.com/ceb851fbec39f33c3571cc0cb7e448d8)

<br>

## 3.顧客情報詳細ページ
登録した顧客情報と対応履歴としてコメントが見ることができます。

<br>

[![Image from Gyazo](https://i.gyazo.com/d67db65985cdaad2b63bf7606461e4c2.gif)](https://gyazo.com/d67db65985cdaad2b63bf7606461e4c2)

<br>

## 4.顧客情報編集機能
登録した顧客情報について、編集することができます。

その際に、ユーザーの手間を省くため登録時の情報が表示されるようになっています。

<br>

[![Image from Gyazo](https://i.gyazo.com/36fa524cd1f008ad64acd48a27d7885d.gif)](https://gyazo.com/36fa524cd1f008ad64acd48a27d7885d)

<br>

## 5.顧客情報削除機能
登録した顧客情報について、削除ボタンを押すことで情報を削除することができます。


<br>

[![Image from Gyazo](https://i.gyazo.com/338eed5432fd7e9dd8e3c17645b6ef41.gif)](https://gyazo.com/338eed5432fd7e9dd8e3c17645b6ef41)

<br>

## 6.対応履歴コメント機能
登録した顧客情報について、コメントを残すことができます。

<br>

[![Image from Gyazo](https://i.gyazo.com/5a12c7ccb50f9d25d0712dd54a859ad1.gif)](https://gyazo.com/5a12c7ccb50f9d25d0712dd54a859ad1)

<br>


## 7.検索機能
トップページにて、登録した顧客情報をカテゴリー別に検索することができる。

<br>

[![Image from Gyazo](https://i.gyazo.com/53714c30357fbf7c57ff3e317d97a732.gif)](https://gyazo.com/53714c30357fbf7c57ff3e317d97a732)

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
| image_url          | string | null: false 



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



### Association

- has_many :comments<br>
<br>

## comments テーブル

| Column | Type       | Options                        
| ------ | ---------- | ------------------------------ 
| user       | references | null: false, foreign_key: true 
| customer   | references | null: false, foreign_key: true 
| body       | string|  null: false 
  
### Association

- belongs_to :customer
- belongs_to :user<br>
<br>


# ER図
[![Image from Gyazo](https://i.gyazo.com/c411647de0d5d8495656a2f871f933b4.png)](https://gyazo.com/c411647de0d5d8495656a2f871f933b4)<br>
<br>

# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code<br>
<br>

# ローカルでの動作方法  
% git clone  https://git.heroku.com/customer9438.git

% cd customer_info

% bundle install

% rails db:create

% rails db:migrate

% yarn install<br>

<br>

# 工夫したポイント
*  Gemを多く活用しました。


