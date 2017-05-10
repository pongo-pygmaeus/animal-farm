get '/barnyard_animals/:id' do
end

get '/barnyard_animals/:id/edit' do
end

put '/barnyard_animals/:id' do
end

delete '/barnyard_animals/:id' do
end

# INDEX

# NEW
post '/farms/:id/barnyard_animals' do
  animal = BarnyardAnimal.new(name: params[:name],
                     animal_type: AnimalType.find_or_create_by(name: params[:type]),
                     farm: Farm.find(params[:id]))
end

# CREATE
