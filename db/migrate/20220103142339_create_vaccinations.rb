class CreateVaccinations < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccinations do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :vaccine, null: false, foreign_key: true
      t.date :date_of_vacination

      t.timestamps
    end
  end
end
