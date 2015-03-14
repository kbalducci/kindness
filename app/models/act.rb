class Act < ActiveRecord::Base
  belongs_to :user
  has_many :users, through: :kindship
  has_many :taggings
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :tags
end
