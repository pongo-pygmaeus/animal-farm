class BarnyardAnimal < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :farm
  has_one :farmer, through: :farm
  belongs_to :animal_type
end
