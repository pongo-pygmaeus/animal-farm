# INDEX
get '/farmers' do
  @farmers = Farmer.all #erb has access to instance variables
  erb :"/farmers/index"
end

# NEW
get '/farmers/new' do
end

# CREATE
post '/farmers' do
end

# SHOW
get '/farmers/:id' do
  @farmer = Farmer.find(params[:id])
  erb :"/farmers/show"
end

# EDIT
get '/farmers/:id/edit' do
end

# UPDATE
post '/farmers/:id' do
end

# DELETE
delete '/farmers/:id' do
end
