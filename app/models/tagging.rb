class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :act
  belongs_to :service
end
