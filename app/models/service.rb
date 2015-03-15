class Service < ActiveRecord::Base
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings
  accepts_nested_attributes_for :tags

  has_attached_file :photo,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :bucket => 'kbjsinstaclone',
  :url =>':s3_domain_url',
  :path => ':class/:attachment/:id_partition/:style/:filename',
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def self.tagged_with(name)
    Tag.find_by_name!(name).services
  end

  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").
      joins(:taggings).group("taggings.tag_id")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end

end
