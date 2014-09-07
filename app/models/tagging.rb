class Tagging < ActiveRecord::Base

  validates :name, presence: true
  belongs_to :tag
  belongs_to :taggable, polymorphic: true

end