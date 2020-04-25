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

class Wizard < Person
 def initialize(name)
    @name = name
    @hp = rand(100)+10
    @mp = rand(30)+50
 end
 
 def attack(p)
   n = (@hp * 0.3).floor
   p.attacked(n)
   @hp -= (n * 0.1).floor
  end
  
  
  def attacked(n)
   m = n-(@mp*0.4).floor
   m = 0 if m < 0
   @hp -= m  
  end
end

class Monstar < Person
 def initialize(name)
    @name = name
    @hp = rand(110)+10
    @mp = rand(10)+10
 end
 
 def attack(p)
   n = (@hp * 0.7).floor
   p.attacked(n)
   @hp -= (n * 0.1).floor
  end
  
  
  def attacked(n)
   m = n-(@mp*0.05).floor
   m = 0 if m < 0
   @hp -= m  
  end
 
end

class Hero < Person
 def initialize(name)
    @name = name
    @hp = rand(100)+50
    @mp = rand(20)+30
 end
 
 
 
end


p1 = Hero.new("ヒーロー")
p2 = Wizard.new("ウィザード")
p3 = Monstar.new("モンスター")

puts p1
puts p2
#puts p3

cnt = 1
loop do

 p1.attack(p2)
 puts p1
 puts p2
 if p2.hp < 0 
  break
 end

  p2.attack(p1)
  puts p1
  puts p2
 if p1.hp < 0
  break
 end
 
end
