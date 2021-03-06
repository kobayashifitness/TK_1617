class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :muscle

  has_many :heights
  has_many :weights
  has_many :muscle_masses
  has_many :goods

  mount_uploader :image, ProfileImageUploader

  validates :name, presence: true

end
