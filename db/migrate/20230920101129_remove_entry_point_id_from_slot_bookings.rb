class RemoveEntryPointIdFromSlotBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :slot_bookings, :entry_point_id
  end
end
