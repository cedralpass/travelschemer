# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    user
    trip
    title "MyString"
    body "MyText"

  end


end
