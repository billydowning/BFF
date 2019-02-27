
# Seeds for fangroups

puts 'Cleaning the database...'
FanGroup.destroy_all

fake_attributes = [
  {
    group_name:   'The ultimate fan group',
    category:     'Concert Hippie',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'We will give you the best fan group you have ever seen. But no touching.',
    location:     'London'
  },
  {
    group_name:   'The Outrageous',
    category:     'Political Rally',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'We will even through stones if you wish.',
    location:     'Madrid'
  },
  {
    group_name:   'The sporties',
    category:     'Sport fans',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'We will beat the shit out of the other team. LOL. Just joking. Maybe not. We need the money.',
    location:     'London'
  },
  {
    group_name:   'Comcats',
    category:     'Stand-up comedy',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'friendly clapping guaranteed',
    location:     'Paris'
  },
  {
    group_name:   'Polsters',
    category:     'Politcal Rally',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'If you want a revolution, we are up for it. Prices will vary.',
    location:     'Berlin'
  },
  {
    group_name:   'THE HIPSTERS',
    category:     'concert hippies',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'Que pasa. We drink. We celebrate. We like your music. We like you. No touching. LOL.',
    location:     'Madrid'
  },
  {
    group_name:   'Sportaneous',
    category:     'sport fans',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'Even if your team is shit we still make it feel valuable.',
    location:     'London'
  },
  {
    group_name:   'Comedians',
    category:     'stand-up comedy',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'Nobody laughs about your jokes? Make a change with us. Feel good.',
    location:     'Berlin'
  },
  {
    group_name:   'Trupists',
    category:     'political rally',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'We will build you a wall even though its completely dump.',
    location:     'Paris'
  },
  {
    group_name:   'Not your usual hippie',
    category:     'concert hippies',
    price:        rand(50..200),
    size:         rand(1..5),
    description:  'We just like to have fun. Lol. We dont really care. We like Molly.',
    location:     'London'

  }
]
FanGroup.create!(fake_attributes)

puts "Done!"


#Seeds for bookings


# puts 'Cleaning database...'
# Booking.destroy_all

# puts 'Creating bookings...'
# bookings_attributes = [
#   {
#     time:         '1900',
#     date:         '26.02.2019',
#     location:     'Berlin',
#     # user_id:      User.first,
#     # fan_group_id: FanGroup.first,

#   },
#   {
#     time:         '2100',
#     date:         '28.02.2019',
#     location:     'Madrid',
#     # user_id:      User.first,
#     # fan_group_id: FanGroup.first,
#   }
# ]
# Booking.create!(bookings_attributes)
# puts 'Finished!'

