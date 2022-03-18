class Word < ApplicationRecord
  belongs_to :user
  has_many :word_answers
  
  validates :words_name, presence: true
  validates :words_meaning, presence: true
  validates :words_pronunciation, presence: true
end
