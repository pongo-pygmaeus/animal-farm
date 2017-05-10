class BarnyardAnimal < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :farm
  has_one :farmer, through: :farm #remember, we can't do belongs_to through...
  belongs_to :animal_type
end
