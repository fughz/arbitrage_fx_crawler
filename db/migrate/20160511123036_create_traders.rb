class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.string :name
      t.string :key

      t.timestamps null: false
    end
  end
end