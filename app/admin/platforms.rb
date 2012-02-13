ActiveAdmin.register Platform do

  index do
    column :name
    column :url
    column :activity
    column :rank
    column :is_specialized
    column :is_published
    column :logo do |platform|
      image_tag platform.logo.thumb('160x120>').url unless platform.logo.blank?
    end
    default_actions
  end

  show do |platform|
    attributes_table do
      row :id
      row :name
      row :description
      row :url
      row :activity
      row :rank
      row :is_specialized
      row :is_filterable
      row :is_published
      row :created_at
      row :updated_at
      row :logo do
        image_tag platform.logo.thumb('160x120>').url unless platform.logo.blank?
      end
      row :supporter
      row :coverage
    end

    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :supporter
      f.input :name
      f.input :description
      f.input :url
      f.input :activity
      f.input :rank
      f.input :logo, as: :file
      f.input :coverage
    end
    f.buttons
  end
end
