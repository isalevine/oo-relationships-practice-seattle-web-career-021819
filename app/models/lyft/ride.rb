class Ride
  attr_reader :passenger, :driver, :distance

  @@all = []

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance.to_f
    @@all << self
  end

  def self.all
    @@all
  end


  def self.average_distance
    total_distance = 0.0
    ride_count = self.all.count.to_f
    self.all.each do |ride|
      total_distance += ride.distance
    end
    total_distance = total_distance / ride_count
  end







end
