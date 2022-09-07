require "open-uri"


puts "Execute order 66"
Finding.destroy_all
puts " ()()"
puts " (-_-)   ()()   ()()   ()()  "
puts "(     )  (-_-)  (-_-)  (-_-) "
puts '(") (")  (")(") (")(") (")(")'
Animal.destroy_all
puts " ()()"
puts " (-_-)   ()()   ()() "
puts "(     )  (-_-)  (-_-) "
puts '(") (")  (")(") (")(")'
User.destroy_all
puts " ()()"
puts " (-_-)   ()()  "
puts "(     )  (-_-)  "
puts '(") (")  (")(") '

puts " ()()"
puts " (-_-)    Huh ? !"
puts "(     )                       *BANG* "
puts '(") (") '

user0 = User.create!(username: "L4ur4", email: "random@mail.com", password: 'oVGyU8OkLscwtOLiqpw5J0tLyiYGIT', avatar: "Bel.jpg")
user1 = User.create!(username: "N1c0l4", email: "nic@fie.com", password: 'p5VQO2p6NYOOdMP6E94QmuAFnRarRc', avatar: "Bol.jpg")
user2 = User.create!(username: "T0b3", email: "even@more.com", password: '5b9cIXNwREWE5vpVJiRYwXbrsOYGG9', avatar: "Bal.jpg")
user3 = User.create!(username: "Ch4r1y", email: "random@even.com", password: 'WBvDylx03hqH5625ngroa4AaIvbz2C', avatar: "Boul.jpg")
user4 = User.create!(username: "DuckLover123", email: "iamtheone@neo.com", admin: true, password: 'LauraGotBetter!', avatar: "Bil.jpg")

file = URI.open("https://i.pinimg.com/564x/fe/38/0c/fe380cd2361f390e21a715134a43abf5.jpg")
animal0 = Animal.new(name: "shoebill", details: "Angry bird.")
animal0.photo.attach(io: file, filename: "shoebill.jpg", content_type: "image/jpg")
file = URI.open("https://images.theconversation.com/files/445412/original/file-20220209-25-wpmyla.jpeg?ixlib=rb-1.1.0")
animal1 = Animal.new(name: "bat", details: "Nicola didnt want the cartoon version, happy nightmares kiddos")
animal1.photo.attach(io: file, filename: "bat.jpg", content_type: "image/jpg")
file = URI.open("https://www.fondationbiodiversite.fr/wp-content/uploads/2021/05/FRB-putois.jpg")
animal2 = Animal.new(name: "polecat", details: "No Theo, it's not a cat, i know.. the name.. but... wait until he discovers the Dik-Dik.. ")
animal2.photo.attach(io: file, filename: "polecat.jpg", content_type: "image/jpg")

# Animal.all.each do |animal|
Finding.create!(picture: "random1.jpg", date: "2020-12-14", longitude: -3.947579, latitude: 51.619028, user: user0, animal: animal0)
Finding.create!(picture: "random2.jpg", date: "2020-12-14", longitude: -3.947579, latitude: 51.619028, user: user1, animal: animal1)
Finding.create!(picture: "random3.jpg", date: "2020-12-14", longitude: -3.947579, latitude: 51.619028, user: user2, animal: animal2)

puts "All went according to plan, carry on"
