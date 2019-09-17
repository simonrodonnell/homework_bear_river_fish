require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class BearTest < Minitest::Test

  def test_bear_has_name
    bear = Bear.new("Fozzy", "Teddy Bear")
    assert_equal("Fozzy", bear.name())
  end

  def test_bear_has_type
    bear = Bear.new("Fozzy", "Teddy Bear")
    assert_equal("Teddy Bear", bear.type())
  end

  def test_get_stomach_contents()
    bear = Bear.new("Fozzy", "Teddy Bear")
    assert_equal(0, bear.stomach_contents.length)
  end


end
