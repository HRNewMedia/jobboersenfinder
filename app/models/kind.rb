class Kind < ActiveRecord::Base

  has_and_belongs_to_many :platforms

  validates_uniqueness_of :name
  validates_presence_of :name, case_sensitive: false
end
