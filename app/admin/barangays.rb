ActiveAdmin.register Barangay do
  menu label: 'Barangays', priority: 2

  permit_params :name, :population, :status

  index do
    selectable_column
    id_column
    column :name
    column :population
    column :status do |barangay|
      status_tag barangay.status
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :population
      row :status do |barangay|
        status_tag barangay.status
      end
      row :created_at
      row :updated_at
    end
  end

end
