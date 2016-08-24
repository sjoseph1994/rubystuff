#Hello World program 

def seconds (name, age)

	age = age.to_i

	daysOld = age * 365

	hoursOld = daysOld * 24

	secondsOld = hoursOld * 60


	puts "Answer: ", name , (secondsOld), "\n";
end

seconds("Scott", 22)


