# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleanin up database"
Realisation.destroy.all?
puts "database is clean"

puts"Creating realisations"

100.times do
  Realisation.create(
    name: Faker::Address.community,
    category:Faker::Construction.material,
    description: Faker::ChuckNorris.fact
  )
end

puts "Database operational :-)"
