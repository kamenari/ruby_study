class Person
 attr_reader :name
 attr_reader :hp
 attr_reader :mp


 def initialize(name)
    @name = name
    @hp = rand(100)+50
    @mp = rand(20)+30
 end
  
  def attacked(n)
   @hp -= n
  end
  
  def to_s
   puts "#{@name}"
   puts "#{@hp}"
   puts "#{@mp}"
  end
end

p1 = Person.new("chara_1")
p2 = Person.new("chara_2")

puts p1
puts p2

p1.attacked(30)
p2.attacked(20)

puts p1
puts p2

