FactoryBot.define do
  factory :user do
    name                  {Faker::Name.name}
    phone_number          {Faker::Number.number(digits: 10)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end