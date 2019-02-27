require_relative './actor.rb'
require_relative './character.rb'
require_relative './movie.rb'
require_relative './moviechar.rb'
require_relative './show.rb'
require_relative './showchar.rb'
require 'pry'


kaitlin = Actor.new("Kaitlin")
devito = Actor.new("Devito")
rob = Actor.new("Rob")
charlie = Actor.new("Charlie")
glenn = Actor.new("Glenn")

dee = Character.new("Dee", kaitlin)
mantis = Character.new("Dr. Mantis Toboggan", devito)
mac = Character.new("Mac", rob)
ratslayer = Character.new("Charlie", charlie)
dennis = Character.new("Dennis", glenn)

killer = Character.new("Killer", kaitlin)
realglenn = Character.new("The Real Glenn Howerton", glenn)

algernon = Character.new("Algernon", charlie)


#dee, mantis, mac, ratslayer, dennis
alwayssunny = Show.new("Always Sunny")
#mantis
doctor = Show.new("The Dr. Mantis Toboggan Show")
#killer
bobsburgers = Show.new("Bob's Burgers")
#mantis
mantistalkshow = Show.new("Talk to Toboggan!")

#dee, mantis, mac, ratslayer, dennis
sunnymovie = Movie.new("Always Sunny")
#realglenn
glenngoeswest = Movie.new("Glenn Howerton Goes West")
#algernon
flowers = Movie.new("Flowers for Algernon")




ShowChar.new(alwayssunny, dee)
ShowChar.new(alwayssunny, mantis)
ShowChar.new(alwayssunny, mac)
ShowChar.new(alwayssunny, ratslayer)
ShowChar.new(alwayssunny, dennis)

ShowChar.new(doctor, mantis)

ShowChar.new(bobsburgers, killer)

ShowChar.new(mantistalkshow, mantis)

MovieChar.new(sunnymovie, dee)
MovieChar.new(sunnymovie, mantis)
MovieChar.new(sunnymovie, mac)
MovieChar.new(sunnymovie, ratslayer)
MovieChar.new(sunnymovie, dennis)

MovieChar.new(glenngoeswest, realglenn)

MovieChar.new(flowers, algernon)





















binding.pry
0
