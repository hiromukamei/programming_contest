#!/usr/bin/env ruby

n = gets.chomp.to_i
count = Hash.new

n.times do
	name = gets.chomp
	if count.has_key?(name)
		count[name] += 1
	else
		count[name] = 1
	end
end

leader = nil
max_vote = 0
count.each do |key,value|
	if max_vote < value
		max_vote = value
		leader = key
	end
end

puts leader
