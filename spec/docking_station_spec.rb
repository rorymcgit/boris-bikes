require 'docking_station'

describe DockingStation do
    it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
    end


  it "releases working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock_bike).with(1).argument}

  it "saves the user's bike to the instance/ docks something" do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end

  it "shows there's a docked bike to user/ report attribute" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

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

  describe "#dock_bike" do
    it "raises an error when station is full ", :tag do
      bike1 = Bike.new
      subject.dock_bike(bike1)
      bike2 = Bike.new
      expect{ subject.dock_bike(bike2) }.to raise_error "I iz full"
    end
  end

end
