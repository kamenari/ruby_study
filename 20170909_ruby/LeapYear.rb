print "西暦を入力してください"
year = gets.to_i
if % 400 ==0
 puts "うるう年です"
end

unless year % 100 ==0
 puts "うるう年ではないです。"
end

if year % 4 ==0
 puts "うるう年です"
end