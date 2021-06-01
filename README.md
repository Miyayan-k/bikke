# アプリ名
### BIKKE!!

# 概要
「ライダーにしか分からないことがある。」がコンセプトです。  
乗ったことのあるバイク、所有するバイクのレビューを共有することができます。  
また、レビューを今後のバイク選びの参考とすることができます。  
バイク探しをしたい人、自分のバイクを共有したい人、バイクメーカーで働く人などバイクに携わる全ての人に価値を提供します。

# 本番環境
### URL

### ログイン情報
ゲストログイン機能を設けています。  
トップページのヘッダーより、ワンクリックでゲストユーザーとしてログインが可能です。  
ゲストユーザーは、レビューの投稿、検索、コメント、お気に入り登録といった機能が実行できます。  
※アカウント情報の編集・削除機能は実行できません。  
[![Image from Gyazo](https://i.gyazo.com/4f373063ee0cb4f314f6d0127929cd42.jpg)](https://gyazo.com/4f373063ee0cb4f314f6d0127929cd42)

# 制作背景
私自身ライダーであり、バイクが大好きです。  
バイクの乗り換え、新規バイクの購入を検討する際、インターネットで検索しても、結果はバイクのスペックなどあくまでもカタログ上の数値であったり、
メディアが共有する専門的なインプレッション記事などがほとんです。  
私はそこに課題を感じました。  
なぜなら、バイクの良さとは乗ってみないと分からないことが多々あると考えているからです。  
「ライダーにしか分からないことがある。」バイクの良さも悪さも、全てがバイク探しの重要なリソースです。  
そんなバイク探しの指南となるアプリケーションを作成したいと考えたことが、本アプリケーションの制作背景となります。  

# DEMO
## トップページ(検索機能・レビュー一覧表示・ログイン機能)
・トップの写真には、ロード時に文字が浮き上がるようなアニメーションを付与しました。  
・ログイン画面もありますが、トップページからもログインができるようフォームを設置しています。  
・トップ中央に検索機能のコンポーネントがあります。  
・トップ下部にレビュー一覧が、スクロールによりふわっと浮き上がるアニメーションで表示されます。  
・レビューの一覧表示はページネーション機能を用いてコンパクトにまとめました。  
また、ページネーションはBootstrapを用いてより見やすく、かつAjax通信により素早くページ切り替えが可能です。  
[![Image from Gyazo](https://i.gyazo.com/cd6d5cdf329a6af46b6e26a673b5a340.gif)](https://gyazo.com/cd6d5cdf329a6af46b6e26a673b5a340)

## 新規登録画面
・トップページヘッダーより遷移します。  
・必要な情報は「メールアドレス」「パスワード」「ニックネーム」のみとシンプルに仕上げました。  
・エラーメッセージは日本語化しております。  
・パスワードには正規表現のバリデーションを設け、セキュアにエラーメッセージを返します。  
[![Image from Gyazo](https://i.gyazo.com/f0878ce7fa024149507ffd88873d8fe0.gif)](https://gyazo.com/f0878ce7fa024149507ffd88873d8fe0)

・登録が完了すると、フラッシュメッセージでユーザーに登録が完了したことをアナウンスします。  
・ヘッダーにニックネームが表示されるようになります。  
[![Image from Gyazo](https://i.gyazo.com/2fc83968bb01a41f8edd5979207a079f.gif)](https://gyazo.com/2fc83968bb01a41f8edd5979207a079f)


## ログイン画面/ログアウト
・トップページヘッダーの「Log out」ボタンよりワンクリックでログアウトが可能です。  
また、フラッシュメッセージでユーザーにログアウトが完了したことをアナウンスします。  
[![Image from Gyazo](https://i.gyazo.com/b94cc4f9ad3de3e32933c4a2e3503642.gif)](https://gyazo.com/b94cc4f9ad3de3e32933c4a2e3503642)

・トップページヘッダーの「Sign in」ボタンよりログイン画面に遷移します。  
・ログインに必要な情報は「メールアドレス」と「パスワード」のみです。  
・エラーメッセージは日本語化しています。  
[![Image from Gyazo](https://i.gyazo.com/6fe4a434a0cb5cfc1a7e8348d0fe358a.gif)](https://gyazo.com/6fe4a434a0cb5cfc1a7e8348d0fe358a)

・ログインに成功すると、トップページにリダイレクトされ、フラッシュメッセージでユーザーにログインが成功したことをアナウンスします。  
・トップページのヘッダーにニックネームが追加されます。  
[![Image from Gyazo](https://i.gyazo.com/0b471f01e31619df6cef5f607776ed5d.gif)](https://gyazo.com/0b471f01e31619df6cef5f607776ed5d)

・トップページ写真部分にあるログインフォームからも、ログインが可能です。  
[![Image from Gyazo](https://i.gyazo.com/d2c51ca97135943bd5989ef420986937.gif)](https://gyazo.com/d2c51ca97135943bd5989ef420986937)

## マイページ画面(ユーザーページ画面)
・トップページヘッダーに表示された、ニックネームをクリックし遷移します。  
・マイページ画面には、そのユーザーが投稿したレビューやお気に入りしたレビューを一覧で閲覧することができます。  
・表示されるレビュー一覧は、アニメーションで  
・マイページ画面に遷移したユーザーが本人である場合、アカウント情報編集ボタンが表示されます。  
[![Image from Gyazo](https://i.gyazo.com/764d05bb71943d18fa3bf61e0e57e726.gif)](https://gyazo.com/764d05bb71943d18fa3bf61e0e57e726)

・


## レビュー投稿画面

## レビュー詳細画面(お気に入り機能・コメント機能)

## レビュー編集画面

## 検索結果画面

# 工夫したポイント
常にユーザー視点に立ち、ユーザーが「使いやすい、楽しい」と思えるようなUI/UXを意識して制作しました。  
具体的なポイントとして、  
・初めてこのアプリを見ても、直感的に使用方法が理解できる。  
・アニメーションを用いて、視覚的な楽しみを作る。  
・なるべく画面遷移を少なく、ワンクリックで目的地に辿り着けるルーティング作成  
・jQueryやAjax通信により素早いレスポンスを与え、ストレスレスな操作感  
などが工夫したポイントです。

# 使用技術(開発環境)
サーバーサイド：Ruby on Rails  
フロントサイド：HTML,CSS,JavaScript,jQuery,Bootstrap  
テスト：RSpec  
インフラ：Docker,AWS(EC2)  
エディタ：VScode

# 課題・今後実現したい機能
### レスポンシブデザイン化
現時点ではブラウザでのみしか表示が適応しておらず、スマホやタブレットサイズでも快適にアプリが使用できるレスポンシブデザイン化は必須と考えます。  
具体的にはCSSにメディアクエリを用いて実装予定です。
### 

# DB設計
## usersテーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
### Association
- has_many :reviews
- has_many :comments
- has_many :likes

## reviewsテーブル
| Column            | Type          | Options                        |
| ----------------- | ------------- | ------------------------------ |
| bike              | string        | null: false                    |
| year              | integer       | null: false                    |
| displacement_id   | integer       | null: false                    |
| maker_id          | integer       | null: false                    |
| type_id           | integer       | null: false                    |
| recommend         | float         | null: false                    |
| comfort           | float         | null: false                    |
| fuel              | float         | null: false                    |
| maintenance       | float         | null: false                    |
| cost              | float         | null: false                    |
| speed             | float         | null: false                    |
| look              | float         | null: false                    |
| content           | text          | null: false                    |
| user              | references    | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_many   :comments
- has_many   :likes
## commentsテーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| review    | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :review
## likesテーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| review    | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :review

