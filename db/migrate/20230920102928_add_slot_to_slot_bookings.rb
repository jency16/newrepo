class AddSlotToSlotBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :slot_bookings, :slot, :integer
  end
end
