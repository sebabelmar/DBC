class CreateHotels < ActiveRecord::Migration
  def change
  	create_table :hotels do |t| 
  		t.string :name
  		t.timestamp
    end
  end
end
