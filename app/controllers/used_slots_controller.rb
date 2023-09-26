class UsedSlotsController < ApplicationController
  def index
    @selected_date = params[:selected_date] || Date.today
    @used_slots = SlotBooking.where(entry_time: @selected_date.beginning_of_day..@selected_date.end_of_day)
  end
end
