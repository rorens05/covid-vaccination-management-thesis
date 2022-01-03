ActiveAdmin.register VaccineStock do

  menu false

  permit_params :vaccine_id, :quantity, :date_added
 
  index do
    selectable_column
    column :vaccine
    column :quantity
    column :date_added
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.object.date_added = Date.today if f.object.new_record?
    f.inputs do
      f.input :vaccine_id, as: :select, collection: Vaccine.all.map{|v| [v.name, v.id]}, include_blank: false
      f.input :quantity
      f.input :date_added, as: :hidden
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
