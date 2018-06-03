class PizzaFactory

  class << self
    def ingredient(ingredient_class)
      ingredients << ingredient_class
    end

    def ingredients
      @ingredients ||= []
    end

    def create
      pizza = Pizza.new
      ingredients.each { |ingredient| pizza.ingredients << ingredient.new }
      pizza
    end
  end

end
