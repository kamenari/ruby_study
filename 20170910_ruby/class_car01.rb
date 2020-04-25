class Car

 def initialize(name = "ななし")
  @name = name
  @x = @y = 0
 end

 def move(x, y)
  @x += x
  @y += y
 end
 
 def to_s
  "#{@name}: #{@x}, #{@y}"
 end
end

car01 = Car.new("カーズ01")
p car01
car01.move(10,10)
puts car01.to_s