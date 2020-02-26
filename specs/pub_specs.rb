require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')

class TestPub < Minitest::Test

  def setup
    @pub1 = Pub.new("Forty Forty Two", 10020)
    @drink1 = Drinks.new({name: "Vodka", price:1000})
    @customer1 = Customer.new("Sam",1000000)
  end

  def test_pub
    assert_equal("Forty Forty Two", @pub1.name)
    assert_equal(10020, @pub1.till)
    assert_equal(0, @pub1.drink_stock.size)
  end

  def test_add_drink()
    @pub1.add_drink(@drink1)
    assert_equal("Vodka", @pub1.drink_stock[0].name)
    assert_equal(1000, @pub1.drink_stock[0].price)
  end

  def test_remove_drink()
    @pub1.add_drink(@drink1)
    @pub1.remove_drink(@drink1)
    assert_equal(0, @pub1.drink_stock.size)
  end

  def test_increase_till()
    @pub1.increase_till(10)
    assert_equal(10030, @pub1.till)
  end
  # def test_buy_drink()
  #   assert_equal()

  def test_find_drink_by_name()
    @pub1.add_drink(@drink1)
    @pub1.find_drink_by_name(@pub1)
    assert_equal("Vodka", @pub1.drink_stock[0].name)
  end

  def test_customer_buys_drink
    @pub1.add_drink(@drink1)
    @pub1.customer_buys_drink(@pub1)

    assert_equal(999000, @customer1.wallet)
    assert_equal(11020, @pub1.till)
    assert_equal(0, @pub1.drink_stock.size)
  end


end
