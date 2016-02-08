#!/usr/bin/env ruby

rm_str = ['a', 'i', 'u', 'e', 'o']
str = gets.chomp

str.delete!(rm_str.join)

puts str
