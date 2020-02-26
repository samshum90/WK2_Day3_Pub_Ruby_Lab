class Drinks

  attr_reader :name, :price, :alcohol_lvl

  def initialize(booze)
    @name = booze[:name]
    @price = booze[:price]
    @alcohol_lvl = booze[:alcohol_lvl]
  end

end
