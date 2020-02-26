require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')

class TestDrinks < Minitest::Test

  def setup
    @drink1 = Drinks.new({name: "Vodka", price:1000})
  end

  def test_drinks
    assert_equal("Vodka", @drink1.name)
    assert_equal(1000, @drink1.price)
  end



end
