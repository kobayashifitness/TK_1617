class InputDatetimeDiary 
  include ActiveModel::Model
 attr_accessor :datetime

 validates :datetime, :presence => true
end
