# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
User.create(
  first_name:Faker::Name.first_name,
  last_name:Faker::Name.last_name,
  description:Faker::Lorem.paragraph,
  email: ["user1@yopmail.com", "user2@yopmail.com", "user3@yopmail.com", "user4@yopmail.com", "user5@yopmail.com", "user6@yopmail.com", "user7@yopmail.com", "user8@yopmail.com","user9@yopmail.com", "user10@yopmail.com"  ].sample)
end


