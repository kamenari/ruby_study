print "数字を入力："
num = gets.to_i

n = rand(10)

if num == n
 puts "一致"
else
 puts "不一致"
end

puts "正解#{n}"
