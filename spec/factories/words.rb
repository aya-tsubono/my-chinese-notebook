FactoryBot.define do
  factory :word do
    words { Faker::Lorem.sentence }
    words_meaning { Faker::Lorem.sentence }
    words_pronunciation { Faker::Lorem.sentence }
  end
end
