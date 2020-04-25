print "一辺の数を入力してください："
num = gets.to_i

for i in 1..num do
 for j in 1..i do
 print "＊"
 end
 puts
end


print "一辺の数を入力してください："
num = gets.to_i

for i in 1..num do
 for k in 1..(num - i) do
  print "　"
 end
 for j in 1..i do
  print "＊"
 end
 puts
end


print "一辺の数を入力してください："
num = gets.to_i

for i in 1..num do
 for j in 1..num-i do
  print "　"
 end
 for j in 1..(i * 2 - 1) do
  print "＊"
 end
 puts
end