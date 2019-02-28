class FanGroup < ApplicationRecord
  has_many :bookings

  mount_uploader :photo, PhotoUploader

  validates :group_name, uniqueness: true, presence: true
  validates :category, presence: true
  validates :price, presence: true
end
