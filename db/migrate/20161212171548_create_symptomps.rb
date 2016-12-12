class CreateSymptomps < ActiveRecord::Migration
  def change
    create_table :symptomps do |t|
      t.string :symptompsName
      t.string :symptompsDesc

      t.timestamps null: false
    end
  end
end
