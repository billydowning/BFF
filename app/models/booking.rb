class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :fan_group
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
end
