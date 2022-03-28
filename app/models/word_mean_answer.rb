class WordMeanAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :word

  validates :m_correct, presence: true, numericality: true
  validates :m_incorrect, presence: true, numericality: true
end
