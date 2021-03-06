# アプリ名
### BIKKE!!

# 概要
「ライダーにしか分からないことがある。」がコンセプトです。  
乗ったことのあるバイク、所有するバイクのレビューを共有することができます。  
また、レビューを今後のバイク選びの参考とすることができます。  
バイク探しをしたい人、自分のバイクを共有したい人、バイクメーカーで働く人などバイクに携わる全ての人に価値を提供します。

# 本番環境
### URL
http://bikke.ga/

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

## マイページ画面(ユーザーページ画面)・アカウント情報編集機能
・トップページヘッダーに表示された、ニックネームをクリックし遷移します。  
・マイページ画面には、そのユーザーが投稿したレビューやお気に入りしたレビューを一覧で閲覧することができます。  
・表示されるレビュー一覧は、アニメーションで表示されます。  
・マイページ画面に遷移したユーザーが本人である場合、アカウント情報編集ボタンが表示されます。  
[![Image from Gyazo](https://i.gyazo.com/764d05bb71943d18fa3bf61e0e57e726.gif)](https://gyazo.com/764d05bb71943d18fa3bf61e0e57e726)

・マイページに遷移したユーザーが本人である場合、アカウント情報の編集が可能です。  
・メールアドレスやパスワード、ニックネームの変更が可能です。  
・変更を行わない項目は空白にすることで、そのまま保存されます。   
※ゲストユーザーはアカウント情報の編集は不可能です。  
[![Image from Gyazo](https://i.gyazo.com/de41fdba3ed298e62622f5dbe1c5f0d1.gif)](https://gyazo.com/de41fdba3ed298e62622f5dbe1c5f0d1)

## レビュー投稿画面
・トップページヘッダーにあります「Post」ボタンからワンクリックでレビュー投稿画面に遷移します。  
[![Image from Gyazo](https://i.gyazo.com/190f264052513a0136824dcff51bf953.gif)](https://gyazo.com/190f264052513a0136824dcff51bf953)

・レビューの入力項目は`写真`、`車種名`、`年式`、`排気量`、`メーカー`、`車種タイプ`、`乗り心地`、`燃費`、`メンテナンス性`、`維持費`、`速度`、`見た目の満足度`、`総合評価`、`レビューテキスト`、で構成されています。  
・`写真`は任意項目で、そのほかは入力必須項目となります。  
・`写真`は1枚のみ投稿可能で、プレビュー表示されます。  
・`車種名`、`レビューテキスト`は自由入力、`年式`は半角4桁入力、`排気量`、`メーカー`、`車種タイプ`はActiveHashによるカテゴリー選択、  
`燃費`、`メンテナンス性`、`維持費`、`速度`、`見た目の満足度`、`総合評価`はjQueryによる星評価でレビューを投稿します。  
[![Image from Gyazo](https://i.gyazo.com/a59fee149b28dffae91b695b7e33f1a6.gif)](https://gyazo.com/a59fee149b28dffae91b695b7e33f1a6)
[![Image from Gyazo](https://i.gyazo.com/8162034a6c9736a05b18beeb3b4ae58d.gif)](https://gyazo.com/8162034a6c9736a05b18beeb3b4ae58d)

・「投稿する」ボタン押下により、トップページにリダイレクトされ、フラッシュメッセージの案内とともに投稿が完了したことをお知らせします。  
・レビュー一覧に追加で表示されます。  
・一覧表示時に表示される項目は、`写真`、`車種名`、`総合評価`のみです。  
[![Image from Gyazo](https://i.gyazo.com/7dc8019f0c990064b5ccb72f773983cf.gif)](https://gyazo.com/7dc8019f0c990064b5ccb72f773983cf)

## レビュー詳細画面(お気に入り機能・コメント機能)
・一覧表示されたレビューからワンクリックでレビュー詳細画面に遷移します。  
・これは「マイページ(ユーザーページ)に表示されるレビュー一覧」、「検索結果として表示されるレビュー一覧」からも同様に、気になるレビューをワンクリックすることで詳細画面に遷移します。   
・詳細画面では、レビュー投稿で入力した全ての項目が表示されます。  
・ユーザーはあらゆる側面から気になるバイクのレビューを確認することができます。  
・レビュー詳細画面が投稿した本人のレビューである場合、「編集」ボタンと「削除」ボタンが表示されます。  
[![Image from Gyazo](https://i.gyazo.com/a3155bcc7235dc6040e36ddaa262e9d0.gif)](https://gyazo.com/a3155bcc7235dc6040e36ddaa262e9d0)

・レビューが投稿した本人のレビューではない場合、「お気に入り」登録ボタンが表示されます。  
・Ajax通信により、ワンクリックで即お気に入りに登録されます。  
[![Image from Gyazo](https://i.gyazo.com/55b03476a5c9f914e399f41fb952f374.gif)](https://gyazo.com/55b03476a5c9f914e399f41fb952f374)

・お気に入りしたレビューはマイページから一覧で管理することができます。  
・また、お気に入りの解除もワンクリックで可能です。  
[![Image from Gyazo](https://i.gyazo.com/3bfe97536ec38a7a2dfc834dd1b7cf8e.gif)](https://gyazo.com/3bfe97536ec38a7a2dfc834dd1b7cf8e)

・詳細画面ではコメントを投稿することが可能です。  
・レビュー投稿者に追加で質問がある場合などに便利です。  
・コメント投稿後、フラッシュメッセージで投稿が完了したことをお知らせし、詳細画面にリダイレクトします。  
・コメントは、`投稿者`、`コメント内容`、`投稿時間`で構成され、コメント投稿したユーザー本人である場合、`コメント削除ボタン`が表示されます。
[![Image from Gyazo](https://i.gyazo.com/99bf26250a4972531eef8aae208bb8a0.gif)](https://gyazo.com/99bf26250a4972531eef8aae208bb8a0)

## レビュー編集画面・レビュー削除機能
・レビュー詳細画面から、「編集」ボタンを押下し、編集画面に遷移します。  
・編集画面は投稿したユーザー本人のみが遷移可能です。URLを直接打ち込んでも他のユーザーは遷移できません。  
[![Image from Gyazo](https://i.gyazo.com/a9ea4d8b5203a27b8841fe08d2158e36.gif)](https://gyazo.com/a9ea4d8b5203a27b8841fe08d2158e36)

・編集画面は投稿した内容を全て保持しています。  
・ActiveHashによるカテゴリーの再選択、jQueryによる星評価の再評価も簡単に行うことができます。  
[![Image from Gyazo](https://i.gyazo.com/cf21f1ef9bfe7cde92bfc580f3c53f99.gif)](https://gyazo.com/cf21f1ef9bfe7cde92bfc580f3c53f99)

・詳細画面より「削除」ボタンを押下することで、レビューの削除が可能です。  
・アラートメッセージにより、本当に削除するか確認します。  
・確認時に「OK」ボタンを押下することにより、フラッシュメッセージが削除完了をお知らせします。  
[![Image from Gyazo](https://i.gyazo.com/7cc774fe6ae41ff3011b725445cf8b57.gif)](https://gyazo.com/7cc774fe6ae41ff3011b725445cf8b57)

## 検索結果画面
・トップページに全ての検索機能を設けています。  
・キーワード検索では、該当する`車種名`に一部分でも文字が含まれている場合、結果を返します。  
・検索結果に表示されるレビューはアニメーションにより、ふわっと表示されます。  
[![Image from Gyazo](https://i.gyazo.com/044f72a266860ecfa41b3378445c5b01.gif)](https://gyazo.com/044f72a266860ecfa41b3378445c5b01)

・`排気量`、`メーカー`、`車種タイプ`はカテゴリーに該当するものをワンクリックで一覧表示させます。  
[![Image from Gyazo](https://i.gyazo.com/851fceab9cd490caff31cf522322ee26.gif)](https://gyazo.com/851fceab9cd490caff31cf522322ee26)
[![Image from Gyazo](https://i.gyazo.com/8c55bb4f5e37704bcb12baa3456dfb4e.gif)](https://gyazo.com/8c55bb4f5e37704bcb12baa3456dfb4e)
[![Image from Gyazo](https://i.gyazo.com/baa26d25aca92464f776f0fa81fe8c67.gif)](https://gyazo.com/baa26d25aca92464f776f0fa81fe8c67)

・`排気量`、`メーカー`、`車種タイプ`3つの項目を元に絞り込み検索も可能です。  
・必要ない項目は「指定なし」の状態で検索から省くことが可能です。  
[![Image from Gyazo](https://i.gyazo.com/b77b40112cf216e6d3238ca5b6c1683a.gif)](https://gyazo.com/b77b40112cf216e6d3238ca5b6c1683a)

# 工夫したポイント
常にユーザー視点に立ち、ユーザーが「使いやすい、楽しい」と思えるようなUI/UXを意識して制作しました。  
具体的なポイントとして、  
・初めてこのアプリを見ても、直感的に使用方法が理解できる。  
・アニメーションを用いて、視覚的な楽しみを作る。  
・なるべく画面遷移を少なく、ワンクリックで目的地に辿り着けるルーティング作成  
・jQueryやAjax通信により素早いレスポンスを与え、ストレスレスな操作感  
などが工夫したポイントです。

# 苦労したポイント
とにかくデプロイの一言につきます。
本アプリはDockerで開発したコンテナを、ECRにプッシュし、ECS(EC2)+VPC+RDS+S3でデプロイしたものに、Freenom+Route53でドメインを設定し本番運用しています。
過去にDockerを用いていないRailsをEC2にてデプロイをしたことがありますが、Dockerをデプロイすることは私にとって非常にハイレベルなものでした。
ネットワーク周りのエラー、接続されてもローカルでは出なかったRailsエラーにも悩まされました。
まずはDockerを再度基本から学び直し、そしてAWSでどのようにデプロイしたものが外部アクセスできるのか、学習に励み、その結果デプロイすることができました。
この経験は私の中でも非常に自信につながるものであり、引き続き学習に努め、より自分のものへと吸収していきたいと考えています。

# 使用技術(開発環境)
サーバーサイド：Ruby on Rails  
フロントサイド：HTML, CSS, JavaScript, jQuery, Bootstrap  
テスト：RSpec  
インフラ：Docker, AWS(ECR+ECS+EC2+S3+VPC+S3+Route53), Freenom  
エディタ：VScode

# 課題・今後実現したい機能

### レスポンシブデザイン化
現時点ではブラウザでのみしか表示が適応しておらず、スマホやタブレットサイズでも快適にアプリが使用できるレスポンシブデザイン化は必須と考えます。  
具体的にはCSSにメディアクエリを用いて実装予定です。  

### アカウント削除機能
退会する機能が未実装であります。退会するまでのフローチャートをシンプルにして実装予定です。ただし、この機能はワンクリックでアカウントが削除されないように注意すべき点であると考えます。  

### 検索機能の充実化
現在検索機能はトップページに集約されています。今後は`検索結果ページ`にも検索機能を追加実装する予定です。  
理由は、ユーザーが一度検索を行い、欲しい情報が得られなかった場合、少し範囲を広げて検索する行動が予測され、都度トップページに戻るのは煩わしいと考えるからです。  

### CI/CDパイプライン作成、デプロイの自動化
現在は下記の流れで手動デプロイを行っております。
①ECRにイメージをプッシュ
②ECS・EC2インスタンスにSSH接続し、コンテナを再起動
特に手間があるわけでもなく、またローカルで動作をしっかり吟味した上でデプロイを行いたいので、性に合ってはいるのですが、今後はエンジニアで働くことをイメージして、CI/CDパイプラインによりgitからの自動デプロイが出来たらと考えています。

# DB設計
## ER図
[![Image from Gyazo](https://i.gyazo.com/344dd7ab4d06a23064076448fd997ee4.png)](https://gyazo.com/344dd7ab4d06a23064076448fd997ee4)

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