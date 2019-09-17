require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")

class FishTest < Minitest::Test

  def test_fish_has_name()
      fish = Fish.new("Trout")
      assert_equal("Trout", fish.name())
  end

end
