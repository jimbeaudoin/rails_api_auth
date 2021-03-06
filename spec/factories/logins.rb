FactoryGirl.define do
  factory :login do
    identification { Faker::Internet.email }
    password       { Faker::Lorem.word }

    trait :facebook do
      facebook_uid { Faker::Number.number }
      password nil
    end
  end
end
