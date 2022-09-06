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

Animal.create!(name: "shoebill", description: " Angry bird.", photo: "shoebill.jpg")
Animal.create!(name: "bat", description: "Admit it, you'll let it suck your blood", photo:"bat.jpg")
Animal.create!(name: "polecat", description: "Looks cute, but will definitely eat you alive", photo:"polecat.jpg")

Animal.all.each do |beast|
  Finding.create!(picture: beast.photo, date: "2020-12-14",longitude: -3.947579, latitude: 51.619028 )
end

puts "All went well."
