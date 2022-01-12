ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column span: 4 do
        render 'dashboard'

      end
      column class: 'announcement-container' do
        h3 "Announcements"
        hr
        Announcement.order(created_at: :desc).all.each do |announcement|
          div style: 'margin-bottom: 12px; padding: 8px; border-radius: 4px; box-shadow: 0px 0px 5px gray' do
            para announcement.title, style: 'font-weight: bold; margin: 0'
            small "#{format_date announcement.created_at} | #{format_time announcement.created_at}", style: "display: block; margin-bottom: 12px"
            span announcement.content
          end
        end
      end
    end
    
    
  end 
  
end
