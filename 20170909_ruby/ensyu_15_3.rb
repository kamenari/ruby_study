print "ジャンケン："

hands = ["グー","パー","チョキ"]

rock = 0
papper = 1
scissors = 2

pc_1_win = 0
pc_2_win = 0

3.times do
pc_1 = rand(3)
pc_2 = rand(3)

puts "pc_1 #{hands[pc_1]} vs pc_2 #{hands[pc_2]} "

if pc_1 == rock && pc_2 == scissors || 
   pc_1 == papper && pc_2 == rock || 
   pc_1 == scissors && pc_2 == papper
 puts "勝ち"
 puts
 pc_1_win += 1
elsif pc_1 == rock && pc_2 == papper || 
      pc_1 == papper && pc_2 == scissors || 
      pc_1 == scissors && pc_2 == rock
 puts "負け"
 puts
 pc_2_win += 1
else
 puts "あいこ"
 puts
end
end

puts "pc_1:#{pc_1_win}勝"
puts "pc_2:#{pc_2_win}勝"

if pc_1_win > pc_2_win
 puts "pc_1_winの勝ち"
elsif pc_1_win < pc_2_win
 puts "pc_2_winの勝ち"
else
 puts "引き分け"
end

