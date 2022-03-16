class Sentence < ApplicationRecord
  belongs_to :user

  validates :sentences_name, presence: true
  validates :sentences_meaning, presence: true
end
