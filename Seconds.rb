#Hello World program 

puts "Enter your Name"
name = gets.chomp

puts "Enter your Age"
age = gets
age = age.to_i

daysOld = age * 365

hoursOld = daysOld * 24

secondsOld = hoursOld * 60


puts "Answer: ", name , (secondsOld), "\n";