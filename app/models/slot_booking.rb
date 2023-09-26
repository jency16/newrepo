# app/models/slot_booking.rb

class SlotBooking < ApplicationRecord
  belongs_to :parking_slot
  belongs_to :entry_point

  def self.find_nearest_available_slot(entry_point)
    available_slots = ParkingSlot.where.not(id: SlotBooking.select(:slot_id))

    nearest_slot = nil
    min_distance = nil

    available_slots.each do |slot|
      distance = Geocoder::Calculations.distance_between(
        [entry_point.latitude, entry_point.longitude],
        [slot.latitude, slot.longitude]
      )

      if min_distance.nil? || distance < min_distance
        nearest_slot = slot
        min_distance = distance
      end
    end

    nearest_slot
  end
end
