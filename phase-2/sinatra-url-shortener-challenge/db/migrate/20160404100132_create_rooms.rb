class CreateRooms < ActiveRecord::Migration
  def change
  	create_table :rooms do |t|
  		t.integer :rate
  		t.integer :number

  		t.belongs_to :hotel

  		t.timestamp
    end
  end
end