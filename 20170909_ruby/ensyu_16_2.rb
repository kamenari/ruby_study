total = 3
win = false
cnt = 0

for i in 1..total do
  print "数字を入力："
  num = gets.to_i
  puts "#{i}回目"
  cnt += 1
  


  n = rand(10)

  if num == n
   puts "勝ち"
   win = true
  else
   puts "負け"
  end

  puts "正解#{n}"
  puts
  
  if win == true
   break
  end
  
end

if win
 puts "#{cnt}回目に当たり" 
else
 puts "負け"
end
