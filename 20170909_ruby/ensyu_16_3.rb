win = false
cut = 0
n = rand(100)

while win == false do

 print "数字を入力："
 num = gets.to_i
 cut += 1
 if num == n
  puts "Success"
  win = true
 elsif num > n
  puts "Big"
 else
  puts "Small"
 end
  
end

puts "#{cut}回目で当たり"
 