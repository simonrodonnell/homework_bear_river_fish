require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class BearTest < Minitest::Test

  def setup
    @river1 = River.new("Nile")

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Eel")
    @fish4 = Fish.new("Bass")
    @fish5 = Fish.new("Piranha")
    @school_of_fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

    @river1.add_fish_to_river(@school_of_fish)
  end

  def test_bear_has_name
    bear = Bear.new("Fozzie", "Teddy Bear")
    assert_equal("Fozzie", bear.name())
  end

  def test_bear_has_type
    bear = Bear.new("Fozzie", "Teddy Bear")
    assert_equal("Teddy Bear", bear.type())
  end

  def test_get_stomach_contents()
    bear = Bear.new("Fozzie", "Teddy Bear")
    assert_equal(0, bear.food_count)
  end

  def test_bear_takes_fish()
    bear = Bear.new("Fozzie", "Teddy Bear")
    bear.takes_fish(@fish5)
    @river1.loses_fish(@fish5)
    assert_equal(1, bear.food_count())
    assert_equal(4, @river1.fish_count())
  end

  def test_bear_roar
    bear = Bear.new("Fozzie", "Teddy Bear")
    assert_equal("Rawr!", bear.roar())
  end

end
