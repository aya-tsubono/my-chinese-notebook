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
- has_one :word_answer
- has_one :sentence_answer


## words テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| words_name         | string     | null: false, unique: true      |
| words_meaning      | string     | null: false                    |
| words_pronunciation| string     | null: false                    |
| user_id            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :words


## sentences テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| sentences_name         | string     | null: false, unique: true      |
| sentence_meaning       | string     | null: false                    |
| user_id                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :sentences


## word_answers テーブル

| Column      | Type       | Options                         |
| ----------- | ---------- | ------------------------------- |
| w_correct   | integer    |                                 |
| w_incorrect | integer    |                                 |
| word_id     | references | null: false, foreign_key: true  |
| user_id     | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :word


## word_mean_answers テーブル

| Column      | Type       | Options                         |
| ----------- | ---------- | ------------------------------- |
| m_correct   | integer    |                                 |
| m_incorrect | integer    |                                 |
| word_id     | references | null: false, foreign_key: true  |
| user_id     | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :word


## sentence_answers テーブル

| Column       | Type       | Options                         |
| ------------ | ---------- | ------------------------------- |
| s_correct    | integer    |                                 |
| s_incorrect  | integer    |                                 |
| sentence _id | references | null: false, foreign_key: true  |
| user_id      | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :sentence
