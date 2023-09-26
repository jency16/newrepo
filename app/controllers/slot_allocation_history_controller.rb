class SlotAllocationHistoryController < ApplicationController
  def show
    @vehicle_registration_number = params[:vehicle_registration_number]
    @allocation_history = SlotBooking.where(vehicle_registration_number: @vehicle_registration_number).order(entry_time: :asc)
  end
end
