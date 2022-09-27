require './spec/spec_helper'


RSpec.describe Recipe do
  before(:each) do
    @recipe1 = Recipe.new("Mac and Cheese")
    @recipe2 = Recipe.new("Cheese Burger")
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do

      expect(@recipe1).to be_an_instance_of(Recipe)
      expect(@recipe1.name).to eq("Mac and Cheese")
      expect(@recipe1.ingredients_required).to eq({})
    end
  end

  describe '#add_ingredient' do
    it 'can store the ingredients and return names' do
    expect(@recipe1.ingredient_check(@ingredient1)).to eq(0)
    @recipe1.add_ingredient(@ingredient1, 2)
    @recipe1.add_ingredient(@ingredient1, 4)
    @recipe1.add_ingredient(@ingredient2, 8)
    expect(@recipe1.ingredients_required).to eq({@ingredient1 => 6, @ingredient2 => 8})
    expect(@recipe1.ingredients).to eq([@ingredient1, @ingredient2])
    end
  end

end
