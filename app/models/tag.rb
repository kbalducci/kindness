class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :acts, through: :taggings
  has_many :services, through: :taggings
end
