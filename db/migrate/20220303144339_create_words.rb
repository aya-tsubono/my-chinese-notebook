class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string  :words,               null: false, unique: true
      t.string  :words_meaning,       null: false
      t.string  :words_pronunciation, null: false
      t.timestamps
    end
  end
end
