class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :generic
      t.string :brand
      t.integer :price
      t.integer :Quantity
      t.integer :mg

      t.timestamps null: false
    end
  end
end
