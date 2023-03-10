# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning bears database...'
Bear.destroy_all

puts 'Cleaning users database...'
User.destroy_all

puts 'creating Users...'


user1 = User.create(
  email: "user1@gmail.com",
  password: 12341234,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

user2 = User.create(
  email: "user2@gmail.com",
  password: 12341234,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

puts 'Finished seeding users!'
