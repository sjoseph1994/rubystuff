require 'date'
require 'pry'


@first_record = {}

puts "Name:"
name = gets.chomp

@first_record['name'] = name

puts "DOB:"
dob = gets.chomp

@first_record['dob'] = dob

puts "Age:"
age = gets.chomp

@first_record['age'] = age


@first_record["relatives"] = []

def ask_recursively
	puts "Enter the relative name (type 'exit' to quit):"
	#binding.pry
	relative = gets.chomp

	#break if relative == 'exit'
	if relative != 'exit'
		@first_record["relatives"].push relative

		ask_recursively 
	elsif relative == 'exit'
		
	end
end

ask_recursively
		
print @first_record