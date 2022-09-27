class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)

  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, quantity)
    @stock[item] += quantity
  end
#does not work  ingredients_required not found?
  def enough_ingredients_for?(recipes)
    items = []
    @stock.keys.each do |key|
      items << key
    end
      items.sort == recipes.ingredients_required.keys
  end


end
