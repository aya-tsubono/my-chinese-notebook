# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| registration_date  | date    | null:false                |


### Association

- 


## words テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| word           | string  | null: false               |
| word_meaning       | string  | null: false, unique: true |

### Association

- 