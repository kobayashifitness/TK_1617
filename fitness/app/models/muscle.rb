class Muscle < ActiveRecord::Base
  has_many :muscle_of_events
  has_many :events, :through => :muscle_of_events

end
