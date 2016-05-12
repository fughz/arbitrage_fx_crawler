class CurrencyPair < ActiveRecord::Base
  has_many :swap_points
end
