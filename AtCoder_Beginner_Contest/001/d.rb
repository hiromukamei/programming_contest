#!/bin/usr/env ruby

time_array = Array.new
output = Array.new

input = readlines
input.shift

input.each do |t|
	t2 = t.split("-")

	tmp1 = t2[0].to_i
	if tmp1%10 < 5
		tmp1 = tmp1/10*10
	else
		tmp1 = tmp1/10*10+5
	end

	tmp2 = t2[1].chomp.to_i
	unless tmp2%10 == 0
		if tmp2%10 <= 5
			tmp2 = tmp2/10*10+5
		else
			tmp2 = tmp2/10*10+10
			if tmp2%100 == 60
				tmp2 = tmp2/100*100+100
			end
		end
	end

	tmp_array = [tmp1,tmp2]
	time_array.push(tmp_array)
end

time_array.sort!
j = 0
output.push(time_array[j])
time_array.length.times do |i|
	if output[j][1] >= time_array[i][0]
		if output[j][1] < time_array[i][1]
			output[j][1] = time_array[i][1]
		end
		next
	elsif output[j][1] < time_array[i][0]
		output.push(time_array[i])
		j += 1
	end
end

output.each do |o|
	o.map! do |t|
		'0'*(4-t.to_s.length)+t.to_s
	end
	puts "#{o[0]}-#{o[1]}"
end
