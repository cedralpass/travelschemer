# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    title "MyString"
    body "MyText"
    public false
  end
end
