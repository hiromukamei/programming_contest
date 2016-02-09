#!/usr/bin/env ruby

task = gets.chomp.to_f

sum = 0
for i in 1..task
	sum += i
end

puts sum/task*10000
