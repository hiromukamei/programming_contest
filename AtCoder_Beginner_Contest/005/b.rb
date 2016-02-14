#!/usr/bin/env ruby

time = readlines.map{|line| line.chomp.to_i}
time.shift

min = 100
time.each do |t|
	if min > t
		min = t
	end
end

puts min
