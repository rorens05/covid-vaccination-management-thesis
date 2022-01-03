ActiveAdmin.register Barangay do
  menu label: 'Barangays', priority: 2

  permit_params :name, :population, :status

  filter :name
  filter :status

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
    tabs do
      tab "General Information" do
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
      tab "Patients" do
        table_for resource.patients do
          column :id
          column :name do |patient|
            link_to patient.name, admin_patient_path(patient)
          end
          column :email
          column :status do |patient|
            status_tag patient.status
          end
        end
      end
    end
  end

end
