#!/usr/bin/env ruby

D = 10007
n = gets.chomp.to_i
a = Array.new(n)

a[0] = 0
a[1] = 0
a[2] = 1

for i in 3..n
	a[i] = (a[i-1]+a[i-2]+a[i-3])%D
end

puts a[n-1]%D
