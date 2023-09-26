# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

# Sample Entry Points
EntryPoint.create(name: 'Entry Point 1', latitude: 12.345, longitude: 67.890)
EntryPoint.create(name: 'Entry Point 2', latitude: 23.456, longitude: 78.901)
EntryPoint.create(name: 'Entry Point 3', latitude: 34.567, longitude: 89.012)
EntryPoint.create(name: 'Entry Point 4', latitude: 45.678, longitude: 90.123)

# Sample Parking Slots
1000.times do |i|
  ParkingSlot.create(number: "Slot #{i + 1}", latitude: rand(30..40), longitude: rand(70..80), entry_point: EntryPoint.all.sample)
end
