class Person
	attr_accessor :dob, :first_name, :surname, :fullname
	
	def initialize(first_name , surname, dob)
		@first_name = first_name.capitalize
		@surname = surname.capitalize
		@fullname = first_name.capitalize + " " + surname.capitalize
		@dob = Date.parse(dob).strftime("%Y-%m-%d")

	end
end
