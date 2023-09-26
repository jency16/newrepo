class ParkingSlot < ApplicationRecord
  has_many :slot_bookings
  belongs_to :entry_point
end
