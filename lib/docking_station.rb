class DockingStation
  attr_reader :bikes

    DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "No bikes in docking station." if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking station is full" if full?
    @bikes << bike
    bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
