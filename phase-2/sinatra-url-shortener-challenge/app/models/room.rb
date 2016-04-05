class Room < ActiveRecord::Base
  # Remember to create a migration!
  has_many :bookings
  has_many :users, through: :bookings

  belongs_to :hotel
end