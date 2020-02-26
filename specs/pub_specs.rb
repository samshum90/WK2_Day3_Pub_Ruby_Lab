require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drinks')

class TestPub < Minitest::Test

  def setup
    @pub1 = Pub.new("Forty Forty Two", 10020)
  end

  def test_pub
    assert_equal("Forty Forty Two", @pub1.name)
    assert_equal(10020, @pub1.till)
    assert_equal({}, @pub1.drink)
  end



end
