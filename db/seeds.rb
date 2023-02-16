# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Bear.destroy_all

puts 'creating Giant Teddy Bears...'

20.times do
  Bear.create(
    name: Faker::Kpop.iii_groups,
    location: Faker::Address.city,
    size: ['Small', 'Medium', 'Large'].sample,
    price: rand(10.99..200.00).round(2),
    color: Faker::Color.color_name
  )
end

puts 'Finished!'
