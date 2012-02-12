collection platforms
attributes :name

child supporter: :supporter do
  attributes :name
end

child employment_types: :employment_type do
  attributes :name
end

child features: :feature do
  attributes :name
end

child kinds: :kind do
  attributes :name
end

child occupational_fields: :occupational_field do
  attributes :name
end

child specialized_occupational_fields: :specialized_occupational_field do
  attributes :name
end
