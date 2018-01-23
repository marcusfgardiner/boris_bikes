require "DockingStation"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "release_bike creates a new bike object" do
    expect(release_bike).to eq()
  end
end
