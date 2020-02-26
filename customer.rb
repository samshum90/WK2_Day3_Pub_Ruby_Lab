class Customer

  attr_reader :name, :wallet, :age, :drunkeness
  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0
  end

  def decrease_wallet(amount)
    @wallet -= amount
  end

  def increase_drunkeness(amount)
    @drunkeness += amount
  end



end
