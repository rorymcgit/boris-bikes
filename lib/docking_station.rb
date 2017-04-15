require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail "no bikes" if empty?
    @bikes.pop if @bike.working?
  end

  def dock_bike(bike)
    fail "Docking station is full" if full?
    @bike = bike
    @bikes << @bike
  end

  private
  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
