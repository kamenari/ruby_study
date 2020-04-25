sum = 1
for i in 1..10 do
 sum *= i
end
puts sum



sum_2 = 1
for i in 1..1000 do
 if i % 3 ==0
  sum_2 += i
 end
end
puts sum_2
