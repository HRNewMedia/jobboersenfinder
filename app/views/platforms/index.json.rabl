collection platforms

attributes :id, :name, :coverage, :is_specialized, :activity, :rank, :is_filterable

child occupational_fields: :occupational_fields do
  attributes :id
end

child :kinds do
  attributes :id
end

child :employment_types do
  attributes :id
end

child specialized_occupational_fields: :specialized_occupational_fields do
  attributes :id
end

node :logo_url do |platform|
  platform.logo.thumb('160x120>').url
end
