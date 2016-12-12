class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.belongs_to :medicines, index: true
      t.integer :quantity
      t.integer :price

      t.timestamps null: false
    end
  end
end
