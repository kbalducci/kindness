class Volunteership < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  validates :service_id, :uniqueness => {:scope => :user_id}
end
