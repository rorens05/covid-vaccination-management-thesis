class AddOtherInfoToPatient < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :philhealth_number, :string
    add_column :patients, :category, :string
  end
end
