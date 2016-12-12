class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.belongs_to :brand, index: true
      t.belongs_to :generic, index: true
      t.string :medType
      t.string :Classification

      t.timestamps null: false
    end
  end
end
