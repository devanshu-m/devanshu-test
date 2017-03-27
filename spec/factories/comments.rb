require 'faker'

FactoryGirl.define do
  factory :comment do |u|
    u.body { Faker::Lorem.characters }
  end
end