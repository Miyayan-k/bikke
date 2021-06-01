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
[![Image from Gyazo](https://i.gyazo.com/d5da33680ad428da54b345e5f1193dfc.jpg)](https://gyazo.com/d5da33680ad428da54b345e5f1193dfc)


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

## 新規登録画面

## ログイン画面

## マイページ画面(ユーザーページ画面)

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

