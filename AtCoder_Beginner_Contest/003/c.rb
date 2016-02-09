#!/usr/bin/env ruby

def r_cal(c, r)
	return (c+r)/2
end

n,k = gets.chomp.split.map(&:to_i)
rate = gets.chomp.split.sort.map(&:to_f)

r = 0
k.times do |i|
	r = r_cal(rate[i+k], r)
end

puts r
