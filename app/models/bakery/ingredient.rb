class Ingredient
  attr_accessor :name, :calorie_count

  @@all = []

  def initialize(name, calorie_count)
    @name = name
    @calorie_count = calorie_count
    @@all << self
  end

  def find_des_ing
    DessertIngredient.all.find { |des_ing_inst| des_ing_inst.ingredient == self }
  end

  def dessert
    self.find_des_ing.dessert
  end

  def bakery
    self.dessert.bakery
  end

  def self.all
    @@all
  end

  def self.find_all_by_name(input)
    @@all.select { |ingredient_instance| ingredient_instance.name.include?(input) }
  end



end
