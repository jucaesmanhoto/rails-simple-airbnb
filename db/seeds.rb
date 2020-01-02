# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

30.times do Flat.create!(
  name: Faker::University.name, # 'Light & Spacious Garden Flat London',
  address: Faker::Address.street_address, # '10 Clifton Gardens London W9 1DT',
  description: Faker::GreekPhilosophers.quote, # 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: Faker::Number.number(digits: 2), # 75,
  number_of_guests: Faker::Number.number(digits: 1), # 3
  picture_url: Faker::LoremFlickr.image(size: "600x300", search_terms: ['home'])
)
end

puts "#{Flat.count} flats created"
