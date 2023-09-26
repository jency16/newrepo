class CreateSlotBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :slot_bookings do |t|
      t.string :entrance_number
      t.string :vehicle_registration_number
      t.string :entry_time
      t.string :entry_point_id

      t.timestamps
    end
  end
end
