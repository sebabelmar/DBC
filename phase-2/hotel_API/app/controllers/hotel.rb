post '/hotels' do
	new_hotel = Hotel.create(name: params['name'])
	json :data => new_hotel
end

get '/hotels' do
	all_hotels = Hotel.all
	json :data => all_hotels
end

get '/hotels/:id' do
	hotel = Hotel.find(params[:id])	
	json :data => hotel
end