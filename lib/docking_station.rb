require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    #what this needs to do is accept the bike instance + save it
    @bike = bike
  end

  attr_reader :bike
  
end
