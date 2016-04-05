require_relative "../car"
require_relative "../car_loader"

describe CarLoader do
  let(:dealership) { Dealership.new }

  describe "#get_cars_from_csv" do
    before do
      dealership.get_cars_from_csv('inventory.csv')

      it "returns an array of Car objects" do
      expect(dealership).not_to be_empty
      end
    end
  end
end
