user_1 = User.create(name: 'Seba')
user_2 = User.create(name: 'Pax')

hotel_1 = Hotel.create(name: 'Abracadabra')
hotel_2 = Hotel.create(name: 'Rockin Js')

5.times {|num| Room.create({rate: 100, number: num, hotel_id: 1})  }
5.times {|num| Room.create({rate: 100, number: num, hotel_id: 2})  }

# 5.times {|num| hotel_1.rooms << Room.create({rate: 100, number: num})  }
# 5.times {|num| hotel_2.rooms << Room.create({rate: 100, number: num})  }


def create_booking (user_id, room_id)
	Booking.create(guest_id: user_id, room_id: room_id)	
end

10.times do |t|
	p samp = (1..5).to_a.sample
	if t < 5
		create_booking(1, samp)
	else
		create_booking(2, samp)
	end
end