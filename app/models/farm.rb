class Farm < ActiveRecord::Base
  # Remember to create a migration!
  has_many :barnyard_animals
  belongs_to :farmer

end
