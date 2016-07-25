class CreateSwapPoints < ActiveRecord::Migration
  def change
    create_table :swap_points do |t|
      t.float :short_point, null: false
      t.float :long_point, null: false
      t.integer :currency_unit, null: false
      t.datetime :date, null: false

      t.timestamps null: false
    end
  end
end
