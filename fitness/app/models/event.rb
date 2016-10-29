class Event < ActiveRecord::Base
  has_many :muscle_of_events
  has_many :muscles, :through => :muscle_of_events

   scope :autocomplete, ->(term) { where("event_name LIKE ?", "#{term}%").order(:event_name) }
end
