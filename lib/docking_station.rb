require_relative 'bike'

class DockingStation
  # Docking station starts empty. Bike is created outside

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes_arr = []
  end

  def release_bike
    fail "no bikes" if empty?
    @bikes_arr.pop unless @bike.broken?
  end

  def dock_bike(bike)
  # This method will send error if 20 bikes have been docked
  # and it therefore cannot accept any more.
    fail "I iz full" if full?
    @bike = bike
    @bikes_arr << @bike
  end

  private
    def full?
      @bikes_arr.length >= @capacity ? true : false
    end

    def empty?
      @bikes_arr.empty? ? true : false
    end

end
