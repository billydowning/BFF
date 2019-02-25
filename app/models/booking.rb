class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :fan_group
end
