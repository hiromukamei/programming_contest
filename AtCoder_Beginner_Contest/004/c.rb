#!/usr/bin/env ruby

cards = [1, 2, 3, 4, 5, 6]

n = gets.chomp.to_i
r = n%5
q = n/5%6

q.times do
	tmp = cards.shift
	cards << tmp
end

r.times do |i|
	cards[i],cards[i+1] = cards[i+1],cards[i]
end

puts cards.join
