require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}
end


 describe "#broken_bike" do
   it "reports if broken", :broken do
     bike = Bike.new
     bike.report_broken
     expect(bike.broken?).to eq true
   end
 end
