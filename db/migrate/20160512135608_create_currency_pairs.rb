class CreateCurrencyPairs < ActiveRecord::Migration
  def change
    create_table :currency_pairs do |t|
      t.string :name, null: false
      t.float :value, null: false

      t.timestamps null: false
    end
  end
end
