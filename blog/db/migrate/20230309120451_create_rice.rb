class CreateRice < ActiveRecord::Migration[7.0]
  def change
    create_table :rice do |t|
      t.integer :kg
      t.decimal :price
      t.string :brand

      t.timestamps
    end
  end
end
