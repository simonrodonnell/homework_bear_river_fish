require("minitest/autorun")
require("minitest/rg")
require_relative("../River")

class FishTest < Minitest::Test

  def test_river_has_a_name()
    river = River.new("Nile")
    assert_equal("Nile", river.name())
  end

end
