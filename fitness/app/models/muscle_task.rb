class MuscleTask < ActiveRecord::Base
  belongs_to :event
  belongs_to :mymenu
end
