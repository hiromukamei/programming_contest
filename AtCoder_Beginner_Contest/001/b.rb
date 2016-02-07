#!/bin/usr/env ruby

distance = gets.chomp!.to_f / 1000

if distance < 0.1
	vv = 0
elsif 0.1 <= distance && distance <= 5
	vv = distance * 10
elsif 6 <= distance && distance <= 30
	vv = distance + 50
elsif 35 <= distance && distance <= 70
	vv = (distance - 30) / 5 + 80
else
	vv = 89
end

vv = vv.to_i.to_s
vv = '0' + vv if vv.length == 1

puts vv
