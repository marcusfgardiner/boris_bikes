require "DockingStation"
require "Bike"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it {is_expected.to respond_to(:dock).with(1).argument }

  it {is_expected.to respond_to(:bikes_available?)}

  it "release_bike creates a new bike object" do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it "checks the bike is working" do
    expect(subject.release_bike).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it "raises an error if no bikes vailable" do
    expect(subject.bikes_available?).to raise_error
  end

end
