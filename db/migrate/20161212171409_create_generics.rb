class CreateGenerics < ActiveRecord::Migration
  def change
    create_table :generics do |t|
      t.string :genericName
      t.string :desc

      t.timestamps null: false
    end
  end
end
