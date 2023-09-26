class FirstEntryTimesController < ApplicationController
  def index
    @first_entries = SlotBooking.select('MIN(entry_time) as first_entry_time', :vehicle_registration_number).group(:vehicle_registration_number)
  end
end
