#!/usr/bin/env ruby

table = readlines
table.map!{|line| line.chomp.split}
len = table.length

for i in 0...(len/2)
	len.times do |j|
		table[i][j], table[len-(i+1)][len-(j+1)] = table[len-(i+1)][len-(j+1)], table[i][j]
	end
end

table.each do |row|
	for i in 0...(len-1)
		print "#{row[i]} "
	end
		puts "#{row[len-1]}"
end
