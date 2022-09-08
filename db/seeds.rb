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

file = URI.open("https://www.nhm.ac.uk/content/dam/nhmwww/discover/british-snakes/summer-snakebite-adder-3-two-column.jpg.thumb.768.768.jpg")
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

red_fox = Animal.new(
  name: "Red fox",
  details: "The red fox can be seen all across Europe, North America and Asia.
    It lives mostly in forests and fields, but sometimes you can spot it even in large cities looking for food.
    The red fox loves its family and lives together with them in a group called ",
    classification: "mammal",
    habitat: "forest",
    behaviour: "run",
    colour: "red",
    tail: "bushy",
    legs: "long",
)

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Fox_-_British_Wildlife_Centre_%2817429406401%29.jpg/800px-Fox_-_British_Wildlife_Centre_%2817429406401%29.jpg")
red_fox.photo.attach(io: file, filename: "red_fox.jpg", content_type: "image/jpg")
red_fox.save!

arctic_fox = Animal.new(
  name: "Arctic fox",
  details: "The arctic fox lives all across the Arctic and Northern Europe.
    Its fur is white so that enemies cannot see it in the snow.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "run",
  colour: "white",
  tail: "bushy",
  legs: "long",
)
file = URI.open("https://i.natgeofe.com/k/4cf56024-edd3-4ed7-8a80-d81d90ab78ba/arctic-fox.jpg")
arctic_fox.photo.attach(io: file, filename: "arctic_fox.jpg", content_type: "image/jpg")
arctic_fox.save!

