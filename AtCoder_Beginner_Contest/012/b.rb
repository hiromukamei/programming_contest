#!/usr/bin/env ruby

time = gets.chomp.to_i
ans = Hash.new

ans[:h] = time/(60*60)
ans[:m] = time%(60*60)/60
ans[:s] = time%(60*60)%60

ans.each do |k,v|
	v = v.to_s
	if v.length == 1
		v = "0#{v}"
	end
	ans[k] = v
end

puts "#{ans[:h]}:#{ans[:m]}:#{ans[:s]}"
