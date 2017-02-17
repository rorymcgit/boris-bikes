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
  # This method will send error if 20 bikes have been docked
  # and it therefore cannot accept any more.
    fail "I iz full" if @bikes_arr.length >= 20
    @bikes_arr << bike1
    @bike = bike1
  end

end
