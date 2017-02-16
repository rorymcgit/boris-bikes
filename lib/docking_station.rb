require_relative 'bike'

class DockingStation
  def release_bike
    fail "no bikes" unless @bike
    @bike
  end

  def dock_bike(bike1)
    #what this needs to do is accept the bike instance + save it
    fail "I iz full" if @bike
    @bike = bike1
  end

  attr_reader :bike

end
