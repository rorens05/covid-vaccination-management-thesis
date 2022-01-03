class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.references :barangay, null: false, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.date :birthday
      t.string :contact_number
      t.integer :gender, default: 0
      t.integer :status, default: 0
      t.string :place_of_birth_city
      t.string :place_of_birth_country
      t.string :nationality
      t.integer :civil_status, default: 0
      t.string :religion
      t.string :address

      t.timestamps
    end
  end
end
