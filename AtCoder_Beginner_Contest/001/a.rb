#!/usr/bin/env ruby

num = Array.new(2)

2.times do |i|
	num[i] = STDIN.gets.chomp!.to_i
end

puts num[0] - num[1]
