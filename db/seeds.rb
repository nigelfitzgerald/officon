# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movieMovie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Starting seed"

user1 = User.new(email: "t@live.com", password: "1234567")
user1.save
p User.all
user2 = User.new(email: "e@live.com", password: "1234567")
user2.save
user3 = User.new(email: "s@live.com", password: "1234567")
user3.save
user4 = User.new(email: "t2@live.com", password: "1234567")
user4.save
user5 = User.new(email: "test2@live.com", password: "1234567")
user5.save

office1 = Office.new(surface: 25, price: 1000, description: "Office available from feb to april", title: "Nice office space", user_id: user1.id )
office1.save

office2 = Office.new(surface: 50, price: 1200, description: "Office available from april to may", title: "Vivéa", user_id: user2.id )
office2.save

office3 = Office.new(surface: 55, price: 1300, description: "Office available from may to july", title: "The Hive", user_id: user3.id )
office3.save

office4 = Office.new(surface: 35, price: 1400, description: "Office available from july to sept", title: "Nice office space", user_id: user4.id )
office4.save

office5 = Office.new(surface: 20, price: 1500, description: "Office available from sept to november", title: "Nice office space", user_id: user5.id )
office5.save

puts "Finished"
