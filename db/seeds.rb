# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '+40 1791668901',
    category:     'italian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '+40 1791668902',
    category:     'italian'
  },
  {
    name:         'By the wine',
    address:      'near rua rosa',
    phone_number: '+40 1791668903',
    category:     'italian'
  },
  {
    name:         'By the wine2',
    address:      'near rua rosa2',
    phone_number: '+40 1791668904',
    category:     'italian'
  },
  {
    name:         'Cozinha Popular',
    address:      ';Martin mozing',
    phone_number: '+40 1791668905',
    category:     'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
