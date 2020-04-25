print "ジャンケン："
num = gets.to_i

hands = ["グー","パー","チョキ"]

rock = 0
papper = 1
scissors = 2

pc = rand(3)

puts "#{hands[num]} vs #{hands[pc]} "

if num == rock && pc == scissors || num == papper && pc == rock || num == scissors && pc == papper
 puts "勝ち"
elsif num == rock && pc == papper || num == papper && pc == scissors || num == scissors && pc == rock
 puts "負け"
else
 puts "あいこ"
end
