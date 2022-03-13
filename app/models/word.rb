class Word < ApplicationRecord
  belongs_to :user

  validates :words_name, presence: true
  validates :words_meaning, presence: true
  validates :words_pronunciation, presence: true
end
