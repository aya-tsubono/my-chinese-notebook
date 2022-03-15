class RenameSentencesColumnToSentences < ActiveRecord::Migration[6.0]
  def change
    rename_column :sentences, :sentences, :sentences_name
  end
end
