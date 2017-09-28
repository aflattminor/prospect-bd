# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
  Lead.create(name:"#{Faker::Name.name}", company:"#{Faker::Company.name}",position:"#{Faker::Job.title}", phone_number:"555-555-5555", email:"#{Faker::Name.name}@email.com", status:"In Process", user_id:rand(6)+1)
end

1000.times do
  Call.create(lead_id:rand(100)+1, result:"Left Message", body:"#{Faker::Seinfeld.quote}")
end
