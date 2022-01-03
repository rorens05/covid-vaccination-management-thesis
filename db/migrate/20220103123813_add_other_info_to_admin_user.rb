class AddOtherInfoToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :birthday, :date
    add_column :admin_users, :contact_number, :string
    add_column :admin_users, :gender, :integer
  end
end
