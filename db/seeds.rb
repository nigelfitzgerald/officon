# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Starting seed"
office_space1 = { title: "Nice office1", description: "56A Shoreditch High St, London E1 6PQ", surface: 25, price: 600 }
office_space2 = { title: "Office2", description: "12A Shoreditch High St, London", surface: 25, price: 900 }
office_space3 = { title: "Small Office3", description: "1A Buckingham, London", surface: 100, price: 3000 }
office_space4 = { title: "Big Office4", description: "10A Big Ben St, London", surface: 90, price: 2500 }

puts "Finished"
