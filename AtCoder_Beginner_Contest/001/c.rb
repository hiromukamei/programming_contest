#!/bin/usr/env ruby

input = gets.chomp!.split(" ")
deg = input[0].to_f / 10.0
dis = input[1].to_f

if(11.25 <= deg && deg < 33.75)
	dir = 'NNE'
elsif(33.75 <= deg && deg < 56.25)
   dir = 'NE'
elsif(56.25 <= deg && deg < 78.75)
   dir = 'ENE'
elsif(78.75 <= deg && deg < 101.25)
   dir = 'E'
elsif(101.25 <= deg && deg < 123.75)
   dir = 'ESE'
elsif(123.75 <= deg && deg < 146.25)
   dir = 'SE'
elsif(146.25 <= deg && deg < 168.75)
   dir = 'SSE'
elsif(168.75 <= deg && deg < 191.25)
   dir = 'S'
elsif(191.25 <= deg && deg < 213.75)
   dir = 'SSW'
elsif(213.75 <= deg && deg < 236.25)
   dir = 'SW'
elsif(236.25 <= deg && deg < 258.75)
   dir = 'WSW'
elsif(258.75 <= deg && deg < 281.25)
   dir = 'W'
elsif(281.25 <= deg && deg < 303.75)
   dir = 'WNW'
elsif(303.75 <= deg && deg < 326.25)
   dir = 'NW'
elsif(326.25 <= deg && deg < 348.75)
   dir = 'NNW'
else
   dir = 'N'
end


ws = (dis / 6.0).round / 10.0

if(ws <= 0.2)
	dir = 'C'
	w = 0
elsif(ws <= 1.5)
	w = 1
elsif(ws <= 3.3)
	w = 2
elsif(ws <= 5.4)
	w = 3
elsif(ws <= 7.9)
	w = 4
elsif(ws <= 10.7)
	w = 5
elsif(ws <= 13.8)
	w = 6
elsif(ws <= 17.1)
	w = 7
elsif(ws <= 20.7)
	w = 8
elsif(ws <= 24.4)
	w = 9
elsif(ws <= 28.4)
	w = 10
elsif(ws <= 32.6)
	w = 11
else
	w = 12
end

puts "#{dir} #{w}"
