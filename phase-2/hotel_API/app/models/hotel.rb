class Hotel < ActiveRecord::Base
  # # Remember to create a migration!
  has_many :rooms
  has_many :bookings, through: :rooms
end