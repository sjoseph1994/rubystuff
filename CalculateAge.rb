#Hello World program 

def calculateAge ()
	
	puts "What is your name?"
	name = gets.chomp

	puts "What month was you born in??"
	month = gets.chomp

	puts "What year was you born in?"
	year = gets.chomp
	year = year.to_i

	calAge = 2016 - year
	calAge = calAge.to_i


	puts calAge

	if calAge < 16
		puts "Are you even allowed to use the programme mate?"
	end

	puts "you are: ", calAge.to_s, " years old"

	if calAge < 6 || calAge > 70
		puts "Wooow, you can actually use a computer at your age :)"
	end

end

calculateAge()


