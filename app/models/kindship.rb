class Kindship < ActiveRecord::Base
  belongs_to :user
  belongs_to :act
  validates :act_id, :uniqueness => {:scope => :user_id}
end


