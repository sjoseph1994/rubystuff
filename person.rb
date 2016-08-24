class Person
	# Setter instance methods

	attr_accessor :hair_color, :top_color, :height

	def dance
		'Dancing'
	end

	def sleep
		'Sleeping'
	end

	def describe
 		puts "The current hair colour is: #{@hair_color}"
 		puts "The current top colour is: #{@top_color}"
 		puts "The current height is: #{@height}"
 		return ""
 	end
end