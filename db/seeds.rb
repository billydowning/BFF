
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating 10 fake entries...'
10.times do
  fan_group = FanGroup.new(
    group_name:    Faker::RockBand.name,
    category: Faker::Lorem.words(1),
    price:  rand(0..5),
    size:   rand(0..5),
    description: Faker::WorldOfWarcraft.quote
  )
  fan_group.save!
end

puts 'Cleaning database...'
Booking.destroy_all

puts 'Creating restaurants...'
bookings_attributes = [
  {
    time:         '1900',
    date:         '26.02.2019',
    location:     'Chicago',
    user_id:      2,
    fan_group_id:  7,

  },
  {
    time:         '2100',
    date:         '28.02.2019',
    location:     'Seattle',
    user_id:      2,
    fan_group_id:  7,
  }
]
Booking.create!(bookings_attributes)
puts 'Finished!'

