puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Jade Kingdom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '09 87 76 78 67 89',
    category: 'chinese'
  },
  {
    name:         'Pizza Express',
    address:      'shoreditch',
    phone_number:  '09 87 76 78 67 90',
    category: 'italian'
  },
  {
    name:         'Tokyo',
    address:      'shoredit',
    phone_number:  '09 87 76 78 67 90',
    category: 'japanese'
  },
  {
    name:         'Galvin La Chapelle',
    address:      'Liverpool st',
    phone_number:  '09 80 76 78 67 90',
    category: 'french'
  },
  {
    name:         'Belgo Centraal',
    address:      'old st',
    phone_number:  '09 87 76 50 67 90',
    category: 'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
