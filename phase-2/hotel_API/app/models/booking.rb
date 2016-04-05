class Booking < ActiveRecord::Base
  # Remember to create a migration!
	belongs_to :guest, :class_name => "User", :foreign_key => "guest_id"
  	belongs_to :room
end