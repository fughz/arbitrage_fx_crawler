class CreateSwapPoints < ActiveRecord::Migration
  def change
    create_table :swap_points do |t|
      t.float :point
      t.integer :currency_unit
      t.string :currency_pair
      t.datetime :date

      t.timestamps null: false
    end
  end
end
