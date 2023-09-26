class SlotBookingsController < ApplicationController
  before_action :set_entry_point
  def new
    @slot_booking = SlotBooking.new
  end

  def create
    @slot_booking = SlotBooking.new(slot_booking_params)

    entry_point = EntryPoint.find(@slot_booking.entrance_number)
    # Find the nearest available slot for the selected entry point

    @slot_booking.slot = SlotBooking.find_nearest_available_slot(entry_point)

    if @slot_booking.save
      flash[:success] = 'Slot booked successfully!'
      redirect_to root_path
    else
      flash.now[:error] = 'Slot booking failed!'
      render :new
    end
  end

  private

  def set_entry_point
    @entry_points = EntryPoint.all
  end

  def slot_booking_params
    params.require(:slot_booking).permit(:entrance_number, :vehicle_registration_number, :entry_time)
  end
end
