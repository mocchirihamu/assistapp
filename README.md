# AssistAppのER図

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| name               | string | null: false               |
| area               | text   | null: false               |
| group              | text   | null: false               |


### Association

- has_many :projects
- has_many :comments

## projects テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| category_id  | integer    | null: false                    |
| limit        | date       | null: false                    |
| detail       | text       | null: false                    |
| suppulement  | text       | null: false                    |
| user         | references | null: false, foreign_key: true |
 

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| reply        | text       | null: false                    |
| project      | references | null: false, foreign_key: true |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :project