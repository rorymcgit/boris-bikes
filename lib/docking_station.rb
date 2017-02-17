require_relative 'bike'

class DockingStation
  # Docking station starts empty. Bike is created outside

    attr_reader :bike
    attr_reader :bikes_arr

  def initialize
    @bikes_arr = []
  end

  def release_bike
    fail "no bikes" if @bikes_arr.empty?
    @bikes_arr.pop
  end

  def dock_bike(bike1)
  #nb - Bike is created outside func.; Dock capcity = 1.
  #this method will send error if @bike already exists
  #@bike will only exist if a bike has already been docked
  #hence that bike will have become instance variable
    fail "I iz full" if @bikes_arr.length >= 20
    @bikes_arr << bike1
    @bike = bike1
  end

end
