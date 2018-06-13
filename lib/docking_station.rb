require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
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
    bikes.length == capacity
  end

  def empty?
    bikes.empty?
  end
end
