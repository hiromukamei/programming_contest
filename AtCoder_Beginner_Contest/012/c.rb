#!/usr/bin/ruby

sum = 0

for i in 1..9
	for j in 1..9
		sum += i*j
	end
end

wrong_sum = gets.chomp.to_i
mergin = sum - wrong_sum

def remind(n)
	ans_list = Array.new
	for i in 1..9
		if n%i==0 && n/i<10
			ans_list.push([i,n/i])
		end
	end

	return ans_list
end

list = remind(mergin)
list.each do |a|
	puts "#{a[0]} x #{a[1]}"
end
