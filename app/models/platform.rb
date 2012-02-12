class Platform
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :description
  field :url
  field :activity, type: Integer
  field :rank, type: Integer
  field :is_specialized, type: Boolean
  field :is_filterable, type: Boolean
  field :is_published, type: Boolean
  field :coverage
  field :logo_name
  field :logo_uid

  references_and_referenced_in_many :employment_types
  references_and_referenced_in_many :features
  references_and_referenced_in_many :kinds
  references_and_referenced_in_many :occupational_fields, class_name: 'Field'
  references_and_referenced_in_many :specialized_occupational_fields, class_name: 'Field'

  references_many :cooperations, class_name: 'Platform', foreign_key: 'supporter_id'

  referenced_in :supporter, class_name: 'Platform'

  validates_presence_of :name, :description, :url, :activity, :rank, :logo
  validates_uniqueness_of :name, case_sensitive: false

  scope :supported, where(:supporter_id.ne => nil)
  scope :unsupported, where(supporter_id: nil)
  scope :published, where(is_published: true)

  image_accessor :logo

  def self.rank_collection
    (0..4).to_a
  end
end
