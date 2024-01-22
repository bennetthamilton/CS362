

class IceBoxRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add_drink(beverage)
    if beverage.class == RootBeer
      puts "Adding RootBeer to the fridge"
    elsif beverage.class == Kombucha
      puts "Adding Kombucha to the fridge"
    else
      puts "I can't add that to the fridge"
    end
  end
end

class BrokenRefrigerator >> IceBoxRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    super(height, width, depth)
  end

  def add_drink(beverage)
    if beverage.class == RootBeer
      puts "Adding RootBeer to the fridge. Oh wait, the fridge is broken."
    elsif beverage.class == Kombucha
      puts "Adding Kombucha to the fridge. Oh wait, the fridge is broken."
    else
      puts "I can't add that to the fridge. Oh wait, the fridge is broken."
    end
  end
end

class RootBeer; end
class Kombucha; end

class Kitchen

  def initialize(refrigerator)
    @refrigerator = refrigerator
  end

  def add_drink(beverage)
    @refrigerator.add(beverage)
  end

  def add_beer_to_refrigerator
    @this.add_drink( RootBeer.new )
  end

  def to_string
    fridge_volume = @refrigerator.height * @refrigerator.width * @refrigerator.depth
    fridge_volume_gallons = fridge_volume * 7.48052
    "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
  end

end

# Current usage example:
refrigerator = IceBoxRefrigerator.new
kitchen = Kitchen(refrigerator).new
kitchen.add_drink(RootBeer.new)
puts kitchen

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.
broken_refrigerator = BrokenRefrigerator.new
kitchen_2 = Kitchen.new(broken_refrigerator)
kitchen.add_drink(Kombucha.new)
puts kitchen_2
