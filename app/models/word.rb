class Word < ApplicationRecord
  belongs_to :user

  validates :words, presence: true
  validates :words_meaning, presence: true
  validates :words_pronunciation, presence: true
end
