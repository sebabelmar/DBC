require_relative 'car_loader'

class Car

include CarLoader

  # I need to encapsulate these objects inside the dealership...
  attr_reader :inventory_id, :make, :model, :year

  def initialize(attributes = {})
    @inventory_id = attributes[:inventory_id].to_i
    @make = attributes[:make]
    @model = attributes[:model]
    @year = attributes[:year]
  end


  def make

  end

  def to_csv
    [inventory_id, make, model, year]
  end

end
