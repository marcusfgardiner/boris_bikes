require "DockingStation.rb"

describe DockingStation do
  it "responds to release_bike method" do
    expect(docking_station = DockingStation.new).respond_to(release_bike)
  end
end
