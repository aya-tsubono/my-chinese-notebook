class RenameWordsColumnToWords < ActiveRecord::Migration[6.0]
  def change
    rename_column :words, :words, :words_name
  end
end
