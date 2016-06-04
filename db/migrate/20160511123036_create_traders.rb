class CreateTraders < ActiveRecord::Migration
  def change
    create_table :traders do |t|
      t.string :name, null: false
      t.string :key, null: false

      t.timestamps null: false
    end
  end
end
