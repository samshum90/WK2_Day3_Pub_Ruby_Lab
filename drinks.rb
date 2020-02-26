class Drinks

  attr_reader :name, :price

  def initialize(booze)
    @name = booze[:name]
    @price = booze[:price]
  end

end
