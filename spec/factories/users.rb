FactoryBot.define do
  factory :user do
    email               {Faker::Internet.free_email}
    password            { 'aaa1234' }
    name                   { '山田　太郎' }
  end
end
