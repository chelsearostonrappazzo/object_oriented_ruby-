class Vehicle
  attr_accessor :speed, :direction

  def initialize(input_options)
    @speed = input_options[:speed] || 0
    @direction = input_options[:direction] || "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :make, :color, :year

  def initialize(input_options)
    super
    @make = input_options[:make]
    @color = input_options[:color]
    @year = input_options[:year]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :type, :weight

  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new({ make: "Hispano-Suiza", color: "Cherry Red", year: 1923 })
bike = Bike.new({ type: "Cruiser", weight: "Light" })

p car.make
p bike.type
p car.color
p bike.weight

p car
p bike

# p car.accelerate
# p bike.accelerate

# p car.turn("left")
# p bike.turn("right")

# car.honk_horn
# bike.ring_bell
