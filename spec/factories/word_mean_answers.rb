FactoryBot.define do
  factory :word_mean_answer do
    m_correct { Faker::Number.between(from: 0, to: 1) }
    m_incorrect { Faker::Number.between(from: 0, to: 1) }
    association :user
    association :word
  end
end
