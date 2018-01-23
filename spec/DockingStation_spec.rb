require "DockingStation"
require "Bike"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "release_bike creates a new bike object" do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it "checks the bike is working" do
    expect(subject.release_bike).to be_working
  end

end
