class Vehicle
  attr :speed, :direction

  def initialize
    @speed = 0
    @direction = "north"
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
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new()
bike1 = Bike.new()

bike1.accelerate
bike1.ring_bell
puts bike1.speed
bike1.turn("east")
puts bike1.direction

car1.accelerate
car1.honk_horn
puts car1.speed
