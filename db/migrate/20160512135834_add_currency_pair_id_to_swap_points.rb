class AddCurrencyPairIdToSwapPoints < ActiveRecord::Migration
  def change
    add_reference :swap_points, :currency_pair, index: true, foreign_key: true
  end
end
