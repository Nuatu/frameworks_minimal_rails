class Framework < ActiveRecord::Base

  validates :name, presence: true
  # has_many :tags, as => :taggable
  has_many :tags, as: :taggable

end
