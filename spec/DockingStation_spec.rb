require "DockingStation"
require "Bike"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it {is_expected.to respond_to(:dock)}

  it "release_bike creates a new bike object" do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it "checks the bike is working" do
    expect(subject.release_bike).to be_working
  end

  # it "Allow a a bike to be docked" do
  #   expect(subject.release_bike).to respond_to(:dock)
  # end

end