gray_fox = Animal.new(
  name: "Gray fox",
  details: "Angry bird.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "run",
  colour: "brown",
  tail: "bushy",
  legs: "long",
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Urocyon_cinereoargenteus.jpg/250px-Urocyon_cinereoargenteus.jpg")
gray_fox.photo.attach(io: file, filename: "gray_fox.jpg", content_type: "image/jpg")
gray_fox.save!

muskrat = Animal.new(
  name: "Muskrat",
  details: "The muskrat lives mostly in North America and is a very good swimmer.
    It can be as big as a small dog and has a very long tail.
    Even though they share their name with rats, they are not related to them.",
  classification: "mammal",
  habitat: "beach",
  behaviour: "swim",
  colour: "brown",
  tail: "scaly",
  legs: "short",
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/%D0%9E%D0%BD%D0%B4%D0%B0%D1%82%D1%80%D0%B0_%D0%B8_%D0%BB%D1%8E%D0%B1%D0%BE%D0%BF%D1%8B%D1%82%D0%BD%D1%8B%D0%B5_%D0%BF%D1%82%D0%B5%D0%BD%D1%86%D1%8B_-_cropped_-_Panoramio.jpg/799px-%D0%9E%D0%BD%D0%B4%D0%B0%D1%82%D1%80%D0%B0_%D0%B8_%D0%BB%D1%8E%D0%B1%D0%BE%D0%BF%D1%8B%D1%82%D0%BD%D1%8B%D0%B5_%D0%BF%D1%82%D0%B5%D0%BD%D1%86%D1%8B_-_cropped_-_Panoramio.jpg")
muskrat.photo.attach(io: file, filename: "muskrat.jpg", content_type: "image/jpg")
muskrat.save!

beaver = Animal.new(
  name: "Beaver",
  details: "Beavers live in freshwater lakes and rivers in North America and Europe.
    It looks similar to the muskrat but is much bigger and has a flat tail.
    The beaver is the national animal of Canada.",
  classification: "mammal",
  habitat: "beach",
  behaviour: "swim",
  colour: "brown",
  tail: "scaly",
  legs: "short",
)
file = URI.open("https://images.takeshape.io/86ce9525-f5f2-4e97-81ba-54e8ce933da7/dev/1b40c283-e9ea-40a6-86eb-e0013372560b/american_beaver-Render.jpg?auto=compress%2Cformat&w=1200")
beaver.photo.attach(io: file, filename: "beaver.jpg", content_type: "image/jpg")
beaver.save!

capybara = Animal.new(
  name: "Capybara",
  details: "The Capybara lives in South America and is the largest rodent in the world.
    Even though it looks similar to a beaver and a muskrat, it is more closely related to guinea pigs.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "walk",
  colour: "red",
  tail: "none",
  legs: "short",
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Bristol.zoo.capybara.arp.jpg/1200px-Bristol.zoo.capybara.arp.jpg")
capybara.photo.attach(io: file, filename: "capybara.jpg", content_type: "image/jpg")
capybara.save!

# Sea otter
sea_otter = Animal.new(
  name: "Sea otter",
  details: "The sea otter doesn't need to come to land, it can live only in the ocean.
    To stay warm in the water, it has a thick layer of fur, the thickest amongst all animals.",
  classification: "mammal",
  habitat: "beach",
  behaviour: "swim",
  colour: "brown",
  tail: "pointy",
  legs: "short",
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Sea_Otter_%28Enhydra_lutris%29_%2825169790524%29_crop.jpg/800px-Sea_Otter_%28Enhydra_lutris%29_%2825169790524%29_crop.jpg")
sea_otter.photo.attach(io: file, filename: "sea_otter.jpg", content_type: "image/jpg")
sea_otter.save!

# American mink
mink = Animal.new(
  name: "American mink",
  details: "The American mink lives all across Europe, Asia and America.
    It feeds on fish, frogs and even birds like sea gulls and cormorants, by drowning them. ",
  classification: "mammal",
  habitat: "beach",
  behaviour: "walk",
  colour: "brown",
  tail: "pointy",
  legs: "short",
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/MinkforWiki.jpg/1200px-MinkforWiki.jpg")
mink.photo.attach(io: file, filename: "mink.jpg", content_type: "image/jpg")
mink.save!

# Nutria
nutria = Animal.new(
  name: "Nutria",
  details: "The Nutria lives all over the world, but is most common in South America.
    In some regions, it is uhunted and trapped for its fur.",
  classification: "mammal",
  habitat: "beach",
  behaviour: "walk",
  colour: "brown",
  tail: "pointy",
  legs: "short",
)
file = URI.open("https://www.umweltbundesamt.de/sites/default/files/styles/fb-image/public/medien/2332/bilder/nutria_800px-myocastor_coypus_philippe_amelant.jpg?itok=ayawqYVJ")
nutria.photo.attach(io: file, filename: "nutria.jpg", content_type: "image/jpg")
nutria.save!

# Ferret
ferret = Animal.new(
  name: "Ferret",
  details: "The ferret is a relative of the weasel and lives in Europe.
    Ferrets have been raised to live with humans for thousands of years.
    They were also bred to hunt rabbits, rats and mice.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "walk",
  colour: "brown",
  tail: "bushy",
  legs: "short",
)
file = URI.open("https://cdn.britannica.com/59/161459-050-CD289312/ferret-mammals-wild-North-America-Reintroduction-programs-2008.jpg")
ferret.photo.attach(io: file, filename: "ferret.jpg", content_type: "image/jpg")
ferret.save!

# Rat
rat = Animal.new(
  name: "Rat",
  details: "Rats live almost everywhere humans are.
    Rats are not very popular, because they can carry diseases.
    But they are actually very clean and smart animals.
    A rat can get as big as 28cm long and 1.5kg heavy.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "walk",
  colour: "brown",
  tail: "pointy",
  legs: "short",
)
file = URI.open("https://images.newscientist.com/wp-content/uploads/2017/07/14151046/rexfeatures_3272875a.jpg")
rat.photo.attach(io: file, filename: "rat.jpg", content_type: "image/jpg")
rat.save!

Finding.create!(picture: "red_fox_spotting.jpg", date: "2020-12-14", address: "Schlosspark Heltorf, Heltorfer Schlossallee, Duesseldorf, Germany", latitude: 51.336731, longitude: 6.769210, user: user0, animal: red_fox)
Finding.create!(picture: "gray_fox_spotting.jpg", date: "2021-12-14", address: "Hermannsdenkmal, Grotenburg 5, Detmold, Germany", latitude: 51.910070, longitude: 8.840930, user: user0, animal: gray_fox)
Finding.create!(picture: "rat_spotting.jpg", date: "2021-12-14", address: "Palito Restaurant, Berger Str. 14, Duesseldorf, Germany", latitude: 51.224450, longitude: 6.772480, user: user0, animal: rat)

# Animal.all.each do |animal|
Finding.create!(picture: "mypigeon.jpg", date: "2021-11-05", address: "Attica, Plymouth Street, Swansea", latitude: 51.619028, longitude: -3.947579, user: user1, animal: pigeon)
Finding.create!(picture: "mysheep.jpg", date: "2021-12-10", address: "Rhossili Bay", latitude: 51.5780, longitude: -4.3002, user: user1, animal: sheep)
Finding.create!(picture: "myslug.jpg", date: "2022-06-08", address: "Attica, Plymouth Street, Swansea", latitude: 51.619028, longitude: -3.947579, user: user1, animal: slug)
Finding.create!(picture: "myslowworm.jpg", date: "2022-09-07", address: "Rhossili Bay", latitude: 51.5780, longitude: -4.3002, user: user1, animal: slowworm)

puts "All went according to plan, carry on"
