class CreateWordAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :word_answers do |t|
      t.integer  :w_correct
      t.integer  :w_incorrect
      t.references :user, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true
      t.timestamps
    end
  end
end
