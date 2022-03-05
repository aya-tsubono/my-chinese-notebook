class Sentence < ApplicationRecord
  belongs_to :user
  
  validates :sentences, presence: true
  validates :sentences_meaning, presence: true
end
