class Word < ApplicationRecord
  validates :words, presence: true
  validates :words_meaning, presence: true
  validates :words_pronunciation, presence: true
end
