# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    password 'testtest'
    password_confirmation 'testtest'
  end
end
