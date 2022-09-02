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

user6 = User.new(email: "f@live.com", password: "123456", name: "Alice")
user6.save

office1 = Office.create!(surface: 100, price: 1000, description: "Nice office", title: "ExTower", address: "Citadelle Mall, Sir Virgil Naz St, Port Louis, Mauritius", user_id: user1.id, image_url: "https://assets.architecturaldigest.in/photos/6008499aa8f8397741704a19/16:9/w_2560%2Cc_limit/Ronnie-Screwvala-mumbai-RSVP-office_2-2-1366x768.jpg")
office2 = Office.create(surface: 200, price: 1100, description: "Big office", title: "NTower", address: "1 Cybercity, Ebene, Mauritius", user_id: user2.id, image_url: "https://www.livehome3d.com/assets/img/articles/types-of-offices/modern-office-with-the-city-view.jpg")
office3 = Office.create(surface: 300, price: 1200, description: "Small office", title: "Vivéa", address: "Vivéa Business Park, Moka, Mauritius", user_id: user3.id, image_url: "https://imageio.forbes.com/specials-images/imageserve/61576e0e6690a20767218a24/0x0.jpg?format=jpg&width=1200")
office4 = Office.create(surface: 400, price: 1300, description: "Individual office", title: "Cybercity", address: "Cyber Tower 2 Quatre Bornes, Mauritius", user_id: user4.id, image_url: "https://images.adsttc.com/media/images/6306/642d/79c4/892c/8ba3/84bb/slideshow/shopify-offices-berlin-mvrdv_16.jpg?1661363278")
office5 = Office.create(surface: 500, price: 1400, description: "Joint office", title: "TheDot", address: "St.Pierre Bypass Rd, St Pierre, Mauritius", user_id: user5.id, image_url: "https://www.jainoncor.com/blog/wp-content/uploads/2019/10/Office-Space-in-Gurgaon.jpg")
office6 = Office.create(surface: 600, price: 1500, description: "Open office", title: "The hive", address: "Old Post Office Road, St Pierre", user_id: user6.id, image_url: "http://www.3pi.in/images/so1.jpg")
office7 = Office.create(surface: 700, price: 1600, description: "Coworking", title: "Les Kocottes", address: "Old Post Office Road, St Pierre", user_id: user6.id, image_url: "https://imageio.forbes.com/specials-images/imageserve/61576e0e6690a20767218a24/0x0.jpg?format=jpg&width=1200")
puts "Finished"
