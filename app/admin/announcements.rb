ActiveAdmin.register Announcement do
  menu :priority => 2
  permit_params :title, :content  
end
