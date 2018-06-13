require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.shift
  end

  def dock(bike)
    fail 'Docking Station full' if full?
    bikes << bike
  end

  private

  def full?
    bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    bikes.empty?
  end
end
