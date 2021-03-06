require 'BorisBikes'
describe DockingStation do
  it "responds to release_bike method" do 
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:release_bike)
  end

  it "creates a new instance of the Bike class and can use working?" do
    docking_station = DockingStation.new 
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it "docking station responds to dock_bikes method" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to(:dock_bikes)
  end  

  it "dock_bikes method will return hired bikes to docking station" do
    docking_station = DockingStation.new
    bike1 = Bike.new
    bike2 = Bike.new
    docking_station.dock_bikes([bike1, bike2])
    expect(docking_station.docked_bikes).to eq([bike1, bike2])
  end  
end 