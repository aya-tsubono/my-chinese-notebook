class Word < ApplicationRecord
  belongs_to :user
  has_one :word_answer
  
  validates :words_name, presence: true
  validates :words_meaning, presence: true
  validates :words_pronunciation, presence: true
end
