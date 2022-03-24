FactoryBot.define do
  factory :word_answer do
    w_correct { Faker::Number.between(from: 0, to: 1) }
    w_incorrect { Faker::Number.between(from: 0, to: 1) }
    word_id { Faker::Number.digit }
    association :user

  end
end
