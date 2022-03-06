class AddDetailsToWord < ActiveRecord::Migration[6.0]
  def change
    add_reference :words, :user, null: false, foreign_key: true
  end
end
