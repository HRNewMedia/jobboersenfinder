ActiveAdmin.register Platform do

  controller do
    cache_sweeper :platform_sweeper
  end

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
      row :occupational_fields do
        platform.occupational_fields.map(&:name).sort.join('<br/>').html_safe
      end
      row :specialized_occupational_fields do
        platform.specialized_occupational_fields.map(&:name).sort.join('<br/>').html_safe
      end
      row :kinds do
        platform.kinds.map(&:name).sort.join('<br/>').html_safe
      end
      row :employment_types do
        platform.employment_types.map(&:name).sort.join('<br/>').html_safe
      end
      row :features do
        platform.features.map(&:name).sort.join('<br/>').html_safe
      end
      row :cooperations do
        platform.cooperations.map(&:name).sort.join('<br/>').html_safe
      end
    end

    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :supporter, collection: Platform.find(:all, order: 'name asc')
      f.input :name
      f.input :description
      f.input :url
      f.input :activity
      f.input :rank
      f.input :logo, as: :file
      f.input :coverage
      f.input :occupational_fields, collection: Field.find(:all, order: 'name asc')
      f.input :specialized_occupational_fields, collection: Field.find(:all, order: 'name asc')
      f.input :kinds, collection: Kind.find(:all, order: 'name asc')
      f.input :employment_types, collection: EmploymentType.find(:all, order: 'name asc')
      f.input :features, collection: Feature.find(:all, order: 'name asc')
    end
    f.buttons
  end
end
