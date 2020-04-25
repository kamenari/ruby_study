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

class Stone < Player
 def showhand
   ROCK
  end
end

class Judger
 def play(p1, p2)
     3.times do

      pc_1 = p1.showhand
      pc_2 = p2.showhand

      puts "#{p1.name} #{$hands[pc_1]} vs #{p2.name} #{$hands[pc_2]} "

      if pc_1 == ROCK && pc_2 == SCISSORS || 
         pc_1 == PAPPER && pc_2 == ROCK || 
         pc_1 == SCISSORS && pc_2 == PAPPER
       puts "#{p1.name}の勝ち"
       p1.win
       puts
       p1.win
      elsif pc_1 == ROCK && pc_2 == PAPPER || 
            pc_1 == PAPPER && pc_2 == SCISSORS || 
            pc_1 == SCISSORS && pc_2 == ROCK
       puts "#{p2.name}の勝ち"
       puts
       p2.win
      else
       puts "あいこ"
       puts
      end
     end
 end
 
 def finalwinner(p1, p2)
   if p1.win > p2.win
    puts "#{p1.name}の勝ち"
   elsif p1.win < p2.win
    puts "#{p2.name}の勝ち"
   else
    puts "引き分け"
   end
 end
 
end

$hands = ["グー","パー","チョキ"]

ROCK = 0
PAPPER = 1
SCISSORS = 2

p1 = Stone.new("どらちゃん")
p2 = Player.new("ウルトラマン")

judge = Judger.new
judge.play(p1, p2)
judge.finalwinner(p1, p2)

