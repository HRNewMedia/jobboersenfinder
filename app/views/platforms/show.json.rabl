object platform

attributes :id, :url, :rank, :description, :is_filterable, :is_specialized, :activity

child :supporter do |platform|
  attributes :name
end

child :employment_types do
  attributes :name
end

child :features do
  attributes :name
end

child :kinds do
  attributes :name
end

child occupational_fields: :occupational_fields do
  attributes :name
end

child specialized_occupational_fields: :specialized_occupational_fields do
  attributes :name
end

node :logo_url do
  platform.logo.thumb('160x120>').url
end
