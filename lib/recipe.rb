class Recipe
  attr_reader :name,
              :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def ingredient_check(ingredient)
    @ingredients_required[ingredient]
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] += quantity
  end

  def ingredients
    ingredients_arr = []
    # require "pry"; binding.pry

    @ingredients_required.each do |key, value|
      ingredients_arr.to_a << @ingredients_required.keys

    end
      ingredients_arr.flatten.uniq
  end
end
