FactoryGirl.define do
  factory :swap_point do
    sequence(:short_point) { |i| i }
    sequence(:long_point) { |i| i }
    sequence(:currency_unit) { |i| 10000 }
    sequence(:date) { DateTime.now }

    trait :with_trader do
      trader
    end

    trait :with_currency_pair do
      currency_pair
    end
  end
end
