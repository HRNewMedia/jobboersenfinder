json.platforms do |json|
  json.(platform, :id, :url, :rank, :description, :is_filterable, :is_specialized, :activity)
  json.supporter platform.supporter, :name
  json.employment_types platform.employment_types, :name
  json.features platform.features, :name
  json.kinds platform.kinds, :name
  json.occupational_fields platform.occupational_fields, :name
  json.specialized_occupational_fields platform.specialized_occupational_fields, :name
  json.logo_url platform.logo.thumb('160x120>').url unless platform.logo.blank?
end
