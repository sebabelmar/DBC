post '/hotels/:hotel_id/rooms' do
	new_hotel = Room.create(name: params['name'], hotel_id: params['hotel_id'])
	json :data => new_hotel
end

get '/hotels/:hotel_id/rooms' do
	all_hotels = Hotel.find(params[:hotel_id].to_i).rooms
	json :data => all_hotels
end

get '/hotels/:hotel_id/rooms/:id' do
	room = Room.find(params[:id].to_i)	
	json :data => room
end

# Out of rest...
get '/rooms/all' do
	rooms = Room.all
	json :data => rooms
end

def print_location(url)
	puts "#" * 20
	puts "Hitted #{url}"
	puts "#" * 20
end




