#!/usr/bin/env ruby

triangle = gets.chomp.split(" ")
triangle.map!{|c| c.to_i}

for i in 1..2
	triangle[i*2] = triangle[i*2] - triangle[0]
	triangle[i*2+1] = triangle[i*2+1] - triangle[1]
end

area = (triangle[2]*triangle[5]-triangle[3]*triangle[4]).abs.to_f / 2

puts area
