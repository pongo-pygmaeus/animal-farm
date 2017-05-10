# INDEX
get '/farms' do
  @farms = Farm.all
  erb :"/farms/index"
end

# NEW
get '/farms/new' do
end

# CREATE
post '/farms' do
end

# SHOW
get '/farms/:id' do
end

# EDIT
get '/farms/:id/edit' do
end

# UPDATE
post '/farms/:id' do
end

# DELETE
delete '/farms/:id' do
end

get '/farmers/:id/farms' do
  @farmer = Farmer.find(params[:id])
  @farms = @farmer.farms
  erb :"/farmers/farms/index"
end
