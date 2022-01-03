ActiveAdmin.register Patient do

  
  
  permit_params :barangay_id, :first_name, :middle_name, :last_name, :email, :birthday, :contact_number, :gender, :status, :place_of_birth_city, :place_of_birth_country, :nationality, :civil_status, :religion, :address
  
end
