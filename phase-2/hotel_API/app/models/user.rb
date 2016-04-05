class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :bookings
  has_many :rooms, through: :bookings
end