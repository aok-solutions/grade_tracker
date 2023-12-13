#!/usr/bin/env ruby

newline = "\n"
menu_prompt = "\nwould you like to: \n1) add student \n2) add assignment \n3) list students \n4) exit\n"

puts "welcome to the student grade tracker"
puts menu_prompt

while (user_input = gets.chomp) != "4"
	case user_input
	when "1"
		puts newline
		puts "todo: enter student"
	when "2"
		puts newline
		puts "todo: enter assignment"
	when "3"
		puts newline
		puts "todo: list students"
	else
		puts newline
		puts "invalid input"
	end

	puts menu_prompt
end