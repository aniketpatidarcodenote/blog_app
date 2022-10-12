class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :type
      t.string :color
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
