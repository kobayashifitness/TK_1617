class Protein < ActiveRecord::Base
  belongs_to :user

  validates :diary_date, presence: true
end
