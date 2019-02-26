# practice complete - all tests passing
# https://github.com/isalevine/oo-relationships-practice-seattle-web-career-021819/blob/master/exercises/bakery.md



require_relative './bakery.rb'
require_relative './dessert.rb'
require_relative './dessert_ingredient.rb'
require_relative './ingredient.rb'
require 'pry'



hotcakes = Bakery.new("Hot Cakes")
piebar = Bakery.new("Pie Bar")

cake = Dessert.new("cake", hotcakes)
fruitcake = Dessert.new("fruit cake", hotcakes)
pie = Dessert.new("pie", piebar)

flour = Ingredient.new("flour", 10)
sugar = Ingredient.new("sugar", 200)
egg = Ingredient.new("egg", 50)
crust = Ingredient.new("pie crust", 300)
fruit = Ingredient.new("fruit", 100)
sugarwater = Ingredient.new("sugar water", 500)

DessertIngredient.new(cake, flour)
DessertIngredient.new(cake, sugar)
DessertIngredient.new(cake, egg)
DessertIngredient.new(fruitcake, fruit)
DessertIngredient.new(fruitcake, flour)
DessertIngredient.new(fruitcake, sugar)
DessertIngredient.new(pie, crust)
DessertIngredient.new(pie, fruit)












binding.pry
0
