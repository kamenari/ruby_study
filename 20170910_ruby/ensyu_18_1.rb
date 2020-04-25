class Player
 attr_reader :name
 attr_reader :win


 def initialize(name)
    @name = name
    @win = 0
  end
  
  
  
  def showhand
   rand(3)
  end
  
  def win
   @win += 1
  end
  
  def to_s
   "#{@name}: #{@win}"
  end
end

hands = ["グー","パー","チョキ"]

rock = 0
papper = 1
scissors = 2

p1 = Player.new("どらちゃん")
p2 = Player.new("ウルトラマン")

3.times do

pc_1 = p1.showhand
pc_2 = p2.showhand

puts "#{p1.name} #{hands[pc_1]} vs #{p2.name} #{hands[pc_2]} "

 if pc_1 == rock && pc_2 == scissors || 
    pc_1 == papper && pc_2 == rock || 
    pc_1 == scissors && pc_2 == papper
  puts "#{p1.name}の勝ち"
  p1.win
  puts
  p1.win += 1
 elsif pc_1 == rock && pc_2 == papper || 
       pc_1 == papper && pc_2 == scissors || 
       pc_1 == scissors && pc_2 == rock
  puts "#{p2.name}の勝ち"
  puts
  p2.win
 else
  puts "あいこ"
  puts
 end
end



if p1.win > p2.win
 puts "#{p1.name}の勝ち"
elsif p1.win < p2.win
 puts "#{p2.name}の勝ち"
else
 puts "引き分け"
end
