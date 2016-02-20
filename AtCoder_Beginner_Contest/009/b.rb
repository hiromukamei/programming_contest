#!/usr/bin/env ruby

n = gets.chomp.to_i

prices = Array.new
n.times do
	prices.push(gets.chomp.to_i)
end

puts prices.uniq.sort.last(2).first
