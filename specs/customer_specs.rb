require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')

class TestCustomer < Minitest::Test

  def setup
    @customer1 = Customer.new("Sam",1000000)
  end

  def test_customer
    assert_equal("Sam", @customer1.name)
    assert_equal(1000000, @customer1.wallet)
  end

  def test_decrease_wallet()
    @customer1.decrease_wallet(10)
    assert_equal(999990, @customer1.wallet)
  end


end
