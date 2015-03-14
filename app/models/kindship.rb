class Kindship < ActiveRecord::Base
  belongs_to :user
  belongs_to :act
  # belongs_to :task, class_name: :act
end

 # belongs_to :task, :class_name => "Act"
