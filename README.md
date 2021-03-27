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
- has_many :bikkes
- has_many :comments
## bikkesテーブル
| Column            | Type          | Options                        |
| ----------------- | ------------- | ------------------------------ |
| bike              | string        | null: false                    |
| year              | integer       |                                |
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
| review            | text          |                                |
| user              | references    | null: false, foreign_key: true |
### Association
- belongs_to :user
- has_many   :comments
## commentsテーブル
| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| bikke     | references | null: false, foreign_key: true |
### Association
- belongs_to :user
- belongs_to :bikke
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...