class CreateParkingSlots < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_slots do |t|
      t.string :number
      t.float :latitude
      t.float :longitude
      t.references :entry_point, null: false, foreign_key: true

      t.timestamps
    end
  end
end
