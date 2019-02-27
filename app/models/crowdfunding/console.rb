# require_relative './create.rb'
require_relative './pledge.rb'
require_relative './project.rb'
require_relative './user.rb'
require 'pry'



devito = User.new("devito")
charlie = User.new("charlie")
mac = User.new("mac")

project1 = devito.create("Show Devito Your...", 10000.00)
project2 = charlie.create("Kitton Mittons!", 5000.00)
project3 = mac.create("Project Badass", 1000.00)

pledge1 = Pledge.new(charlie, project2, 4000.00)
pledge2 = Pledge.new(mac, project2, 2000.00)
pledge3 = Pledge.new(mac, project3, 100.00)










binding.pry
0
