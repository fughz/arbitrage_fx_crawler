FactoryGirl.define do
  factory :trader do
    sequence(:name) { |i| "trader_name#{i}"}
    sequence(:key) { |i| "trader_key#{i}"}
  end
end
