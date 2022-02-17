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


## words テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| word               | string  | null: false, unique: true |
| word_meaning       | string  | null: false               |
| word_pronunciation | string  | null: false               |

### Association

- 


## sentences テーブル

| Column                 | Type    | Options                   |
| ---------------------- | ------- | ------------------------- |
| sentence               | string  | null: false, unique: true |
| sentence_meaning       | string  | null: false               |

### Association

- 


## sentences テーブル

| Column                 | Type    | Options                   |
| ---------------------- | ------- | ------------------------- |
| sentence               | string  | null: false, unique: true |
| sentence_meaning       | string  | null: false               |

### Association

- 