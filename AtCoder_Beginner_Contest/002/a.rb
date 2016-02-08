#!/usr/bin/env ruby

money = gets.chomp.split(" ").map{|m| m.to_i}

puts money[0]>money[1] ? money[0]:money[1]
