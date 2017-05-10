class Farmer < ActiveRecord::Base
  # Remember to create a migration!
  has_many :farms
  has_many :barnyard_animals, through: :farms
end
