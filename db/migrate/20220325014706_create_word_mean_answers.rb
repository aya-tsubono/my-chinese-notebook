class CreateWordMeanAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :word_mean_answers do |t|
      t.integer  :m_correct
      t.integer  :m_incorrect
      t.references :user, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true
      t.timestamps
    end
  end
end
