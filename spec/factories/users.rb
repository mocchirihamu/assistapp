FactoryBot.define do
  factory :user do
    email               { 'test@mail.com' }
    password            { 'aaa1234' }
    name                   { '山田　太郎' }
    area_id               { '2' }
  end
end
