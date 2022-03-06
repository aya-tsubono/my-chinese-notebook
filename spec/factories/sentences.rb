FactoryBot.define do
  factory :sentence do
    sentences { Faker::Lorem.sentence }
    sentences_meaning { Faker::Lorem.sentence }
    association :user
  end
end
