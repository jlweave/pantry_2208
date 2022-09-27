require './spec/spec_helper'


RSpec.describe CookBook do
  before(:each) do
    @cookbook = CookBook.new
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    @ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
    @ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do

      expect(@cookbook).to be_an_instance_of(CookBook)
      expect(@cookbook.recipes).to eq([])
    end
  end

  describe '#add_recipe' do
    it 'can store recipes and return them in an array' do
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
      expect(@cookbook.recipes).to eq([@recipe1, @recipe2])

    end
  end

  describe '#total_calories' do
    it 'can add up the calories from a recipe and return an integer' do
      @recipe1.add_ingredient(@ingredient1, 2)
      @recipe1.add_ingredient(@ingredient2, 8)
      @recipe2.add_ingredient(@ingredient1, 2)
      @recipe2.add_ingredient(@ingredient3, 4)
      @recipe2.add_ingredient(@ingredient4, 1)
  # require "pry"; binding.pry
      expect(@recipe1.total_calories).to eq(440)
      expect(@recipe2.total_calories).to eq(675)
      @cookbook.add_recipe(@recipe1)
      @cookbook.add_recipe(@recipe2)
    end
  end


end
