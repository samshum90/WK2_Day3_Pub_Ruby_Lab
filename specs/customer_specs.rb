require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')

class TestCustomer < Minitest::Test

  def setup
    @customer1 = Customer.new("Sam",1000000, 23)
  end

  def test_customer
    assert_equal("Sam", @customer1.name)
    assert_equal(1000000, @customer1.wallet)
    assert_equal(23,@customer1.age)
    assert_equal(0,@customer1.drunkeness)
  end

  def test_decrease_wallet()
    @customer1.decrease_wallet(10)
    assert_equal(999990, @customer1.wallet)
  end


end
