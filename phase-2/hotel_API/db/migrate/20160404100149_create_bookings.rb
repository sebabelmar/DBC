class CreateBookings < ActiveRecord::Migration
  def change
  	create_table :bookings do |t|
  		t.integer  :guest_id
  		t.belongs_to :room	

  		t.timestamp
    end
  end
end