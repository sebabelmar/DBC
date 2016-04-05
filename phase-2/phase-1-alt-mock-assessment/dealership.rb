require_relative 'car'
require_relative 'car_loader'

class Dealership

  # include CarLoader

  attr_reader :cars

  def initialize(cars = [])
    @cars = cars
  end


  def find_make(make)
    cars_by_make = []
    @cars.each do |car|
      cars_by_make << car if car.make == make
    end
    cars_by_make

  def finder
    located_car = @cars.find { |car| car.make = make }
  raise "Can't find car with an make of #{make.inspect}" unless located_car
  located_car
  end

  end

  def add_car(filename)
    CSV.open(filename, 'w') do |database|
      database << ['inventory_id', 'make', 'model', 'year']
      cars.each do |car|
        database << car.to_csv
    end
  end
end
end
