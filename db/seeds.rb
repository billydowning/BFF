puts 'Cleaning database...'
Booking.destroy_all

puts 'Creating bookings...'
booking_attributes = [
  {
    date:      '26.2.2019',
    time:      '19:00',
    location:  'Berlin',

  }]
