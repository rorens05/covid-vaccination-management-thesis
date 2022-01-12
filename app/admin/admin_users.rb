ActiveAdmin.register AdminUser do
  menu label: 'Admins'
  permit_params :email, :name, :role, :status, :password, :password_confirmation, :image

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :role
    column :status do |admin_user|
      status_tag admin_user.status
    end
    column :created_at
    actions
  end

  filter :email
  filter :role, as: :select
  filter :status, as: :select

  form do |f|
    f.inputs do
      f.input :image, as: :file
      f.input :email
      f.input :name
      f.input :role
      f.input :status
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
