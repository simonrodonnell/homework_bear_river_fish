class River

  attr_reader(:name)

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count()
    @fish.length()
  end

  def add_fish_to_river(array_of_fish)
    @fish.concat(array_of_fish)
  end

  def loses_fish(fish)
    @fish.delete(fish)
  end

end
