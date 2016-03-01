#!/usr/bin/env ruby

def check(n)
	i = 0
	if n==2
		i = 1
	elsif n==4
		i = 1
	elsif n==5
		i = 2
	elsif n==6
		i = 3
	elsif n==8
		i = 1
	end

	return i
end

fn = gets.chomp.to_i
flowers = gets.chomp.split.map(&:to_i)
sum = 0
flowers.each do |f|
	sum += check(f)
end

puts sum
