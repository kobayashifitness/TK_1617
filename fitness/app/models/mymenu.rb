class Mymenu < ActiveRecord::Base
belongs_to :user
has_many :muscle_tasks

end
