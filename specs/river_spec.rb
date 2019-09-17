require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Eel")
    @fish4 = Fish.new("Bass")
    @fish5 = Fish.new("Piranha")

    @school_of_fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end

  def test_river_has_a_name()
    river = River.new("Nile")
    assert_equal("Nile", river.name())
  end

  def test_fish_count()
    river = River.new("Nile")
    assert_equal(0, river.fish_count())
  end

  def test_add_fish_to_river()
    river = River.new("Nile")
    river.add_fish_to_river(@school_of_fish)
    assert_equal(5, river.fish_count())
  end

  def test_river_loses_fish()

  end

end
