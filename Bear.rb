class Bear

  attr_reader(:name, :type)

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_contents()
    return @stomach
  end

  def food_count()
    return @stomach.length()
  end

  def takes_fish(fish)
    @stomach.push(fish)
  end

end
