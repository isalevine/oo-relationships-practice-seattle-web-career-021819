class Bakery
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end




  def find_des_ing
    output_array = []
    self.desserts.each do |dessert_instance|
      DessertIngredient.all.each do |des_ing_inst|
        if des_ing_inst.dessert == dessert_instance
          output_array << des_ing_inst
        end
      end
    end
    output_array
  end




  def ingredients
    self.find_des_ing.map { |des_ing_instance| des_ing_instance.ingredient }
  end

  def desserts
    Dessert.all.select { |dessert_instance| dessert_instance.bakery == self }
  end

  def average_calories
    calories = 0
    dessert_count = self.desserts.count
    self.ingredients.each do |ingredient_instance|
      calories += ingredient_instance.calorie_count
    end
    calories.to_f / dessert_count.to_f
  end

  def self.all
    @@all
  end

  def shopping_list
    self.ingredients.map { |ingredient_instance| ingredient_instance.name }.uniq
  end




end
