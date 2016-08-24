require 'date'
require 'pry'


first_record = {}

puts "Name:"
name = gets.chomp

first_record['name'] = name

puts "DOB:"
dob = gets.chomp

first_record['dob'] = dob

puts "Age:"
age = gets.chomp

first_record['age'] = age


first_record["relatives"] = []

loop do
	puts "Enter the relative name (type 'exit' to quit):"
	binding.pry
	relative = gets.chomp

	break if relative == 'exit'

	first_record["relatives"].push relative
end

print first_record