# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "someemail" + Time.now.nsec.to_s + Random.new(1000).rand(10000).to_s+ "@email.com"
    password "123455667"
  end
end
