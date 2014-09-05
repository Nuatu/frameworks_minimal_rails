class Framework < ActiveRecord::Base

  validates :name, presence: true
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

end
