# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_25_014706) do

  create_table "sentences", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sentences_name", null: false
    t.string "sentences_meaning", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sentences_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.date "registration_date", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "word_answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "w_correct"
    t.integer "w_incorrect"
    t.bigint "user_id", null: false
    t.bigint "word_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_word_answers_on_user_id"
    t.index ["word_id"], name: "index_word_answers_on_word_id"
  end

  create_table "word_mean_answers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "m_correct"
    t.integer "m_incorrect"
    t.bigint "user_id", null: false
    t.bigint "word_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_word_mean_answers_on_user_id"
    t.index ["word_id"], name: "index_word_mean_answers_on_word_id"
  end

  create_table "words", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "words_name", null: false
    t.string "words_meaning", null: false
    t.string "words_pronunciation", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_words_on_user_id"
  end

  add_foreign_key "sentences", "users"
  add_foreign_key "word_answers", "users"
  add_foreign_key "word_answers", "words"
  add_foreign_key "word_mean_answers", "users"
  add_foreign_key "word_mean_answers", "words"
  add_foreign_key "words", "users"
end
