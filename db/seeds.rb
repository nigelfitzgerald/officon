# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or newd alongside the database with db:setup).
#
# Examples:
#
#   movieMovie.new([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.new(name: "Luke", movie: movies.first)
require "open-uri"

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

user6 = User.new(email: "f@live.com", password: "123456", name: "Alice")
user6.save

office1 = Office.new(surface: 100, price: 1000, description: "Nice office", title: "ExTower", address: "Citadelle Mall, Sir Virgil Naz St, Port Louis, Mauritius", user_id: user1.id)
file = URI.open("https://res.cloudinary.com/officonproject/image/upload/v1662104849/bri9gk3rljoybmaiudzv.jpg")
office1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
office1.save

office2 = Office.new(surface: 200, price: 1100, description: "Big office", title: "NTower", address: "1 Cybercity, Ebene, Mauritius", user_id: user2.id)
file = URI.open("https://res.cloudinary.com/officonproject/image/upload/v1662104774/wpcb25ja1ymeowhka4kb.jpg")
office2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
office2.save

office3 = Office.new(surface: 300, price: 1200, description: "Small office", title: "Vivéa", address: "Vivéa Business Park, Moka, Mauritius", user_id: user3.id)
file = URI.open("https://res.cloudinary.com/officonproject/image/upload/v1662104797/tdudqjkpcrdqeni8cbkz.jpg")
office3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
office3.save

office4 = Office.new(surface: 400, price: 1300, description: "Individual office", title: "Cybercity", address: "Cyber Tower 2 Quatre Bornes, Mauritius", user_id: user4.id)
file = URI.open("https://res.cloudinary.com/officonproject/image/upload/v1662104815/y1vdasfoveemjjeidgn3.jpg")
office4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
office4.save

office5 = Office.new(surface: 500, price: 1400, description: "Joint office", title: "TheDot", address: "St.Pierre Bypass Rd, St Pierre, Mauritius", user_id: user5.id)
file = URI.open("https://res.cloudinary.com/officonproject/image/upload/v1662104832/mhpgpamdiu5kpvqlzymb.jpg")
office5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
office5.save

office6 = Office.new(surface: 600, price: 1500, description: "Open office", title: "The hive", address: "Old Post Office Road, St Pierre", user_id: user6.id)
file = URI.open("https://res.cloudinary.com/officonproject/image/upload/v1662104849/bri9gk3rljoybmaiudzv.jpg")
office6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
office6.save
puts "Finished"
