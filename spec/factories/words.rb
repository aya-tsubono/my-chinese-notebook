FactoryBot.define do
  factory :word do
    words_name { Faker::Lorem.sentence }
    words_meaning { Faker::Lorem.sentence }
    words_pronunciation { Faker::Lorem.sentence }
    association :user
  end
end
