ActiveAdmin.register Patient do

  menu label: "Patients", priority: 2

  permit_params :barangay_id, :first_name, :middle_name, :last_name, :email, :birthday, :contact_number, :gender, :status, :place_of_birth_city, :place_of_birth_country, :nationality, :civil_status, :religion, :address, :philhealth_number, :category
  
  filter :first_name
  filter :last_name
  filter :barangay
  filter :status

  index do
    selectable_column
    id_column
    column :barangay
    column :name
    column :birthday
    column :gender
    column :category
    column :status do |item|
      status_tag item.status
    end
    column :created_at
    actions
  end 

  form do |f|
    f.input :barangay
    f.input :first_name
    f.input :middle_name
    f.input :last_name
    f.input :email
    f.input :birthday, as: :date_picker
    f.input :contact_number
    f.input :gender
    f.input :status
    f.input :place_of_birth_city
    f.input :place_of_birth_country, as: :string
    f.input :nationality
    f.input :civil_status
    f.input :religion
    f.input :address
    f.input :philhealth_number
    f.input :category
    f.actions
  end

  show do
    tabs do
      tab "General Information" do
        attributes_table do
          row :id
          row :barangay
          row :first_name
          row :middle_name
          row :last_name
          row :email
          row :philhealth_number
          row :category
          row :birthday
          row :contact_number
          row :gender
          row :status do
            status_tag resource.status
          end
          row :place_of_birth_city
          row :place_of_birth_country
          row :nationality
          row :civil_status
          row :religion
          row :address
        end
        a "Print Vaccination Card", href: "/vaccination_card/#{resource.id}", target: '_blank', class: 'active-admin-btn' if resource.vaccinations.count.positive?
      end
      tab "Vaccinations" do
        table_for resource.vaccinations do
          column :vaccine
          column :date_of_vacination
        end
      end
    end
  end

end
