json.platforms platforms do |json, platform|
  json.occupational_fields platform.occupational_fields, :id
  json.(platform, :name, :coverage, :is_specialized)
  json.kinds platform.kinds, :id
  json.(platform, :activity, :rank, :id)
  json.employment_types platform.employment_types, :id
  json.logo_url platform.logo.thumb('160x120>').url unless platform.logo.blank?
  json.specialized_occupational_fields platform.specialized_occupational_fields, :id
  json.is_filterable platform.is_filterable
end
