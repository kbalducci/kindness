class Kindship < ActiveRecord::Base
  belongs_to :user
  belongs_to :act
end
