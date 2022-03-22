class WordAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :word

  validates :w_correct, presence: true, numericality: true
  validates :w_incorrect, presence: true, numericality: true

end
