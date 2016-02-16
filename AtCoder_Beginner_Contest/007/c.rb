#!/usr/bin/env ruby

def check(y,x)
	s = [[y-1,x], [y,x+1], [y+1,x], [y,x-1]]
	s.each do |sy,sx|
		if $l[sy][sx]=="."
			$l[sy][sx] = $l[y][x]+1
			$stack.push([sy,sx])
		end
	end
end

r,c = gets.chomp.split.map(&:to_i)
sy,sx = gets.chomp.split.map(&:to_i)
gy,gx = gets.chomp.split.map(&:to_i)

$l = Array.new

r.times do |i|
	row = gets.chomp.split("")
	$l.push(row)
end

$stack = Array.new

$l[sy-1][sx-1] = 0
$stack.push([sy-1,sx-1])
while !($stack.empty?)
	t = $stack.shift
	check(t[0],t[1])
end

puts $l[gy-1][gx-1]
