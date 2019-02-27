require_relative './driver.rb'
require_relative './passenger.rb'
require_relative './ride.rb'
require 'pry'


ada = Passenger.new("Ada")
billie = Passenger.new("Billie")
clara = Passenger.new("Clara")

daria = Driver.new("Daria")
eleanor = Driver.new("Eleanor")

ride1 = Ride.new(ada, daria, 70.0)
ride2 = Ride.new(ada, daria, 80.0)
ride3 = Ride.new(billie, daria, 50.0)
ride4 = Ride.new(clara, eleanor, 10.0)


















binding.pry
0
