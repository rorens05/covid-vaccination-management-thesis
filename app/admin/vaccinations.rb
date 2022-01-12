ActiveAdmin.register Vaccination do

  menu priority: 3

  permit_params :patient_id, :vaccine_id, :date_of_vacination, :vaccinator, :lot_no

  filter :patient
  filter :vaccine

  index do
    selectable_column
    id_column
    column :patient
    column :vaccine
    column :date_of_vacination
    actions
  end 

  form do |f|
    f.inputs do
      f.input :patient
      f.input :vaccine
      f.input :vaccinator
      f.input :lot_no
      f.input :date_of_vacination, as: :date_picker
    end
    f.actions
  end
  
end
