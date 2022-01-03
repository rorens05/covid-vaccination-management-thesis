ActiveAdmin.register Vaccine do

  menu label: 'Vaccines', priority: 2
  permit_params :name, :number_of_doses, :status

  index do
    selectable_column
    id_column
    column :name
    column :number_of_doses
    column :status do |vaccine|
      status_tag vaccine.status
    end
    column :stocks
    column :created
    actions
  end

  show do
    tabs do
      tab "General Information" do
        br
        attributes_table do
          row :name
          row :number_of_doses do |vaccine|
            "#{vaccine.number_of_doses} doses"
          end
          row :stocks do |vaccine|
            "#{vaccine.stocks} stocks"
          end
          row :remaining_stocks do |vaccine|
            "#{vaccine.remaining_stocks} stocks"
          end
          row :status do |vaccine|
            status_tag vaccine.status
          end
          row :created_at
          row :updated_at
        end
      end
      tab "Vaccine Stocks" do
        
        a href: new_admin_vaccine_stock_path, class: "button" do
          "Add new stock"
        end
        br
        br
        table_for vaccine.vaccine_stocks.order(created_at: :desc) do
          column :id
          column :quantity
          column :date_added do |stock|
            stock.created_at
          end
          column :actions do |stock|
            a href: edit_admin_vaccine_stock_path(stock), class: "button" do
              "Edit"
            end
            a href: "/admin/vaccine_stocks/#{stock.id}", "data-method": "delete", class: "button" do
              "Delete"
            end
          end
        end
      end
      tab "Vaccination History" do
        table_for resource.vaccinations do
          column :id
          column :patient
          column :date_of_vacination
        end
      end

    end 
  end 
  
end
