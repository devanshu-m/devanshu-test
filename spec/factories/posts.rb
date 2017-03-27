require 'faker'

FactoryGirl.define do
  factory :post do |u|
    u.title { Faker::Name.title }
    u.body { Faker::Lorem.characters }
  end
end