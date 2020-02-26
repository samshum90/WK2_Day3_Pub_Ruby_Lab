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
    # binding.pry
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

  def customer_buys_drink(pub, customer)
    if (customer_of_age(customer) == true) && (drunkeness_of_customer(customer) == true)

      drink = pub.find_drink_by_name(pub)
      customer.decrease_wallet(drink[0].price)
      pub.increase_till(drink[0].price)
      customer.increase_drunkeness(drink[0].alcohol_lvl)
      pub.remove_drink(drink[0])
    end
  end

  def customer_of_age(customer)
    return customer.age >= 18
  end

  def drunkeness_of_customer(customer)
    return customer.drunkeness <= 10
  end


end
