require './spec/spec_helper'


RSpec.describe Pantry do
  before(:each) do
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  describe '#initialize' do
    it 'exists and has readable attributes' do

      expect(@pantry).to be_an_instance_of(Pantry)
      expect(@pantry.stock).to eq({})
    end
  end

  describe '#stock_check' do
    it 'can list the items and quantity in the pantry' do

    expect(@pantry.stock_check(@ingredient1)).to eq(0)
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    expect(@pantry.stock_check(@ingredient1)).to eq(15)
    end
  end

  xdescribe '#enough_ingredients_for' do
    it 'has enough ingredients to make recipe' do
      @pantry.restock(@ingredient1, 5)
      @pantry.restock(@ingredient1, 10)
      expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(false)
      @pantry.restock(@ingredient2, 7)
      @pantry.restock(@ingredient2, 1)
      expect(@pantry.enough_ingredients_for?(@recipe1)).to eq(true)
    end
  end
end
