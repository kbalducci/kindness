class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :acts
  has_many :services
  has_many :volunteerships
  has_many :opportunities, through: :volunteerships, class_name: "Service"
  has_many :kindships
  has_many :tasks, through: :kindships, source: :act
  accepts_nested_attributes_for :acts


  has_attached_file :avatar,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :bucket => 'kbjsinstaclone',
  :url =>':s3_domain_url',
  :path => ':class/:attachment/:id_partition/:style/:filename',
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def full_name
    "#{first_name} #{last_name}"
  end
end
