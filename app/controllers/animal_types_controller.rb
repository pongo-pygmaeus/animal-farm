get '/animal_types' do
  @animal_types = AnimalType.all.order(:name)
  erb :"animal_types/index"
end
