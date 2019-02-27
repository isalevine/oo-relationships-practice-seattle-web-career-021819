class Guest
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end




  def self.pro_traveller
    self.all.select { |guest_instance| guest_instance.trip_count > 1 }
  end


  def self.find_all_by_name(name)
    self.all.select { |guest_instance| guest_instance.name == name}
  end





  def listings
    self.trips.map { |trip_instance| trip_instance.listing }
  end


  def trips
    Trip.all.select { |trip_instance| trip_instance.guest == self }
  end


  def trip_count
    self.trips.count
  end







end
