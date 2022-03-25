FactoryBot.define do
  factory :word_answer do
    w_correct { Faker::Number.between(from: 0, to: 1) }
    w_incorrect { Faker::Number.between(from: 0, to: 1) }
    association :user
    association :word
  end
end
