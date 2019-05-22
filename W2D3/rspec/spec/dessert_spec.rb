require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Joe") }
  subject(:cake) { Dessert.new("cake", 100, chef) }


  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to eq([])
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { cake.quantity("100") }.to raise_error(ArgumentError)
      expect { Dessert.new("cookie", "tons", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) do
      cake.add_ingredient("sugar")
      cake.add_ingredient("vanilla")
    end

    it "adds an ingredient to the ingredients array" do
      expect(cake.ingredients).to include("vanilla")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["sugar", "eggs", "vanilla", "butter", "baking_soda"]
      ingredients.each do |ingredient|
        cake.add_ingredient(ingredient)
      end

      expect(cake.ingredients).to eq(ingredients)
      cake.mix!
      expect(cake.ingredients).not_to eq(ingredients)
      expect(cake.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(40)
      expect(cake.quantity).to eq(60)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cake.eat(150) }.to raise_error("not enough left!" )
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Joe the Great Baker")
      expect(cake.serve).to eq("Chef Joe the Great Baker has made 100 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(cake)
      cake.make_more
    end
  end

end
