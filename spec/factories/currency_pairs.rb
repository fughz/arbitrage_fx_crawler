FactoryGirl.define do
  factory :currency_pair do
    name "USD/JPY"
    sequence(:value) { |i| i }
    date DateTime.now
  end
end
