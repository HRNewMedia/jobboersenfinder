class Feature < ActiveRecord::Base

  default_scope order: 'features.name ASC'

  has_and_belongs_to_many :platforms

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false
end
