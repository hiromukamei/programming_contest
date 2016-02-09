#!/usr/bin/env ruby

rex = /[atcorder@]/

s = gets.chomp.split("")
t = gets.chomp.split("")

mes = "You can win"
s.length.times do |i|
	if s[i] != '@'
		if t[i] != '@'
			unless s[i] == t[i]
				mes = "You will lose"
				break
			end
		else
			unless s[i].match(rex)
				mes = "You will lose"
				break
			end
		end
	else
		unless t[i].match(rex)
			mes = "You will lose"
			break
		end
	end
end

puts mes
