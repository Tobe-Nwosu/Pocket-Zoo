# picture missing from all animals
# picture missing from all findings
# location missing from findings

# Red fox
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
    legs: "long"
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Fox_-_British_Wildlife_Centre_%2817429406401%29.jpg/800px-Fox_-_British_Wildlife_Centre_%2817429406401%29.jpg")
red_fox.photo.attach(io: file, filename: "red_fox.jpg", content_type: "image/jpg")
red_fox.save!

# Arctic fox
arctic_fox = Animal.new(
  name: "Arctic fox",
  details: "The arctic fox lives all across the Arctic and Northern Europe.
    Its fur is white so that enemies cannot see it in the snow.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "run",
  colour: "white",
  tail: "bushy",
  legs: "long"
)
file = URI.open("image.png")
arctic_fox.photo.attach(io: file, filename: "arctic_fox.jpg", content_type: "image/jpg")
arctic_fox.save!


# Gray fox
gray_fox = Animal.new(
  name: "You can find the grey fox in the forests of North and Central America.
    With its strong, hooked claws, it can climb trees and rocks of up to 18 meters.",
  details: "Angry bird.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "run",
  colour: "brown",
  tail: "bushy",
  legs: "long"
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Urocyon_cinereoargenteus.jpg/250px-Urocyon_cinereoargenteus.jpg")
gray_fox.photo.attach(io: file, filename: "gray_fox.jpg", content_type: "image/jpg")
gray_fox.save!

# Muskrat
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
  legs: "short"
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/%D0%9E%D0%BD%D0%B4%D0%B0%D1%82%D1%80%D0%B0_%D0%B8_%D0%BB%D1%8E%D0%B1%D0%BE%D0%BF%D1%8B%D1%82%D0%BD%D1%8B%D0%B5_%D0%BF%D1%82%D0%B5%D0%BD%D1%86%D1%8B_-_cropped_-_Panoramio.jpg/799px-%D0%9E%D0%BD%D0%B4%D0%B0%D1%82%D1%80%D0%B0_%D0%B8_%D0%BB%D1%8E%D0%B1%D0%BE%D0%BF%D1%8B%D1%82%D0%BD%D1%8B%D0%B5_%D0%BF%D1%82%D0%B5%D0%BD%D1%86%D1%8B_-_cropped_-_Panoramio.jpg")
muskrat.photo.attach(io: file, filename: "muskrat.jpg", content_type: "image/jpg")
muskrat.save!

# Beaver
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
  legs: "short"
)
file = URI.open("https://images.takeshape.io/86ce9525-f5f2-4e97-81ba-54e8ce933da7/dev/1b40c283-e9ea-40a6-86eb-e0013372560b/american_beaver-Render.jpg?auto=compress%2Cformat&w=1200")
beaver.photo.attach(io: file, filename: "beaver.jpg", content_type: "image/jpg")
beaver.save!

# Capybara
capybara = Animal.new(
  name: "Capybara",
  details: "The Capybara lives in South America and is the largest rodent in the world.
    Even though it looks similar to a beaver and a muskrat, it is more closely related to guinea pigs.",
  classification: "mammal",
  habitat: "forest",
  behaviour: "walk",
  colour: "red",
  tail: "none",
  legs: "short"
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
  legs: "short"
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
  legs: "short"
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
  legs: "short"
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
  legs: "short"
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
  legs: "short"
)

file = URI.open("https://images.newscientist.com/wp-content/uploads/2017/07/14151046/rexfeatures_3272875a.jpg")
rat.photo.attach(io: file, filename: "rat.jpg", content_type: "image/jpg")
rat.save!


Finding.create!(picture: "red_fox_spotting.jpg", date: "2020-12-14", address: "Schlosspark Heltorf, Heltorfer Schlossallee, Duesseldorf, Germany", latitude: 51.336731, longitude: 6.769210, user: user0, animal: red_fox)
Finding.create!(picture: "gray_fox_spotting.jpg", date: "2021-12-14", address: "Hermannsdenkmal, Grotenburg 5, Detmold, Germany", latitude: 51.910070, longitude: 8.840930, user: user0, animal: gray_fox)
Finding.create!(picture: "rat_spotting.jpg", date: "2021-12-14", address: "Palito Restaurant, Berger Str. 14, Duesseldorf, Germany", latitude: 51.224450, longitude: 6.772480, user: user0, animal: rat)
