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
    name:         'Alicheur',
    address:      '88 rue Saint Maur 75011',
    phone_number:  '06 22 57 32 18',
    category:        'chinese',
    rating: 5
  },
  {
    name:         'Mama Roma',
    address:      '120 rue Oberkampf 75011',
    phone_number:  '01 42 22 75 30',
    category:        'italian',
    rating: 3
  },
  {
    name:         'Jo la frite',
    address:      '12 rue Parmentier 75011',
    phone_number:  '09 22 57 32 18',
    category:        'belgian',
    rating: 5
  },
  {
    name:         'La petite Périgourdine',
    address:      '10 place du Panthéon 75005',
    phone_number:  '01 44 17 25 10',
    category:        'french',
    rating: 3
  },
  {
    name:         'Titikoru',
    address:      '24 rue Goncourt 75011',
    phone_number:  '06 44 17 25 10',
    category:        'japanese',
    rating: 3
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
