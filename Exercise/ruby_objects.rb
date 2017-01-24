class Calculator
  
  attr_accessor :return_value
  
  def initialize 
    @return_value = 0
  end

  def add(num)
    @return_value = @return_value + num 
    return @return_value
  end
  
  def subtract(num)
    @return_value = @return_value - num
    return @return_value
  end
  
   def multiply(num)
    @return_value = @return_value * num 
    return @return_value
  end 
  
  def divide(num)
    @return_value = @return_value / num 
  end 
  
  def clear()
     @return_value = 0 
  end 
  
end

calc_1=Calculator.new
calc_1.add(50)
calc_1.subtract(10)
calc_1.multiply(2)
calc_1.divide(2)
calc_1.clear




//



class Elevator 
  
  attr_reader :floor 
  
  def initialize
    @floor = 0 
  end
  
  def go_up()
    if @floor <= 12
      @floor = @floor + 1
    end  
    cheery_greeting()
    return @floor 
  end
  
  def go_down()
    if @floor > 0 
      @floor = @floor - 1
    end
    cheery_greeting()
    return @floor 
  end 
  
  def cheery_greeting()
    puts "Welcome to floor level #{@floor}, any questions?"
  end

end 

ride_1=Elevator.new
 ride_1.go_up()
 ride_1.go_up()
 ride_1.go_down()
 ride_1.go_down()
 ride_1.go_down()