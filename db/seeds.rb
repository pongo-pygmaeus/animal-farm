AnimalType.destroy_all
BarnyardAnimal.destroy_all
Farm.destroy_all
Farmer.destroy_all

farm_animals = [
  "Alpaca",
  "Buffalo",
  "Banteng",
  "Cow",
  "Cat",
  "Chicken",
  "Common Carp",
  "Camel",
  "Donkey",
  "Dog",
  "Duck",
  "Emu",
  "Goat",
  "Gayal",
  "Guinea Pig",
  "Goose",
  "Horse",
  "Honey Bee",
  "Llama",
  "Pig",
  "Pigeon",
  "Rhea",
  "Rabbit",
  "Sheep",
  "Silkworm",
  "Turkey",
  "Yak",
  "Zebu",
  "Beefalo",
  "Botswana",
  "Black Rock Chicken",
  "Mule",
  "Yakow",
  "Yakalo",
  "Zubron"
]

20.times do
  Farmer.create(name: Faker::Name.name)
end

15.times do
  Farm.create(name:   Faker::Book.title,
              state:  Faker::Address.state_abbr,
              town:   Faker::Address.city,
              farmer: Farmer.all.sample)
end

farm_animals.each do |type|
  AnimalType.create(name: type)
end

70.times do
  BarnyardAnimal.create(name: Faker::Name.first_name,
                        animal_type: AnimalType.all.sample,
                        farm: Farm.all.sample)

end
