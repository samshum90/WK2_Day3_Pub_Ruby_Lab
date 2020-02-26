require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')
require_relative('../Food')

class TestFood < Minitest::Test

  def setup
    @food1 = Food.new("Burger", 500, 3)
  end

  def test_food
    assert_equal("Burger", @food1.name)
    assert_equal(500, @food1.price)
    assert_equal(3, @food1.rejuvenation_lvl)


  end


end
