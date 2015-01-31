# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    send_id 1
    content "MyText"
    accept_id 1
    status 1
  end
end
