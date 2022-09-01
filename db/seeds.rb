# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movieMovie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all

Office.destroy_all

User.destroy_all

puts "Creating seed"

user1 = User.new(email: "a@live.com", password: "123456", name: "Alain")
user1.save
p User.all

user2 = User.new(email: "b@live.com", password: "123456", name: "Basile")
user2.save

user3 = User.new(email: "c@live.com", password: "123456", name: "Christian")
user3.save

user4 = User.new(email: "d@live.com", password: "123456", name: "Dushyant")
user4.save

user5 = User.new(email: "e@live.com", password: "123456", name: "Emma")
user5.save

office1 = Office.create(surface: 100, price: 1000, description: "Nice office", title: "ExTower", address: "Citadelle Mall, Sir Virgil Naz St, Port Louis, Mauritius", user_id: user1.id)
office2 = Office.create(surface: 200, price: 1100, description: "Big office", title: "NTower", address: "1 Cybercity, Ebene, Mauritius", user_id: user2.id)
office3 = Office.create(surface: 300, price: 1200, description: "Small office", title: "Vivéa", address: "Vivéa Business Park, Moka, Mauritius", user_id: user3.id)
office4 = Office.create(surface: 400, price: 1300, description: "Individual office", title: "Cybercity", address: "Cyber Tower 2 Quatre Bornes, Mauritius", user_id: user4.id)
office5 = Office.create(surface: 500, price: 1400, description: "Joint office", title: "TheDot", address: "St.Pierre Bypass Rd, St Pierre, Mauritius", user_id: user5.id)

puts "Finished"
