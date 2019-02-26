class Dessert
  attr_accessor :name, :bakery

  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end


  def des_ing_list
    DessertIngredient.all.select { |des_ing_inst| des_ing_inst.dessert == self }
  end

  def ingredients
    self.des_ing_list.map { |des_ing_inst| des_ing_inst.ingredient }
  end

  def self.all
    @@all
  end

  def calories
    calories = 0
    self.ingredients.each do |ingredient_instance|
      calories += ingredient_instance.calorie_count
    end
    calories
  end








end
