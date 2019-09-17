require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class BearTest < Minitest::Test

  def test_bear_has_name
    bear = Bear.new("Grizzly")
    assert_equal("Grizzly", bear.name())
  end

end
