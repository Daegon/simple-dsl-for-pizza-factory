require 'spec_helper'

describe PizzaFactory do

  class Cheese
  end

  class Pepperoni
  end

  class ItalianPizzaFactory < PizzaFactory
    ingredient Cheese
    ingredient Pepperoni
  end

  let(:italian_pizza) { ItalianPizzaFactory.create }

  it 'should create italian pizza with described ingredients' do
    expect(italian_pizza).to be_a(Pizza)
    expect(italian_pizza.ingredients.first).to be_a(Cheese)
    expect(italian_pizza.ingredients.last).to be_a(Pepperoni)
  end

end
