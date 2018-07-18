FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "user-#{n}"}
    password 'password'
    sequence(:email) { |n| "user#{n}@email.com"}
    role 0
  end
end