class CreateVaccineStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccine_stocks do |t|
      t.references :vaccine, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.datetime :date_added, null: false

      t.timestamps
    end
  end
end
