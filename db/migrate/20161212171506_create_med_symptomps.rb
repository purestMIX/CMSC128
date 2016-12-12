class CreateMedSymptomps < ActiveRecord::Migration
  def change
    create_table :med_symptomps do |t|
      t.belongs_to :medicines, index: true
      t.belongs_to :symptomps, index: true

      t.timestamps null: false
    end
  end
end
