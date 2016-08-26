require 'colorize'

class Romeos_g_s

	def initialize (fruit_name="", amount = 0)
		@list_of_fruits = {fruit_name => amount}
	end

	def controller
		self.print_menu

		answer = gets.chomp
		case answer

		when "a"
			puts "What's the name of the fruits you wish to add?"
			fruit = gets.chomp
			puts ''
			puts "How many #{fruit} are you putting into stock?"
			amount = gets.chomp
			amount.to_i #doesnt work
			puts amount.class

			self.add_fruit(fruit,amount)
		when "b"
			puts 'Which fruit pile would you like to buy from?'
			fruit = gets.chomp

			self.buy_fruit(fruit)
		when "c"
			puts 'Which fruit stock would you like to update?'
			fruit = gets.chomp
			puts "How many #{fruit} are you adding?"
			amount = gets.chomp
			amount.to_i #doesnt work


			self.update(fruit,amount)
		when "d"
			self.show_all_fruits
		when "x"
			puts "bye"
		else
		  puts "Invalid input!"
		end
	end


	#Register a fruit
	def add_fruit(new_fruit_name, new_amount = 0)
		@list_of_fruits[new_fruit_name] = new_amount
		puts "#{new_fruit_name} has been added!"
		self.controller
	end

	#Buy a fruit
	def buy_fruit(fruit_bought)
		@list_of_fruits.each do |key, value|
  			if key == fruit_bought
  				new_value = value - 1
  				temp_hash = {"#{fruit_bought}" => new_value}
  				@list_of_fruits.merge!(temp_hash)
  				puts ''
  				puts "One fruit from" + key + " has been purchased! "
  				puts 'Now there is #{new_value.to_s} '
  				puts ''
  			end
		end		
		self.controller
	end

	#Update fruit stocks
	def update(fruit_name, addition)
		@list_of_fruits.each do |key, value|
  			if key == fruit_name
  				new_value = value + addition
  				temp_hash = {"#{fruit_name}" => new_value}
  				@list_of_fruits.merge!(temp_hash)
  				puts key + " has been Updated! "+ new_value.to_s
  				puts ''
  			end
		end
		self.controller
	end

	#Check fruit stocks
	def show_all_fruits
		puts ''
		puts 'CURRENTLY IN STOCK: '
		@list_of_fruits.each do |key, value|
			value.to_s #not working
			puts value.class

			if value < 10
				value.red
			else
				value.green
			end

    		puts "#{key} : #{value}"
		end
		self.controller
	end
	
	#Prints menu
	def print_menu
		puts '<-------------------------------->'
		puts ''
		puts "Romeo's GROCERY STORE"
		puts ''
		puts "Choose an operation"
		puts 'a.) Register a fruit'
		puts 'b.) Buy a fruit'
		puts 'c.) Update a fruit stock'
		puts 'd.) Check fruit stocks'
		puts ''
		puts 'x.) Exit'
		puts ''
		puts 'Select an option (a, b, c or d);'
		puts ''
		puts '<-------------------------------->'
	end
end

# example = Romeos_g_s.new("strawberry", 2)
# example.print_menu
# example.show_all_fruits
# example.add_fruit("apples", 5)
# example.show_all_fruits
# example.buy_fruit("apples")
# example.show_all_fruits
# example.update("strawberrys", 6)
# example.show_all_fruits