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

file = URI.open("https://cdn.britannica.com/30/125630-050-041679E2/Slowworm.jpg")
slowworm = Animal.new(name: "Slowworm", details: "The slow worm is neither a worm nor a snake, but is, in fact, a legless lizard - its identity is given away by its abilities to shed its tail and blink with its eyelids. Slow worms can be found in heathland, tussocky grassland, woodland edges and rides where they can find invertebrates to eat and a sunny patch in which to sunbathe.", classification: 'reptile', habitat: 'forest', behaviour: 'slither', colour: 'brown', tail: 'scaly', legs: 'none')
slowworm.photo.attach(io: file, filename: "slowworm.jpg", content_type: "image/jpg")
slowworm.save!

file = URI.open("https://i.natgeofe.com/n/a61dd42c-a703-48d1-9c14-a64805cb8972/common-earthworm_thumb_square.jpg")
worm = Animal.new(name: "Worm", details: "Britain has about 16 species of earthworm that are likely to be found in gardens and in total nearly 30 species can be found in the UK. They vary in size and colour, all help create good soil structure and fertility.", classification: 'insect', habitat: 'forest', behaviour: 'slither', colour: 'brown', tail: 'pointy', legs: 'none')
worm.photo.attach(io: file, filename: "worm.jpg", content_type: "image/jpg")
worm.save!

file = URI.open("https://www.norfolkwildlifetrust.org.uk/getmedia/27737b91-5e9f-4c30-b416-7f15865680ef/Common-lizard-sunning-itself-on-the-board-along-a-sandy-pathway,-Strumpshaw-Fen,-Elizabeth-Dack,-11-July-2017-(Small).jpg.aspx?width=762")
lizard = Animal.new(name: "Lizard", details: "Living up to its name, the common lizard is the UK's most common and widespread reptile; it is the only reptile native to Ireland. It is found across many habitats, including heathland, moorland, woodland and grassland, where it can be seen basking in sunny spots. Also known as the 'viviparous lizard', the common lizard is unusual among reptiles as it incubates its eggs inside its body and 'gives birth' to live young rather than laying eggs.", classification: 'reptile', habitat: 'forest', behaviour: 'run', colour: 'brown', tail: 'scaly', legs: 'short')
lizard.photo.attach(io: file, filename: "lizard.jpg", content_type: "image/jpg")
lizard.save!

file = URI.open("https://www.norfolkwildlifetrust.org.uk/getmedia/27737b91-5e9f-4c30-b416-7f15865680ef/Common-lizard-sunning-itself-on-the-board-along-a-sandy-pathway,-Strumpshaw-Fen,-Elizabeth-Dack,-11-July-2017-(Small).jpg.aspx?width=762")
adder = Animal.new(name: "Adder", details: "The adder is a relatively small, stocky snake that prefers woodland, heathland and moorland habitats. It hunts lizards and small mammals, as well as ground-nesting birds, such as skylark and meadow pipit. It is the UK's only venomous snake", classification: 'reptile', habitat: 'forest', behaviour: 'slither', colour: 'brown', tail: 'scaly', legs: 'none')
adder.photo.attach(io: file, filename: "adder.jpg", content_type: "image/jpg")
adder.save!

file = URI.open("https://ichef.bbci.co.uk/news/976/cpsprodpb/C5A1/production/_97239505_hi040974198.jpg")
grasssnake = Animal.new(name: "Grass snake", details: "Our largest snake, the grass snake, is particularly fond of wetland habitats, but can also be found in dry grasslands and in gardens, especially those with a pond nearby. During the summer, grass snake can be spotted basking in the sun near their favourite ponds or swimming in the water.", classification: 'reptile', habitat: 'forest', behaviour: 'slither', colour: 'brown', tail: 'scaly', legs: 'none')
grasssnake.photo.attach(io: file, filename: "grasssnake.jpg", content_type: "image/jpg")
grasssnake.save!

