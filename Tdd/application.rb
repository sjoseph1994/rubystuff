class Person
	attr_accessor :dob, :first_name, :surname, :fullname, :emails, :phone_numbers
	
	def initialize(first_name , surname, dob)
		@first_name = first_name.capitalize
		@surname = surname.capitalize
		@fullname = first_name.capitalize + " " + surname.capitalize
		@dob = Date.parse(dob).strftime("%Y-%m-%d")

		@emails, @phone_numbers = [], []
	end

	def add_emails (your_email)
		@emails.push (your_email)
	end

	def add_phone (your_phone)
		@phone_numbers.push (your_phone)
	end

	def remove_emails (email)
		@emails.pop (email)
	end

	def to_s
	    puts "#{@fullname}, was born on #{@dob}"
	    puts "Their email addresses are: #{@emails}"
	    puts "Their phone numbers are #{@phone_numbers}"	
  	end
end
