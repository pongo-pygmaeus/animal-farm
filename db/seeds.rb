AnimalType.destroy_all
BarnyardAnimal.destroy_all
Farm.destroy_all
Farmer.destroy_all

20.times do
  Farmer.create(name: Faker::Name.name)
end

15.times do
  Farm.create(name:   Faker::Book.title,
              state:  Faker::Address.state_abbr,
              town:   Faker::Address.city,
              farmer: Farmer.all.sample)
end

10.times do
  AnimalType.find_or_create_by(name: Faker::Cat.breed)
end

70.times do
  BarnyardAnimal.create(name: Faker::Name.first_name,
                        animal_type: AnimalType.all.sample,
                        farm: Farm.all.sample)

end
