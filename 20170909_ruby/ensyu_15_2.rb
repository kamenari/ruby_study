print "ジャンケン："

hands = ["グー","パー","チョキ"]

rock = 0
papper = 1
scissors = 2

pc_1 = rand(3)
pc_2 = rand(3)

puts "pc_1 #{hands[pc_1]} vs pc_2 #{hands[pc_2]} "

if pc_1 == rock && pc_2 == scissors || 
   pc_1 == papper && pc_2 == rock || 
   pc_1 == scissors && pc_2 == papper
 puts "勝ち"
elsif pc_1 == rock && pc_2 == papper || 
      pc_1 == papper && pc_2 == scissors || 
      pc_1 == scissors && pc_2 == rock
 puts "負け"
else
 puts "あいこ"
end
