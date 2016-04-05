require 'csv'
require_relative 'car'

#load data from csv file
#list all cars
#display cars


module CarLoader

  def self.get_cars_from_csv(filepath)  
  	cars = []
    CSV.foreach(filepath, headers: true, header_converters: :symbols) do |row|
      cars << Car.new(row)
    end
    cars
  end
end

p CarLoader.get_cars_from_csv("inventory.csv")