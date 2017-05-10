class AnimalType < ActiveRecord::Base
  # Remember to create a migration!
  has_many :barnyard_animals
end