file = URI.open("https://www.new-forest-national-park.com/wp-content/uploads/2021/06/Smooth-snake-fact-file.jpeg")
smoothsnake = Animal.new(name: "Smooth snake", details: "The rare smooth snake can only be found in a few places, often alongside the rare sand lizard because they both favour the same kind of sandy heathland habitat.", classification: 'reptile', habitat: 'forest', behaviour: 'slither', colour: 'brown', tail: 'scaly', legs: 'none')
smoothsnake.photo.attach(io: file, filename: "smoothsnake.jpg", content_type: "image/jpg")
smoothsnake.save!

file = URI.open("https://www.first-nature.com/reptiles/images/lacerta-agilis2.jpg")
sandlizard = Animal.new(name: "Sand lizard", details: "The sand lizard is the UK's rarest reptile. It favours sandy heathland habitats and sand dunes, and can be spotted basking on bare patches of sand. Sand lizards are confined to a few sites as destruction of their habitat has reduced their range.", classification: 'reptile', habitat: 'beach', behaviour: 'run', colour: 'green', tail: 'scaly', legs: 'short')
sandlizard.photo.attach(io: file, filename: "sandlizard.jpg", content_type: "image/jpg")
sandlizard.save!

file = URI.open("https://www.jic.ac.uk/app/uploads/2019/08/Large-Red-Slug-1-450x250.jpg")
slug = Animal.new(name: "Slug", details: "Slugs, like every living organism in an ecosystem have a role. As well as providing a crucial food source for other wildlife, many species are key composters, helping to breakdown decomposing vegetation", classification: 'insect', habitat: 'forest', behaviour: 'slither', colour: 'brown', tail: 'none', legs: 'none')
slug.photo.attach(io: file, filename: "slug.jpg", content_type: "image/jpg")
slug.save!

file = URI.open("https://e3.365dm.com/22/08/2048x1152/skynews-seagull-attack_5853626.jpg")
seagull = Animal.new(name: "Seagull", details: "Seagulls sometimes get a bad reputation for stealing chips. But gulls are intelligent, adaptable and often beautiful birds.", classification: 'bird', habitat: 'beach', behaviour: 'fly', colour: 'white', tail: 'pointy', legs: 'short')
seagull.photo.attach(io: file, filename: "seagull.jpg", content_type: "image/jpg")
seagull.save!

file = URI.open("https://images.immediate.co.uk/production/volatile/sites/22/2019/05/Texel-sheep-510d14a.jpg")
sheep = Animal.new(name: "Sheep", details: "In 2018, there were over 33 million sheep and lambs in the UK, with the sheep breeding flock containing around 16 million breeding ewes1. In 2017, over 14.8 million sheep were slaughtered for meat in the UK2.", classification: 'mammal', habitat: 'forest', behaviour: 'run', colour: 'white', tail: 'bushy', legs: 'short')
sheep.photo.attach(io: file, filename: "sheep.jpg", content_type: "image/jpg")
sheep.save!

file = URI.open("https://www.allaboutbirds.org/guide/assets/photo/308074031-480px.jpg")
pigeon = Animal.new(name: "Pigeon", details: "All pigeons strut about with a characteristic bobbing of the head. Because of their long wings and powerful flight muscles, they are strong, swift fliers. ", classification: 'bird', habitat: 'forest', behaviour: 'fly', colour: 'brown', tail: 'pointy', legs: 'short')
pigeon.photo.attach(io: file, filename: "pigeon.jpg", content_type: "image/jpg")
pigeon.save!

# Animal.all.each do |animal|
Finding.create!(picture: "mypigeon.jpg", date: "2021-11-05", address: "Attica, Plymouth Street, Swansea", latitude: 51.619028, longitude: -3.947579, user: user1, animal: pigeon)
Finding.create!(picture: "mysheep.jpg", date: "2021-12-10", address: "Rhossili Bay", latitude: 51.5780, longitude: -4.3002, user: user1, animal: sheep)
Finding.create!(picture: "myslug.jpg", date: "2022-06-08", address: "Attica, Plymouth Street, Swansea", latitude: 51.619028, longitude: -3.947579, user: user1, animal: slug)
Finding.create!(picture: "myslowworm.jpg", date: "2022-09-07", address: "Rhossili Bay", latitude: 51.5780, longitude: -4.3002, user: user1, animal: slowworm)


puts "All went according to plan, carry on"
