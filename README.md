# Ruby version
2.6.5
# Database creation
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

