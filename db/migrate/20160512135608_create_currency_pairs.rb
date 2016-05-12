class CreateCurrencyPairs < ActiveRecord::Migration
  def change
    create_table :currency_pairs do |t|
      t.string :name
      t.float :value
      t.datetime :date

      t.timestamps null: false
    end
  end
end
