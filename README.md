# Simple Ruby DSL for pizza factory

Repository with working code for article [Simple Ruby DSL for pizza factory](https://www.linkedin.com/pulse/simple-ruby-dsl-pizza-factory-roman-slobodzian/).

### Usage example
```ruby
class Cheese
end

class Pepperoni
end

class ItalianPizzaFactory < PizzaFactory
    ingredient Cheese
    ingredient Pepperoni
end

pizza = ItalianPizzaFactory.create
```

### Tests
To run tests execute command
```
rspec
```
