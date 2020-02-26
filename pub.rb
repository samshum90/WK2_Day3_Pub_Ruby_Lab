require'pry-byebug'
class Pub

  attr_reader :name, :till, :drink_stock
  def initialize(name, till)
    @name = name
    @till = till
    @drink_stock = []
  end

  def add_drink(drink)
    @drink_stock << drink
  end

  def remove_drink(drink)
    @drink_stock.delete(drink)
  end

  def increase_till(amount)
    @till += amount
  end

  def find_drink_by_name(pub)
    for drink in pub.drink_stock
      if drink.name == drink_stock
        return drink
      end
    end
  end

  def customer_buys_drink(pub)
    drink = pub.find_drink_by_name(pub)
    binding.pry
    decrease_wallet(drink.price)

    pub.increase_till(pub.drink_stock[drink].price)
    pub.remove_drink(drink)

  end


end
