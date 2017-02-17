require 'docking_station'

describe DockingStation do
    it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
    end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}


  it "shows the released bike is the same as what's been docked" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike
  end

  describe "#release_bike" do
    it "raises an error when no bike available" do
      expect{ subject.release_bike }.to raise_error "no bikes"
    end
  end

  describe "#full_bike" do
    it "raises an error when station is full", :tag do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
      expect{ subject.dock_bike(Bike.new) }.to raise_error "I iz full"
    end
  end

  describe "#capacity_checker" do
  it " sets the capcity of the docking station to a new value", :tag do
    station = DockingStation.new(50)
    expect(station.capacity).to eq(50)
   end
 end
describe "#check_for_default" do
  it " returns the defualt value when no capcity set", :default do
  station = DockingStation.new
  expect(station.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  end
 end
end
