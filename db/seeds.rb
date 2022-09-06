# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Clearing up the findings"
Finding.destroy_all
puts "Puting down every single sentient being..."
Animal.destroy_all
puts "Wait what ?!"
puts "Aaaaahhhh..  *sobbing uncontrolably*"
puts "What did you have me do..... *mopping inconsistently*"
puts "..it's done.... now try to live with yourself, monster"
User.destroy_all
puts "Getting new animals, hope you'll like those better !"

user0 = User.create!(username: "L4ur4", email: "random@mail.com", password: 'oVGyU8OkLscwtOLiqpw5J0tLyiYGIT', avatar: "Bel.jpg")
user1 = User.create!(username: "N1c0l4", email: "nic@fie.com", password: 'p5VQO2p6NYOOdMP6E94QmuAFnRarRc', avatar: "Bol.jpg")
user2 = User.create!(username: "T0b3", email: "even@more.com", password: '5b9cIXNwREWE5vpVJiRYwXbrsOYGG9', avatar: "Bal.jpg")
user3 = User.create!(username: "Ch4r1y", email: "random@even.com", password: 'WBvDylx03hqH5625ngroa4AaIvbz2C', avatar: "Boul.jpg")
user4 = User.create!(username: "DuckLover123", email: "iamtheone@neo.com", admin: true, password: 'LauraGotBetter!', avatar: "Bil.jpg")

animal0 = Animal.new(name: "shoebill", details: "Angry bird.", photo: "https://picsum.photos/200/300")
animal1 = Animal.create!(name: "bat", details: "Admit it, you'll let it suck your blood", photo: "https://picsum.photos/200/300")
animal2 = Animal.create!(name: "polecat", details: "Looks cute, but will definitely eat you alive", photo: "https://picsum.photos/200/300")

# Animal.all.each do |animal|
Finding.create!(picture: "random1.jpg", date: "2020-12-14", longitude: -3.947579, latitude: 51.619028, user: user0, animal: animal0)
Finding.create!(picture: "random2.jpg", date: "2020-12-14", longitude: -3.947579, latitude: 51.619028, user: user1, animal: animal1)
Finding.create!(picture: "random3.jpg", date: "2020-12-14", longitude: -3.947579, latitude: 51.619028, user: user2, animal: animal2)

puts "All went well."
