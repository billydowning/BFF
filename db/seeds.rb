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
    category: Faker::Lorem.words(10),
    price:  rand(0..5),
    size:   rand(0..5),
    description: Faker::Lorem.words(4)
  )
  fan_group.save!
end

