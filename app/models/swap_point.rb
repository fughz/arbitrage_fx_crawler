class SwapPoint < ActiveRecord::Base
  belongs_to :currency_pair
  belongs_to :trader
end
