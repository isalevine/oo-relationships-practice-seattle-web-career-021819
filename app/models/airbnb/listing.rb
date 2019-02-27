class Listing
  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end




  def self.find_all_by_city(city)
    self.all.select { |listing_instance| listing_instance.city == city }
  end


  def self.most_popular
    trip_counter = 0
    output_listing = nil
    self.all.each do |listing_instance|
      if listing_instance.trip_count > trip_counter
        trip_counter = listing_instance.trip_count
        output_listing = listing_instance
      end
    end
    output_listing
  end




  def guests
    self.trips.map {|trip_instance| trip_instance.guest }
  end


  def trips
    Trip.all.select { |trip_instance| trip_instance.listing == self}
  end


  def trip_count
    self.trips.count
  end




end
