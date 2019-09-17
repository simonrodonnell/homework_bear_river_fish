class River

  attr_reader(:name)

  def initialize(name)
    @name = name
    @fish = []
  end

  def number_of_fish_in_river()
    @fish.length()
  end
  
  def add_fish_to_river(array_of_fish)
    @fish.concat(array_of_fish)
  end

end
