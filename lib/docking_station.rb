require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if bikes.empty?
    bikes.shift
  end

  def dock(bike)
    fail 'Docking Station full' if bikes.length == 20
    bikes << bike
  end
end
