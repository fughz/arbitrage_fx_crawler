class AddTraderIdToSwapPoints < ActiveRecord::Migration
  def change
    add_reference :swap_points, :trader, index: true, foreign_key: true
  end
end
