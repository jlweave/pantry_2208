class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end
#does not work
  def total_calories
    total_cal = []
    # require "pry"; binding.pry
    #recipe1 and 2 has calories as a key, is there a holder already for them?
    @recipes.each do |name|
      name.ingredient do |key, value|
        total_cal << value
      end
        total_cal.to_i
    end
  end
#does not work
  def highest_calorie_meal
    result = @recipes.max by |calories|
      calories.ingredients.size
  end


end
