class CreateVaccines < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccines do |t|
      t.string :name
      t.integer :number_of_doses, deafult: 1
      t.integer :status, deafult: 0

      t.timestamps
    end
  end
end
