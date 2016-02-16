#!/usr/bin/env ruby

s_num = gets.chomp
num = s_num.to_i

if s_num.include?('3') || num%3==0
	puts 'YES'
else
	puts 'NO'
end
