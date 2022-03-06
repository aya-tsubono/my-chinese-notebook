class CreateSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :sentences do |t|
      t.string  :sentences,         null: false, unique: true
      t.string  :sentences_meaning, null: false
      t.references :user,           null: false, foreign_key: true
      t.timestamps
    end
  end
end
