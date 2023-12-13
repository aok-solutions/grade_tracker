#!/usr/bin/env ruby

newline = "\n"
menu_prompt = "\nwould you like to: \n1) add student \n2) add assignment \n3) list students \n4) exit\n"

puts "welcome to the student grade tracker"
puts menu_prompt

Student = Struct.new(:name, :assignments, :final_grade, keyword_init: true)
student_list = []

def add_student(name, students)
	students << Student.new(name: name, assignments: [], final_grade: "Incomplete")
end

def list_students(students)
	puts "\n"
	students.each do |student|
		puts "\n"
		puts student.name
		puts "Final Grade: #{student.final_grade}"
		puts "\n"
		puts "------------"
	end
end

while (user_input = gets.chomp) != "4"
	case user_input
	when "1"
		puts newline
		puts "enter student name"
		student_input = gets.chomp
		add_student(student_input, student_list)
		list_students(student_list)
	when "2"
		puts newline
		puts "todo: enter assignment"
	when "3"
		list_students(student_list)
	else
		puts newline
		puts "invalid input"
	end

	puts menu_prompt
end
