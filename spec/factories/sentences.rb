FactoryBot.define do
  factory :sentence do
    sentences_name { Faker::Lorem.sentence }
    sentences_meaning { Faker::Lorem.sentence }
    association :user
  end
end
