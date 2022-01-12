class AddMoreInfoToVaccination < ActiveRecord::Migration[6.0]
  def change
    add_column :vaccinations, :vaccinator, :string
    add_column :vaccinations, :lot_no, :string
  end
end
