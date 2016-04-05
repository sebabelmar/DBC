post '/bookings/:user_id/:room_id' do
	booking = Booking.create(user_id: params[:user_id].to_i, room_id: params[:room_id].to_i)

	json :data => booking
end

get '/bookings' do
	bookings = Booking.all
	json :data => bookings
end
