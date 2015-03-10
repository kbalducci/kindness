class Service < ActiveRecord::Base
  belongs_to :organization
  belongs_to :patient
end
