class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end  


  def release_bike
    Bike.new
  end  

  def dock_bikes(returning_bikes)
    @docked_bikes += returning_bikes
  end  

  def check_dock
    @docked_bikes[0]
  end  
end  

class Bike
  def working?

  end  
end  