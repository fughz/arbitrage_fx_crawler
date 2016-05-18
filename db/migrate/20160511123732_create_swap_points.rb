class CreateSwapPoints < ActiveRecord::Migration
  def change
    create_table :swap_points do |t|
      t.float :short_point
      t.float :long_point
      t.integer :currency_unit
      t.datetime :date

      t.timestamps null: false
    end
  end
end
