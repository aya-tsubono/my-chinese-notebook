# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| registration_date  | date    | null: false               |


### Association

- has_many :words
- has_many :sentences
- has_one :answer


## answers テーブル

| Column     | Type       | Options                         |
| ---------- | ---------- | ------------------------------- |
| correct    | integer    |                                 |
| incorrect  | integer    |                                 |
| user_id    | references | null: false, foreign_key: true  |

### Association

- belongs_to :user


## words テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| words              | string  | null: false, unique: true |
| words_meaning      | string  | null: false               |
| words_pronunciation| string  | null: false               |

### Association

- belongs_to :user


## sentences テーブル

| Column                 | Type    | Options                   |
| ---------------------- | ------- | ------------------------- |
| sentence               | string  | null: false, unique: true |
| sentence_meaning       | string  | null: false               |

### Association

- belongs_to :user
