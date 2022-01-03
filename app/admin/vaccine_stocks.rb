ActiveAdmin.register VaccineStock do

  menu false

  permit_params :vaccine_id, :quantity, :date_added
 
  form do |f|
    f.object.date_added = Date.today if f.object.new_record?
    f.inputs do
      f.input :vaccine_id, as: :select, collection: Vaccine.all.map{|v| [v.name, v.id]}, include_blank: false
      f.input :quantity
    end
    f.actions
  end

  controller do
    def update
      super do |success,failure|
        success.html { redirect_to admin_vaccine_path(resource.vaccine_id) }
      end
    end
    def create
      super do |success,failure|
        success.html { redirect_to admin_vaccine_path(resource.vaccine_id) }
      end
    end
    def destroy
      super do |success,failure|
        success.html { redirect_to admin_vaccine_path(resource.vaccine_id) }
      end
    end
  end
end
