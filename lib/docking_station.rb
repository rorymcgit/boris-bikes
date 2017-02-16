require_relative 'bike'

class DockingStation
  @@num_bikes = 0
  def release_bike
    fail "no bikes" unless @bike
    @bike
  end

  def dock_bike(bike1)
  #nb - Bike is created outside func.; Dock capcity = 1.
  #this method will send error if @bike already exists
  #@bike will only exist if a bike has already been docked
  #hence that bike will have become instance variable
    fail "I iz full" if @@num_bikes >= 20
    @bike = bike1
    @@num_bikes += 1
  end

  attr_reader :bike

end
