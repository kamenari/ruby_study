class Person
 attr_reader :name
 attr_reader :hp
 attr_reader :mp


 def initialize(name)
    @name = name
    @hp = rand(100)+50
    @mp = rand(20)+30
 end
  def attack(p)
   n = (@hp * 0.5).floor
   p.attacked(n)
   @hp -= (n * 0.1).floor
  end
  
  
  def attacked(n)
   m = n-(@mp*0.1).floor
   m = 0 if m < 0
   @hp -= m  
  end
  
  
  def to_s
   "#{@name},#{@hp},#{@mp}"
  end
end

p1 = Person.new("chara_1")
p2 = Person.new("chara_2")

puts p1
puts p2

p1.attack(p2)
p2.attack(p1)

puts p1
puts p2

