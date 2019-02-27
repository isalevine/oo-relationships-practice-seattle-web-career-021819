require_relative './listing.rb'
require_relative './trip.rb'
require_relative './guest.rb'


seattle = Listing.new("Seattle")
cincinnati = Listing.new("Cincinnati")
taipei = Listing.new("Taipei")

ada = Guest.new("Ada")
billie = Guest.new("Billie")
clara = Guest.new("Clara")

trip1 = Trip.new(seattle, ada)
trip2 = Trip.new(seattle, billie)
trip3 = Trip.new(cincinnati, billie)
trip4 = Trip.new(taipei, clara)







puts
puts "1. seattle.guests.to_s - outputs:"
puts seattle.guests.to_s
puts
puts

puts
puts "2. seattle.trips.to_s - outputs:"
puts seattle.trips.to_s
puts
puts

puts
puts "3. seattle.trip_count.to_s - outputs:"
puts seattle.trip_count.to_s
puts
puts

puts
puts "4. Listing.all.to_s - outputs:"
puts Listing.all.to_s
puts
puts

puts
puts "5. Listing.find_all_by_city(\"Seattle\").to_s - outputs:"
puts Listing.find_all_by_city("Seattle").to_s
puts
puts

puts
puts "6. Listing.most_popular.to_s - outputs:"
puts Listing.most_popular.to_s
puts "   Listing.most_popular.city - outputs:"
puts Listing.most_popular.city
puts
puts

puts
puts "7. billie.listings.to_s - outputs:"
puts billie.listings.to_s
puts
puts

puts
puts "8. billie.trips.to_s - outputs:"
puts billie.trips.to_s
puts
puts

puts
puts "9. billie.trip_count.to_s - outputs:"
puts billie.trip_count.to_s
puts
puts

puts
puts "10. Guest.pro_traveller.to_s - outputs:"
puts Guest.pro_traveller.to_s
puts
puts

puts
puts "11. Guest.find_all_by_name(\"Billie\").to_s - outputs:"
puts Guest.find_all_by_name("Billie").to_s
puts
puts

puts
puts "12. trip1.listing.to_s - outputs:"
puts trip1.listing.to_s
puts "    trip1.listing.city - outputs:"
puts trip1.listing.city
puts
puts

puts
puts "13. trip1.guest.to_s - outputs:"
puts trip1.guest.to_s
puts "    trip1.guest.name - outputs:"
puts trip1.guest.name
puts
puts

puts
puts "14. Trip.all.to_s - outputs:"
puts Trip.all.to_s
puts
puts








0
