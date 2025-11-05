class MyCar
    
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
      @year = year
      @model = model
      @color = color
      @current_speed = 0
  end

  def speed_up(number)
      @current_speed += number
      puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
      @current_speed -= number
      puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
      puts "You are now going #{@current_speed} mph."
  end

  def shut_down
      @current_speed = 0
      puts "Let's park this bad boy!"
  end

  def spray_paint(color)
      self.color = color
      puts "Your new #{color} paint job looks great!"
  end

end

mustang = MyCar.new(2021, "Mustang Mach E", "Black")
mustang.speed_up(20)
mustang.current_speed
mustang.speed_up(20)
mustang.current_speed
mustang.brake(20)
mustang.current_speed
mustang.brake(20)
mustang.shut_down
mustang.current_speed

mustang.spray_paint("Dark Matter Gray Metallic")
puts mustang.color
puts mustang.year